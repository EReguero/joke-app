import { Joke } from "../../types/types";
import Spoiler from "../Spoiler/spoiler";
import styles from "../../styles/Jokes.module.css";

const Joke = ({ punchline, setup, showJoke }: Joke) => {
  //State for control spoiler status
  const activeSpoiler = !showJoke ?? false;

  return (
    <div className={styles.joke}>
      <h2>{setup}</h2>
      <Spoiler active={!activeSpoiler}>{punchline}</Spoiler>
    </div>
  );
};

export default Joke;
