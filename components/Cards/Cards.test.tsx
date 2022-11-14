import React from "react";
import { fireEvent, render, screen } from "@testing-library/react";
import Card from "./Card";
import CardCarrousel from "./CardCarrousel";
import { useRouter } from "next/router";
import { renderHook } from "@testing-library/react";

import mockRouter from "next-router-mock";

//Mock Next.js Routes
jest.mock("next/router", () => require("next-router-mock"));
// This is needed for mocking 'next/link':
jest.mock("next/dist/client/router", () => require("next-router-mock"));

//Data for Tests

const cardsData = [
  {
    id: "id-1",
    title: "Test Title 1",
    name: "test-1-name",
    icon: "computer",
  },
  {
    id: "id-2",
    title: "Test Title 2",
    name: "test-2-name",
    icon: "door",
  },
];

describe("Testing Card", () => {
  beforeEach(() => {
    mockRouter.setCurrentUrl("/initial");
  });

  test("card render", async () => {
    render(
      <Card
        id={cardsData[0].id}
        title={cardsData[0].title}
        name={cardsData[0].name}
        icon={cardsData[0].icon}
      />
    );
    //Check if render title
    expect(screen.getByTestId("card")).toHaveTextContent(cardsData[0].title);

    //Check if render icon text (Material icon value)
    expect(screen.getByTestId("card")).toHaveTextContent(cardsData[0].icon);
  });

  test("Card Carrousel Redirect", async () => {
    const { result } = renderHook(() => {
      return useRouter();
    });
    render(<CardCarrousel cards={cardsData} href="/test/route" />);

    fireEvent.click(screen.getAllByTestId("card")[0]);

    expect(result.current).toMatchObject({
      asPath: `/test/route/${cardsData[0].name}`,
    });
  });
});
