import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bossad/app/model/company.dart';

class CompanyInfo extends StatelessWidget {
  final Company company;
  // ignore: use_key_in_widget_constructors
  const CompanyInfo(this.company);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
      child: SizedBox(
        child: Card(
          elevation: 0.0,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 15.0, right: 15.0, bottom: 0.0),
                child: Image.network(
                  company.logo,
                  width: 50.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        child: Text(
                          company.name,
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 15.0),
                        ),
                        margin: const EdgeInsets.only(top: 10.0, bottom: 5.0)),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                      child: Text(
                        company.location,
                        style:
                            const TextStyle(fontSize: 13.0, color: Colors.grey),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                      child: Text(
                        company.type + " | " + company.size + " | " + company.employee,
                        style:
                            const TextStyle(fontSize: 13.0, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
