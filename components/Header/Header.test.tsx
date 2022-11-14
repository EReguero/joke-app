import React from "react";
import { fireEvent, render, screen } from "@testing-library/react";
import singletonRouter, { useRouter } from "next/router";
import { renderHook } from "@testing-library/react";
import Header from "./Header";
import mockRouter from "next-router-mock";

//Mock Next.js Routes
jest.mock("next/router", () => require("next-router-mock"));
// This is needed for mocking 'next/link':
jest.mock("next/dist/client/router", () => require("next-router-mock"));

describe("Testing Header", () => {
  beforeEach(() => {
    mockRouter.setCurrentUrl("/jokes/test");
  });

  test("home redirect", async () => {
    const { result } = renderHook(() => {
      return useRouter();
    });

    render(<Header theme={"dark"} />);

    fireEvent.click(screen.getByText("Go Home"));
    expect(result.current).toMatchObject({ asPath: "/" });
  });
});
