import 'package:flutter/material.dart';

PreferredSize webBar(Size screenSize) {
  return PreferredSize(
    preferredSize: Size(screenSize.width, 690),
    child: Container(
      color: const Color.fromARGB(150, 241, 218, 66),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Stack(children: <Widget>[
              Text(
                'Clever Articulator',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 19.9,
                    fontFamily: 'Lobster',
                    fontStyle: FontStyle.italic,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3.0
                      ..color = Colors.black),
              ),
              Text(
                'Clever Articulator',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    fontFamily: 'Lobster',
                    fontStyle: FontStyle.italic,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 8.0,
                        color: Color.fromARGB(125, 0, 0, 255),
                      )
                    ],
                    foreground: Paint()
                      ..shader = const LinearGradient(colors: <Color>[
                        Color.fromRGBO(231, 48, 48, 1),
                        Color.fromARGB(255, 236, 147, 4),
                        Color.fromRGBO(249, 225, 4, 1),
                        Color.fromRGBO(31, 138, 225, 1),
                        Color.fromRGBO(18, 51, 217, 1),
                        Color.fromRGBO(215, 0, 253, 1),
                      ]).createShader(
                          const Rect.fromLTRB(10.0, 20.0, 200.0, 10.0))),
              ),
            ]),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
//                        onHover:,
                    onTap: () {},
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: const Text(
                      'Research',
                      style: TextStyle(
                        height: 2.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  InkWell(
//                        onHover:,
                    onTap: () {},
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: const Text(
                      'Company',
                      style: TextStyle(
                        height: 2.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width / 16),
                ],
              ),
            ),
            SizedBox(
              width: screenSize.width / 50,
            ),
          ],
        ),
      ),
    ),
  );
}
