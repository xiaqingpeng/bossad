import 'package:bossad/app/model/company.dart';
import 'package:bossad/app/view/company/company_hot_job.dart';
import 'package:bossad/app/view/company/company_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bossad/app/view/company/company_inc.dart';
import 'package:bossad/app/view/company/company_swiper.dart';

const double _kAppBarHeight = 256.0;

class CompanyDetail extends StatefulWidget {
  final Company _company;
  // ignore: use_key_in_widget_constructors
  const CompanyDetail(this._company);

  @override
  _CompanyDetailState createState() => _CompanyDetailState();
}

class _CompanyDetailState extends State<CompanyDetail>
    with TickerProviderStateMixin {
  late List<Tab> _tabs;

  late TabController _controller;

  late Widget _companyTabContent;
  late VoidCallback onChanged;
  late int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabs = [
      const Tab(
        text: '公司概况',
      ),
      const Tab(
        text: '热招职位',
      ),
    ];

    _companyTabContent = CompanyInc(widget._company.inc);
    _controller = TabController(length: _tabs.length, vsync: this);
    onChanged = () {
      setState(() {
        if (_currentIndex == 0) {
          _companyTabContent = CompanyInc(widget._company.inc);
        } else {
          _companyTabContent = const CompanyHotJob();
        }
        _currentIndex = _controller.index;
      });
    };
    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(onChanged);
    _controller.dispose();
    super.dispose();
  }

  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size.fromHeight(_kAppBarHeight),
                  child: const CompanySwiper(),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      CompanyInfo(widget._company),
                      const Divider(),
                      TabBar(
                        tabs: _tabs,
                        indicatorWeight: 3.0,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: const TextStyle(fontSize: 16.0),
                        labelColor: Colors.black,
                        controller: _controller,
                        indicatorColor: Theme.of(context).primaryColor,
                      )
                    ],
                  ),
                ),
                _companyTabContent
              ],
            ),
          ),
          Positioned(
            top: 10.0,
            left: -10.0,
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: const BackButton(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
