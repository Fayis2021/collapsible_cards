import 'package:flutter/material.dart';

import 'package:collapsible_cards/collapsible_card.dart';

void main() {
  runApp(const MyApp());
}

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
