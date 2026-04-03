import 'package:flutter/material.dart';

const Cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Card with elevation 0'},
  {'elevation': 1.0, 'label': 'Card with elevation 1'},
  {'elevation': 3.0, 'label': 'Card with elevation 3'},
  {'elevation': 5.0, 'label': 'Card with elevation 5'},
];

class CardsScreen extends StatelessWidget {
  static const name = 'cards-screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screen')),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...Cards.map(
            (card) =>
                _CardType1(label: card['label'], elevation: card['elevation']),
          ),
          ...Cards.map(
            (card) =>
                _CardType2(label: card['label'], elevation: card['elevation']),
          ),
          ...Cards.map(
            (card) =>
                _CardType3(label: card['label'], elevation: card['elevation']),
          ),
          ...Cards.map(
            (card) =>
                _CardType4(label: card['label'], elevation: card['elevation']),
          ),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  const _CardType1({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ),

            Align(alignment: Alignment.bottomLeft, child: Text(label)),
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  const _CardType2({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: colorScheme.outline),
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline'),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  const _CardType3({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      color: colorScheme.primary,
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - filled'),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  const _CardType4({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350',
            height: 350,
            fit: BoxFit.cover,
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ),
          ),
        ],
      ),
    );
  }
}
