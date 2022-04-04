import 'package:flutter/material.dart';
import 'quote.dart';

const primaryColor = Colors.deepPurpleAccent;

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;

  const QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            quote.author,
            style: const TextStyle(
              fontSize: 14.0,
              color: primaryColor,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          IconButton(
            onPressed: delete,
            icon: const Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
