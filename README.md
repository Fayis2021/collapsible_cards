# Collapsible Card Stacker

A customizable Flutter widget that displays cards in a stacked layout with smooth scrolling and animation.

### ✨ Features

- Vertical or horizontal stacked card scroll
- Custom card dimensions
- Initial page animation
- Clean parallax-like effect

## Demo

<!-- ![Demo GIF](https://raw.githubusercontent.com/Fayis2021/collapsible_cards/main/example/doc/demo_cards.gif) -->
<img src="https://raw.githubusercontent.com/Fayis2021/collapsible_cards/main/example/doc/demo_cards.gif" style="width:400px;height:450px;">
```

### 🚀 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  collapsible_cards: ^0.0.6
```

Then run:

```bash
flutter pub get
```

### 🛠️ Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check [issues page](https://github.com/Fayis2021/collapsible_cards/issues) or submit a pull request.

### 📄 License

This project is licensed under the MIT License.

```
MIT License

Copyright (c) 2025 Muhammed Fayis

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## 👤 Maintainer

**MUHAMMED FAYIS**

- GitHub: [@Fayis2021](https://github.com/Fayis2021/collapsible_cards)

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/Fayis2021/collapsible_cards">
        <img src="https://avatars.githubusercontent.com/u/59821122?v=4" width="80px;" alt="Muhammed Fayis"/>
        <br />
        <sub><b>Muhammed Fayis</b></sub>
      </a>
      <br />
      📦 Author
    </td>
  </tr>
</table>

### 💡 Usage

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
