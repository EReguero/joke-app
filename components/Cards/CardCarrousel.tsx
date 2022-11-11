import { CardCarrousel } from "../../types/cardTypes";
import styles from "../../styles/Cards.module.css";
import Card from "./Card";
import Link from "next/link";
import React, { ReactNode } from "react";

interface ICardLinkWrapper {
  href?: string;
  name: string;
  children: ReactNode;
}
/**
 * Wrapper for Cards with link
 */

const CardLinkWrapper = (props: ICardLinkWrapper) => {
  if (props.href) {
    return <Link href={`${props.href}/${props.name}`}>{props.children}</Link>;
  } else {
    return <React.Fragment>{props.children}</React.Fragment>;
  }
};

const CardCarrousel = (props: CardCarrousel) => {
  return (
    <div className={styles.cards}>
      {props.cards.map((card, index) => {
        return (
          <CardLinkWrapper key={card.id} href={props.href} name={card.name}>
            <Card key={index} {...card} />
          </CardLinkWrapper>
        );
      })}
    </div>
  );
};

export default CardCarrousel;
