import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyInc extends StatelessWidget {
  final String _companyInc;
  // ignore: use_key_in_widget_constructors
  const CompanyInc(this._companyInc);

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
                      '公司介绍',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    margin: const EdgeInsets.only(bottom: 10.0),
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  text: _companyInc,
                  style: const TextStyle(fontSize: 13.0, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
