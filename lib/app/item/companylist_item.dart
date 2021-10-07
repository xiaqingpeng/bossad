// ignore_for_file: unnecessary_const

import 'package:bossad/app/model/company.dart';
import 'package:flutter/material.dart';

class CompanyListItem extends StatelessWidget {
  final Company company;
  // ignore: use_key_in_widget_constructors
  const CompanyListItem(this.company);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 3.0, left: 5.0, right: 5.0, bottom: 3.0),
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
                  children: <Widget>[
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Text(
                        company.name,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 12.0),
                      ),
                      margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                      child: Text(
                        company.location,
                        style:
                            const TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                      child: Text(
                        company.type +
                            " | " +
                            company.size +
                            " | " +
                            company.employee +
                            " | ",
                        style:
                            const TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ),
                    const Divider(),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, left: 0.0, right: 5.0, bottom: 15.0),
                          child: Text(
                            "热招" + company.hot + " | " + company.count + "个职位",
                            style: const TextStyle(
                                fontSize: 12.0, color: Colors.grey),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
