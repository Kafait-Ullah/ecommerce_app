import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String id = "/cart";

  @override
  _ClickableCardsPageState createState() => _ClickableCardsPageState();
}

class _ClickableCardsPageState extends State<CartScreen> {
  final List<String> _cardTitles = [
    'Card 1',
    'Card 2',
    'Card 3',
    'Card 4',
    'Card 5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clickable Cards'),
      ),
      body: ListView.builder(
        itemCount: _cardTitles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Handle card tap event here
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _cardTitles[index],
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
