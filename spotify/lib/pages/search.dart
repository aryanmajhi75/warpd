import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: width * 0.8,
                child: TextField(
                  cursorOpacityAnimates: true,
                  cursorWidth: 10,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: spotifyGreen,
                        width: 4,
                        style: BorderStyle.solid,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 10,
                    ),
                    hintText: 'Type here to search',
                    hintStyle: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
