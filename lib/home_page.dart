import 'package:flutter/material.dart';
import 'web_bar.dart';
import 'web_body.dart';

// class MyCustomWidget extends StatefulWidget {
//   const MyCustomWidget({super.key});

//   @override
//   _MyCustomWidgetState createState() => _MyCustomWidgetState();
// }

// class _MyCustomWidgetState extends State<MyCustomWidget>
//     with TickerProviderStateMixin {
//   bool expanded = true;
//   late AnimationController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1000),
//       reverseDuration: const Duration(milliseconds: 500),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//         icon:
//             AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),
//         onPressed: () {
//           setState(() {
//             expanded ? controller.forward() : controller.reverse();
//             expanded = !expanded;
//           });
//         });
//   }
// }

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
    );
  }
}
