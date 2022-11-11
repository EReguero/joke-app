import { useState } from "react";
import { NextPage, NextPageContext } from "next";
import Joke from "../../components/Joke/joke";
import { buttonJokeTexts } from "../../texts";
import Head from "next/head";
import { Category, Joke as IJoke } from "../../types/types";
import Link from "next/link";

interface JokesPageProps {
  category: Category;
  initalJokes: IJoke[];
}

const Jokes: NextPage<JokesPageProps> = ({ initalJokes, category }) => {
  const [jokeArray, setJokeArray] = useState(initalJokes);
  const [isJokeDone, setIsJokeDone] = useState(false);
  const [viewedJokes, setViewedJokes] = useState<number[]>(
    jokeArray.map((joke) => joke.id)
  );

  const [buttonDisabled, setButtonDisabled] = useState(false);

  const handleJoke = () => {
    if (isJokeDone) {
      nextJoke();
    } else {
      setIsJokeDone(!isJokeDone);
      setButtonDisabled(true);

      setTimeout(() => {
        setButtonDisabled(false);
      }, 1000);
    }
  };

  const nextJoke = () => {
    const jokesCopy = [...jokeArray];

    jokesCopy.shift();
    setJokeArray(jokesCopy);
    setIsJokeDone(false);
    console.log(viewedJokes, jokesCopy);

    if (jokesCopy.length == 5) {
      fetch(`http://localhost:3000/api/jokes/${category.name ?? ""}`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ viewed: [...viewedJokes] }),
      }).then((res) =>
        res.json().then((data: IJoke[]) => {
          setJokeArray((prevState) => [...prevState, ...data]);
          let newJokesIds = data.map((joke) => joke.id);
          setViewedJokes([...viewedJokes, ...newJokesIds]);
        })
      );
    }
  };

  const actualJoke = jokeArray.length > 0 ? jokeArray[0] : null;

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
            <h2>But fun is not over</h2>
          </Link>
        </>
      )}
    </>
  );
};

export async function getServerSideProps(context: NextPageContext) {
  // Fetch data from external API
  const category = context.query.category_id ?? "";

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
