import 'package:flutter/material.dart';
import 'package:bossad/app/item/messagelist_item.dart';
import 'package:bossad/app/model/message.dart';

class MessageTab extends StatefulWidget {
  const MessageTab({Key? key}) : super(key: key);

  @override
  _MessageTabState createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  // ignore: unused_field
  List<Message> _messages = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      getMessageList();
    });
  }

  void getMessageList() {
    _messages = Message.fromJson(""" 
      {
        "list":[
          {
            "avatar":"https://cms-dumall.cdn.bcebos.com/cms_upload_pro/cms_1633138913464.jpg?x-bce-process=image/quality,q_80/format,f_auto/interlace,i_progressive",
            "name":"小可爱",
            "company":"蚂蚁金服",
            "position":"百度",
            "msg":"你好"
          },
          {
            "avatar":"https://cms-dumall.cdn.bcebos.com/cms_upload_pro/cms_1633138913464.jpg?x-bce-process=image/quality,q_80/format,f_auto/interlace,i_progressive",
            "name":"小甜甜",
            "company":"大疆无人机",
            "position":"HRBP",
            "msg":"去哪拍"
          }
          
        ]
      } 
    """);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'android',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: buildMessageItem,
        itemCount: _messages.length,
      ),
    );
  }

  Widget buildMessageItem(BuildContext context, int index) {
    Message message = _messages[index];
    var messageItem = InkWell(
      child: MessageListItem(message),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              content: Text(
                '敬请期待',
                style: TextStyle(fontSize: 20.0),
              ),
            );
          },
        );
      },
    );
    return messageItem;
  }
}
