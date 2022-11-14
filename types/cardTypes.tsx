export interface Card {
  id: string | number;
  title: string;
  name: string;
  icon?: string;
  _onClick?: Function;
}

export interface CardCarrousel {
  cards: Card[];
  href?: string;
}
