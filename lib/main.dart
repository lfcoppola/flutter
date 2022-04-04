import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

const primaryColor = Colors.deepPurpleAccent;

void main() => runApp(
      MaterialApp(
        home: QuoteList(),
        theme: ThemeData(
          fontFamily: 'Rubik',
        ),
      ),
    );

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'GEORG C. LICHTENBERG',
        text:
            'It is strange that only extraordinary men make the discoveries, which later appear so easy and simple.'),
    Quote(
        author: 'VICTOR SCHEFFER',
        text:
            'Although Nature needs thousands or millions of years to create a new species, man needs only a few dozen years to destroy one.'),
    Quote(
        author: 'ARISTOTLE',
        text:
            'By ‘life,’ we mean a thing that can nourish itself and grow and decay.'),
    Quote(
        author: 'GEORGE WALD',
        text: 'A physicist is an atom’s way of knowing about atoms.'),
    Quote(
        author: 'MAX PLANCK',
        text:
            'An experiment is a question which science poses to Nature, and a measurement is the recording of Nature’s answer.'),
    Quote(author: 'CARL SAGAN', text: 'Valid criticism does you a favor.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Science Quotes',
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
