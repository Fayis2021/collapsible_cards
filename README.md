# Collapsible Card Stacker

A customizable Flutter widget that displays cards in a stacked layout with smooth scrolling and animation.

## Features

- Vertical or horizontal stacked card scroll
- Custom card dimensions
- Initial page animation
- Clean parallax-like effect


## Demo

<!-- ![Demo GIF](https://raw.githubusercontent.com/Fayis2021/collapsible_cards/main/example/doc/demo_cards.gif) -->
<img src="https://raw.githubusercontent.com/Fayis2021/collapsible_cards/main/example/doc/demo_cards.gif" style="width:250px;height:500px;">
```

## 👤 Maintainer

**Muhammed Fayis**

- GitHub: [@Fayis2021](https://github.com/Fayis2021)

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/Fayis2021">
        <img src="https://avatars.githubusercontent.com/u/59821122?v=4" width="80px;" alt="Muhammed Fayis"/>
        <br />
        <sub><b>Muhammed Fayis</b></sub>
      </a>
      <br />
      📦 Author
    </td>
  </tr>
</table>

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


```
