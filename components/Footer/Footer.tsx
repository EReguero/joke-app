import { useState } from "react";
import styles from "./Footer.module.css";

interface FooterProps {
  theme: string;
}

const Footer = ({ theme }: FooterProps) => {
  return (
    <footer
      className={`${styles.footer} ${theme == "dark" ? styles.blackTheme : ""}`}
    >
      <small>Emilio Reguero &copy; 2022</small>
    </footer>
  );
};

export default Footer;
