import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:examinations/document_list_page.dart';
import 'package:examinations/scanning_page.dart';
import 'package:examinations/search_page.dart';

void main() async {


  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MaterialApp(
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Document Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Document Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the scanning page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScanningPage()),
                );
              },
              child: const Text('Scan Document'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the document listing page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DocumentListPage()),
                );
              },
              child: const Text('View Documents'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the search page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                );
              },
              child: const Text('Search Documents'),
            ),
          ],
        ),
      ),
    );
  }
}
