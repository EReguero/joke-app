import React from "react";
import styles from "../Spoiler/Spoilers.module.css";
import { render, screen } from "@testing-library/react";

import Joke from "./joke";

describe("Joke Header", () => {
  test("Joke render", async () => {
    render(<Joke id={1} setup={"Setup Text"} punchline={"Punchline Text"} />);

    expect(screen.getByTestId("setup-test")).toHaveTextContent("Setup Text");
    expect(screen.getByTestId("spoiler")).toHaveTextContent("Punchline Text");
  });

  test("Test Initial spoiler active", async () => {
    render(<Joke id={1} setup={"Setup Text"} punchline={"Punchline Text"} />);

    expect(screen.getByTestId("spoiler").firstChild).toHaveClass(styles.show);
  });
});
