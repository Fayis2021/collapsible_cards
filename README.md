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



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Collapsible Cards',
      home: Scaffold(
        appBar: AppBar(title: const Text('')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CollapsibleCard(),
        ),
      ),
    );
  }
}

class CollapsibleCard extends StatelessWidget {
  const CollapsibleCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> cardList = List.generate(5, (index) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.indigo.shade200,
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.center,
        child: Text(
          'Card $index',
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      );
    });

    return CollapsableCardStacker(
      cards: cardList,
      initialPageIndex: 1,
      cardWidth: 320,
      cardHeight: 220,
      spaceBetweenItems: 250,
      scrollDirection: Axis.vertical,
    );
  }
}


