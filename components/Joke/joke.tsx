import { Joke } from "../../types/types";
import Spoiler from "../Spoiler/spoiler";
import styles from "../../styles/Jokes.module.css";

const Joke = ({ punchline, setup, showJoke }: Joke) => {
  //State for control spoiler status
  const activeSpoiler = !showJoke ?? false;

  return (
    <div className={styles.joke}>
      <h2 data-testid={"setup-test"}>{setup}</h2>
      <Spoiler active={!activeSpoiler} data-testid={"punchline-test"}>
        {punchline}
      </Spoiler>
    </div>
  );
};

export default Joke;
