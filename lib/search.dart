import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Book> books = [
    Book('Flutter for Beginners', 'John Doe', 'A comprehensive guide to Flutter.'),
    Book('Advanced Flutter', 'Jane Smith', 'Deep dive into Flutter and Dart.'),
    Book('Mobile UI Design', 'Tom Brown', 'Principles of designing mobile UIs.'),
    Book('Programming Patterns', 'Alice White', 'A book on popular programming patterns.'),
  ];

  List<Book> displayedBooks = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayedBooks = books;
    _searchController.addListener(_filterBooks);
  }

  void _filterBooks() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      displayedBooks = books
          .where((book) => book.title.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search Books',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: displayedBooks.length,
              itemBuilder: (context, index) {
                final book = displayedBooks[index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  onTap: () {
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



class Book {
  final String title;
  final String author;
  final String description;

  Book(this.title, this.author, this.description);
}