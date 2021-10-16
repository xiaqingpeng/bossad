import 'package:flutter/material.dart';
import 'package:bossad/app/component/icon_tab.dart';
import 'package:bossad/app/view/jobs_view.dart';
import 'package:bossad/app/view/message_view.dart';
import 'package:bossad/app/view/company/company_view.dart';
import 'package:bossad/app/view/mine_view.dart';

class BossApp extends StatefulWidget {
  const BossApp({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

// ignore: constant_identifier_names
const double _KTabTextSize = 11.0;
// ignore: constant_identifier_names
const int INDEX_JOB = 0;
// ignore: constant_identifier_names
const int INDEX_COMPANY = 1;
// ignore: constant_identifier_names
const int INDEX_MESSAGE = 2;
// ignore: constant_identifier_names
const int INDEX_MINE = 3;
Color _kPrimaryColor = const Color.fromARGB(255, 0, 215, 198);

class HomeState extends State<BossApp> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _controller;
  late VoidCallback onChanged;
  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: 4, initialIndex: _currentIndex, vsync: this);
    onChanged = () {
      setState(() {
        print(_controller.index);
        print("++++++++++");
        _currentIndex = _controller.index;
      });
    };
    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return Scaffold(
      body: TabBarView(
        children: const <Widget>[
          JobsTab(),
          CompanyTab(),
          MessageTab(),
          MineTab(),
        ],
        controller: _controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _controller,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: const TextStyle(fontSize: _KTabTextSize),
          tabs: <IconTab>[
            IconTab(
                icon: _currentIndex == INDEX_JOB
                    ? 'assets/images/zhiwei_active.png'
                    : 'assets/images/zhiwei.png',
                text: '职位',
                color:
                    _currentIndex == INDEX_JOB ? _kPrimaryColor : Colors.grey),
            IconTab(
                icon: _currentIndex == INDEX_COMPANY
                    ? 'assets/images/gongsi_active.png'
                    : 'assets/images/gongsi.png',
                text: '公司',
                color: _currentIndex == INDEX_COMPANY
                    ? _kPrimaryColor
                    : Colors.grey),
            IconTab(
                icon: _currentIndex == INDEX_MESSAGE
                    ? 'assets/images/xiaoxi_active.png'
                    : 'assets/images/xiaoxi.png',
                text: '消息',
                color: _currentIndex == INDEX_MESSAGE
                    ? _kPrimaryColor
                    : Colors.grey),
            IconTab(
                icon: _currentIndex == INDEX_MINE
                    ? 'assets/images/wode_active.png'
                    : 'assets/images/wode.png',
                text: '我的',
                color:
                    _currentIndex == INDEX_MINE ? _kPrimaryColor : Colors.grey),
          ],
        ),
      ),
    );
  }
}
