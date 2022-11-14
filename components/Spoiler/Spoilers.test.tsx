import React from "react";
import { fireEvent, render, screen } from "@testing-library/react";
import mockRouter from "next-router-mock";
import Spoiler from "./spoiler";
import styles from "./Spoilers.module.css";

describe("Testing Spoiler", () => {
  beforeEach(() => {
    mockRouter.setCurrentUrl("/initial");
  });

  test("spoiler render and active", async () => {
    render(<Spoiler active={true}>Test Spoiler</Spoiler>);
    const spoiler = screen.getByTestId("spoiler");
    expect(spoiler).toHaveTextContent("Test Spoiler");
    expect(spoiler.firstChild).not.toHaveClass(styles.show);
  });

  test("spoiler disable", async () => {
    render(<Spoiler active={false}>Test Spoiler</Spoiler>);
    expect(screen.getByTestId("spoiler").firstChild).toHaveClass(styles.show);
  });
});
