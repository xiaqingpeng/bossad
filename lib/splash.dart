import 'dart:async';
import 'package:bossad/home.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer _t;
  @override
  void initState() {
    super.initState();
    _t = Timer(
      const Duration(milliseconds: 1500),
      () {
        // ignore: unnecessary_null_comparison
        try {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (BuildContext context) => const BossApp()),
              // ignore: unnecessary_null_comparison
              (route) => route == null);
        // ignore: empty_catches
        } catch (e) {

        }
        
      },
    );
  }

  @override
  void dispose() {
    _t.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return Material(
      color: const Color.fromARGB(255, 0, 215, 198),
      child: Padding(
        padding: const EdgeInsets.only(top: 250.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Text(
              'Bossad 互娱',
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
