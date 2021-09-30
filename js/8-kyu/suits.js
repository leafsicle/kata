defineSuit= card => {
  const suit = {
    "♣": "clubs",
    "♠": "spades",
    "♦": "diamonds",
    "♥": "hearts"
  }
  return suit[card.charAt(card.length - 1)]
}
