import 'package:flutter/material.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> _allItems = [
    "Apple", "Banana", "Cherry", "Date", "Eggplant", "Fig", "Grape", "Honeydew"
  ];

  List<String> _foundItems = [];

  @override
  void initState() {
    _foundItems = _allItems;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<String> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allItems;
    } else {
      results = _allItems
          .where((item) => item.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Search'),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Results List
            Expanded(
              child: _foundItems.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundItems.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundItems[index]),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    title: Text(_foundItems[index]),
                  ),
                ),
              )
                  : const Text('No results found', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}