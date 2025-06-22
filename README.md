# Collapsible Card Stacker

A customizable Flutter widget that displays cards in a stacked layout with smooth scrolling and animation.

## Features

- Vertical or horizontal stacked card scroll
- Custom card dimensions
- Initial page animation
- Clean parallax-like effect

## Usage

```dart
CollapsableCardStacker(
  cards: [
    YourCustomCard1(),
    YourCustomCard2(),
    ...
  ],
  initialPageIndex: 1,
  spaceBetweenItems: 250,
  scrollDirection: Axis.vertical,
);
