export const buttonJokeTexts = (category : string) => {
  const text = {
    "general": "Tell me!",
    "dad": "Tell me!",
    "knock-knock": "Open door!",
    "programming": "Stackoverflow it!"

  }
  type ObjectKey = keyof typeof text;
  return text[category as ObjectKey];
}

