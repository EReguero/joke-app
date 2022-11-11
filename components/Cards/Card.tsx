import { useState, useEffect } from "react";
import { Card } from "../../types/cardTypes";
import styles from "../../styles/Cards.module.css";
import { useTheme } from "next-themes";
import { Icon } from "@mui/material";

/**
 * Card Component
 */
const Card = ({ icon, title }: Card) => {
  const [mounted, setMounted] = useState(false);
  const { theme } = useTheme();

  // Solution provided by next-themes library, not optimal.
  useEffect(() => {
    setMounted(true);
  }, []);

  if (!mounted) {
    return null;
  }
  //

  /**
   * @description Generate a color depending of Theme
   * @returns {color: string} Return background color
   */

  const getBackgroundColor = () => {
    //Defaults values
    let backgroundColor = "";

    //Check if card have dark theme color
    if (theme == "light") {
      for (let i = 0; i < 3; i++)
        backgroundColor += (
          "0" +
          Math.floor(((1 + Math.random()) * Math.pow(16, 2)) / 2).toString(16)
        ).slice(-2);
    }

    //Check if card have dark theme color
    if (theme == "dark") {
      for (let i = 0; i < 3; i++)
        backgroundColor += (
          "0" + Math.floor((Math.random() * Math.pow(16, 2)) / 2).toString(16)
        ).slice(-2);
    }

    return backgroundColor;
  };

  return (
    <div
      className={styles.card}
      style={{
        background: `#${getBackgroundColor()}`,
      }}
    >
      {icon && <Icon fontSize="large">{icon}</Icon>}
      <p>{title}</p>
    </div>
  );
};

export default Card;
