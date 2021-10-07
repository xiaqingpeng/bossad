import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyHotJob extends StatelessWidget {
  const CompanyHotJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: const Text(
                      '职位介绍',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    margin: const EdgeInsets.only(bottom: 10.0),
                  ),
                ],
              ),
              RichText(
                text: const TextSpan(
                  text: '敬请期待...',
                  style: TextStyle(fontSize: 13.0, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
