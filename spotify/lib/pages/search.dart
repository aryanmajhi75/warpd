import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: Theme.of(context).elevatedButtonTheme.style,
          icon: const Icon(
            Icons.close_rounded,
            size: 30,
          ),
        ),
      ),
      body: const SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
