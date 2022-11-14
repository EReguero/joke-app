import React, { FC } from "react";
import { fireEvent, render, renderHook, screen } from "@testing-library/react";
import { ThemeProvider, useTheme } from "next-themes";
import ThemeToggler from "./ThemeToogler";
import { formControlUnstyledClasses } from "@mui/base";

describe("Testing Theme Toogle", () => {
  let localStorageMock: { [key: string]: string } = {};

  beforeEach(() => {
    Object.defineProperty(window, "matchMedia", {
      writable: true,
      value: jest.fn().mockImplementation((query) => ({
        matches: false,
        media: query,
        onchange: null,
        addListener: jest.fn(), // Deprecated
        removeListener: jest.fn(), // Deprecated
        addEventListener: jest.fn(),
        removeEventListener: jest.fn(),
        dispatchEvent: jest.fn(),
      })),
    });

    global.Storage.prototype.getItem = jest.fn(
      (key: string) => localStorageMock[key]
    );
    global.Storage.prototype.setItem = jest.fn((key: string, value: string) => {
      localStorageMock[key] = value;
    });

    localStorageMock = {};
  });

  test("theme change", async () => {
    const wrapper: FC<any> = ({ children }) => (
      <ThemeProvider
        enableSystem={false}
        storageKey="theme-dark"
        attribute="class"
      >
        {children}
        <ThemeToggler />
      </ThemeProvider>
    );
    const { result } = renderHook(() => useTheme(), { wrapper });

    expect(result.current.theme).toBe("light");
    fireEvent.click(screen.getByTestId("theme-toogler"));
    expect(result.current.theme).toBe("dark");
  });
});
