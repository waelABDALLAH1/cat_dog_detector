import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'package:object_detector/home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x004242),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                'Coding cafe',
                style: TextStyle(color: Color(0x7D9E9E), fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'Cats and Dogs Detector App ',
                style: TextStyle(
                  color: Color(0x7D9E9E),
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 50),
              Center(
                  child: _loading
                      ? Container(
                    width: 400,
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/2.1 cat_dog_icon.png'),
                              SizedBox(height: 50)
                            ],
                          ),
                        )
                      : Container())
            ],
          ),
        ));
  }
}
