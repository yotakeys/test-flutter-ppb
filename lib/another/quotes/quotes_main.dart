import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

void main() => runApp(const MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [];
  @override
  void initState() {
    super.initState();
    _loadQuotesFromJsonFile();
  }

  Future<void> _loadQuotesFromJsonFile() async {
    // Load JSON file from assets asynchronously
    String jsonString = await rootBundle.loadString('assets/data/quotes.json');

    // Parse JSON data into List<Quote>
    final jsonData = json.decode(jsonString);
    List<Quote> loadedQuotes = [];

    for (var quote in jsonData['quotes']) {
      loadedQuotes.add(Quote(author: quote['author'], text: quote['quote']));
    }

    setState(() {
      quotes = loadedQuotes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Anime Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
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
