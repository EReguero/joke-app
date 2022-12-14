import { NextPageContext } from "next";
import Head from "next/head";
import Image from "next/image";
import { useRouter } from "next/router";
import CardCarrousel from "../components/Cards/CardCarrousel";
import styles from "../styles/Home.module.css";
import { Card } from "../types/cardTypes";
import { Category } from "../types/types";

/**
 * Props of Home Component
 */
interface HomeProps {
  categories: Category[];
}

export default function Home(props: HomeProps) {
  //Array of cards to show
  const cards: Card[] = props.categories;
  const router = useRouter();

  return (
    <>
      <Head>
        <title>Joke App</title>
        <meta name="description" content="Joke App Test" />
        <link rel="icon" href="/favicon.ico" />
        <link
          rel="stylesheet"
          href="https://fonts.googleapis.com/icon?family=Material+Icons"
        />
      </Head>
      <Image src={`/icon.png`} width={60} height={60} alt="logo" />
      <h1 className={`${styles.title} mb-5`}>Joke App</h1>
      <button
        className="btn-big mt-6 mb-5"
        onClick={() => router.push("/jokes/all")}
      >
        Get random jokes!
      </button>
      {cards.length > 0 && (
        <>
          <h2>Or select jokes of...</h2>
          <CardCarrousel href={"/jokes"} cards={cards} />
        </>
      )}
    </>
  );
}

export async function getServerSideProps(context: NextPageContext) {
  // Fetch data from API
  const resApi = await fetch("http://localhost:3000/api/category");
  const resApiJSON = await resApi.json();

  // Pass data to the page via props
  return { props: { categories: resApiJSON } };
}
