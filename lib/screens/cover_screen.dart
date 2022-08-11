import 'package:flutter/material.dart';

class CoverScreen extends StatefulWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  State<CoverScreen> createState() => _CoverScreenState();
}

class _CoverScreenState extends State<CoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Image(
            image: const AssetImage("assets/images/cover_bg.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("EXPLORE\nAND GET\nINSPIRED",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(8.0, 5.0),
                            blurRadius: 30.0,
                            color: Color.fromARGB(60, 0, 0, 0),
                          ),
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 77,
                        fontWeight: FontWeight.normal,
                        height: 1 /*PERCENT not supported*/
                        )),
              ],
            )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/main");
                },
                child: Image(
                  image: const AssetImage("assets/images/button_lets_go.png"),
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
