import { useState } from "react";
import { NextPage, NextPageContext } from "next";
import Joke from "../../components/Joke/joke";
import { buttonJokeTexts } from "../../texts";
import Head from "next/head";
import { Category, Joke as IJoke } from "../../types/types";
import Link from "next/link";

/**
 * Props of Jokes Page Component
 */
interface JokesPageProps {
  category: Category;
  initalJokes: IJoke[];
}

const Jokes: NextPage<JokesPageProps> = ({ initalJokes, category }) => {
  //Array of jokes to show
  const [jokeArray, setJokeArray] = useState(initalJokes);

  //Joke is done or not for show with spoiler
  const [isJokeDone, setIsJokeDone] = useState(false);

  //Array of jokes fetched for dont repeat jokes, initialized with previously fetched
  const [fetchedJokes, setFetchedJokes] = useState<number[]>(
    jokeArray.map((joke) => joke.id)
  );

  //We disable button while joke show
  const [buttonDisabled, setButtonDisabled] = useState(false);

  /**
   * @description Handle Joke Button
   */
  const handleJoke = () => {
    //If joke is done we show next Joke
    if (isJokeDone) {
      nextJoke();
    } else {
      //Do Joke and disable button while animation
      setIsJokeDone(!isJokeDone);
      setButtonDisabled(true);

      //After one second button is enable
      setTimeout(() => {
        setButtonDisabled(false);
      }, 1000);
    }
  };

  /**
   * @description Get next joke
   */
  const nextJoke = () => {
    const jokesCopy = [...jokeArray];

    // Remove first joke, actual joke
    jokesCopy.shift();

    //Update state values and restar joke done status
    setJokeArray(jokesCopy);
    setIsJokeDone(false);

    //If we have only 5 jokes we ask for more jokes, so the user will not have to wait
    if (jokesCopy.length == 5) {
      fetch(`http://localhost:3000/api/jokes/${category.name ?? ""}`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ viewed: [...fetchedJokes] }),
      }).then((res) =>
        res.json().then((data: IJoke[]) => {
          //Add jokes to jokes array
          setJokeArray((prevState) => [...prevState, ...data]);

          //Add ids of jokes to fetched jokes array
          let newJokesIds = data.map((joke) => joke.id);
          setFetchedJokes([...fetchedJokes, ...newJokesIds]);
        })
      );
    }
  };

  //Get actual joke on screen
  const actualJoke = jokeArray.length > 0 ? jokeArray[0] : null;

  //Get dinamyc text for joke button
  const buttonJokeTest =
    actualJoke && actualJoke.categoryName
      ? buttonJokeTexts(actualJoke.categoryName)
      : "general";

  return (
    <>
      <Head>
        <title>
          {`${category.title ? category.title + " jokes - " : ""}Joke App`}
        </title>
        <meta name="description" content="Joke App Test" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      {actualJoke && (
        <>
          <Joke
            id={1}
            showJoke={!isJokeDone}
            punchline={actualJoke.punchline}
            setup={actualJoke.setup}
          />
          <button
            className="btn mt-6"
            onClick={handleJoke}
            disabled={buttonDisabled}
          >
            {`${isJokeDone ? "More Jokes plis" : buttonJokeTest}`}
          </button>
        </>
      )}

      {!actualJoke && (
        <>
          <h1>No more jokes...</h1>
          <Link className="underline" href={"/"}>
            <h2>But fun is not over!</h2>
          </Link>
        </>
      )}
    </>
  );
};

export async function getServerSideProps(context: NextPageContext) {
  const category = context.query.category_id ?? "";

  // Fetch joke data from API, if its all categories we dont send the category value
  const resApiJoke = await fetch(
    `http://localhost:3000/api/jokes/${category === "all" ? "" : category}`,
    {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ viewed: null }),
    }
  );

  const resApiJSONJokes = await resApiJoke.json();

  // Fetch category data from API, if its all categories fetch response is empty
  const resApiCategory = await fetch(
    `http://localhost:3000/api/category/${category}`
  );
  const resApiJSONCategory = await resApiCategory.json();

  // Pass data to the page via props
  return {
    props: { initalJokes: resApiJSONJokes, category: resApiJSONCategory },
  };
}

export default Jokes;
