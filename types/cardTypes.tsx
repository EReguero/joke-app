export interface Card {
  id: string | number;
  title: string;
  name: string;
  icon?: string;
}

export interface CardCarrousel {
  cards: Card[];
  href?: string;
}
