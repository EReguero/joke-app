export interface Category {
  id: number;
  name: string;
  title: string;
  icon: string;
  darkColor: string;
  lightColor: string;
}

export interface Joke {
  id: number;
  setup: string;
  punchline: string;
  showJoke?: boolean;
  categoryName?: string;
}
