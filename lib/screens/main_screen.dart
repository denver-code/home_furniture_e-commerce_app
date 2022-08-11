import 'package:flutter/material.dart';
import 'package:home_furniture__ecommerce_app/internal/color_api.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 26.0,
          right: 26.0,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "FIND YOUR MOST\nFIT FURNITURE",
                  style: TextStyle(fontSize: 50, height: 1.1),
                ),
                Image(
                  image: AssetImage("assets/images/avatar.png"),
                  width: 54,
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              // height: 56,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(80)),
              child: const Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: "What are you looking for?",
                      hintStyle: TextStyle(fontFamily: "Noto Sans"),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 190,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                        padding: const EdgeInsets.all(26.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "CLASSIC BLACK\nNOIR CHAIR",
                                  style: TextStyle(
                                      fontSize: 40,
                                      height: 1.15,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: HexColor.fromHex("#FAC90F"),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 9.0, horizontal: 17),
                                        child: Text(
                                          "80% off",
                                          style: TextStyle(
                                              fontFamily: "Noto Sans",
                                              fontWeight: FontWeight.w700,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    const Text(
                                      "BEST OFFER!!",
                                      style: TextStyle(
                                          fontFamily: "Noto Sans",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Image(
                                image: AssetImage('assets/images/kid.png'),
                                width: 124,
                                fit: BoxFit.cover)
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 83,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 9.0, horizontal: 17),
                          child: Center(
                            child: Text(
                              "AII",
                              style: TextStyle(
                                  color: HexColor.fromHex("#FAC90F"),
                                  fontFamily: "Noto Sans",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 83,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor.fromHex("#F2F2F2"),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 9.0, horizontal: 17),
                          child: Center(
                            child: Text(
                              "Chair",
                              style: TextStyle(
                                  fontFamily: "Noto Sans",
                                  // fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 83,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor.fromHex("#F2F2F2"),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 9.0, horizontal: 17),
                          child: Center(
                            child: Text(
                              "Table",
                              style: TextStyle(
                                  fontFamily: "Noto Sans",
                                  // fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 83,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor.fromHex("#F2F2F2"),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 9.0, horizontal: 17),
                          child: Center(
                            child: Text(
                              "Lamp",
                              style: TextStyle(
                                  fontFamily: "Noto Sans",
                                  // fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/detail");
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Image(
                              image: AssetImage("assets/images/chair1.png"),
                              width: 160,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$ 12,107",
                              style: TextStyle(
                                fontSize: 34,
                              ),
                            ),
                            Text(
                              "Relaxing Chair",
                              style: TextStyle(
                                  fontFamily: "Noto Sans",
                                  // fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Image(
                            image: AssetImage("assets/images/chair2.png"),
                            width: 160,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 15,217",
                            style: TextStyle(
                              fontSize: 34,
                            ),
                          ),
                          Text(
                            "Noir Chair",
                            style: TextStyle(
                                fontFamily: "Noto Sans",
                                // fontWeight: FontWeight.w700,
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Image(
                            image: AssetImage("assets/images/chair1.png"),
                            width: 160,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 12,107",
                            style: TextStyle(
                              fontSize: 34,
                            ),
                          ),
                          Text(
                            "Relaxing Chair",
                            style: TextStyle(
                                fontFamily: "Noto Sans",
                                // fontWeight: FontWeight.w700,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Image(
                            image: AssetImage("assets/images/chair2.png"),
                            width: 160,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 15,217",
                            style: TextStyle(
                              fontSize: 34,
                            ),
                          ),
                          Text(
                            "Noir Chair",
                            style: TextStyle(
                                fontFamily: "Noto Sans",
                                // fontWeight: FontWeight.w700,
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
