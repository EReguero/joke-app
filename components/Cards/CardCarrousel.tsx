import { CardCarrousel } from "../../types/cardTypes";
import styles from "./Cards.module.css";
import Card from "./Card";
import { useRouter } from "next/router";
import React, { ReactNode } from "react";

const CardCarrousel = (props: CardCarrousel) => {
  const router = useRouter();

  const _onClick = (name: string) => {
    if (props.href) {
      router.push(`${props.href}/${name}`);
    }
  };

  return (
    <div className={styles.cards}>
      {props.cards.length > 0 &&
        props.cards.map((card, index) => {
          return (
            <Card key={index} {...card} _onClick={() => _onClick(card.name)} />
          );
        })}
    </div>
  );
};

export default CardCarrousel;
