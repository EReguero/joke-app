import { useState } from "react";
import styles from "./Spoilers.module.css";

interface SpoilerProps {
  active: boolean;
  children: React.ReactNode;
}

/**
 * Component for hide other Elements
 */
const Spoiler = ({ active, children }: SpoilerProps) => {
  return (
    <div className={`${styles.spoiler}`} data-testid="spoiler">
      <div className={`${styles.text} ${active ? "" : styles.show}`}>
        {children}
      </div>
    </div>
  );
};

export default Spoiler;
