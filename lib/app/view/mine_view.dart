import 'package:flutter/material.dart';

class MineTab extends StatelessWidget {
  final double _appBarHeight = 150.0;

  const MineTab({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: _appBarHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, -0.4),
                        colors: [
                          Color.fromARGB(255, 0, 215, 198),
                          Color.fromARGB(255, 0, 215, 198)
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 30.0, right: 20.0),
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                              'https://cms-dumall.cdn.bcebos.com/cms_upload_pro/cms_1633138913464.jpg?x-bce-process=image/quality,q_80/format,f_auto/interlace,i_progressive'),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Text(
                                  '多啦A梦',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                ),
                              ),
                              Text(
                                '在职-考虑机会',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _ContactItem(
                      count: '190',
                      title: '沟通过',
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              content: Text(
                                '沟通过',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    _ContactItem(
                      count: '40',
                      title: '已沟通',
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              content: Text(
                                '已沟通',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    _ContactItem(
                      count: '90',
                      title: '待沟通',
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              content: Text(
                                '待沟通',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    _ContactItem(
                      count: '10',
                      title: '待面试',
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              content: Text(
                                '待面试',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }
}

// ignore: unused_element
class _ContactItem extends StatelessWidget {
  const _ContactItem(
      {Key? key,
      required this.count,
      required this.title,
      required this.onPressed})
      : super(key: key);
  final String count;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              count,
              style: const TextStyle(fontSize: 22.0),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
