import 'dart:convert';

class Message {
  late final String name;
  late final String avatar;
  late final String company;
  late final String position;
  late final String msg;
  
  Message({
    required this.name,
    required this.avatar,
    required this.company,
    required this.position,
    required this.msg,
  });
  static List<Message> fromJson(String json) {
    List<Message> _jobs = [];
    JsonDecoder decoder = const JsonDecoder();
    var mapData = decoder.convert(json)['list'];
    mapData.forEach((obj) {
      Message jo = Message(
        name: obj['name'],
        avatar: obj['avatar'],
        company: obj['company'],
        position: obj['position'],
        msg: obj['msg'],
      );
      _jobs.add(jo);
    });
    return _jobs;
  }
}
