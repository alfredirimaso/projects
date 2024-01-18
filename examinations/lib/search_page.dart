import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Documents'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder for search functionality
            const TextField(
              decoration: InputDecoration(labelText: 'Enter Document Name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for search logic
                // This is where you can implement the search functionality
                // and display the results
              },
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
