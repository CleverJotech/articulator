import 'package:flutter/material.dart';
import 'web_bar.dart';
import 'dart:convert';
import 'web_body.dart';

class CleverApp extends StatefulWidget {
  const CleverApp({super.key});

  @override
  State<CleverApp> createState() => _CleverAppState();
}

class _CleverAppState extends State<CleverApp> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: webBar(screenSize),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: screenSize.height * .9,
                  width: screenSize.width,
                  child: const WebBody(),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
            Card(
              shape: const CircleBorder(),
              elevation: 5,
              child: Expanded(
                child: TextField(
                  decoration:
                      const InputDecoration(hintText: 'Enter your text here'),
                  onSubmitted: (String value) {
                    Map<String, dynamic> data = {
                      'text': value,
                    };
                    String json = jsonEncode(data);
                    print(json);
                  },
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
