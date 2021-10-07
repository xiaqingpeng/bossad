import 'dart:convert';

class Company {
  late final String logo;
  late final String name;
  late final String location;
  late final String type;
  late final String size;
  late final String employee;
  late final String hot;
  late final String count;
  late final String inc;
  Company({
    required this.logo,
    required this.name,
    required this.location,
    required this.type,
    required this.size,
    required this.employee,
    required this.hot,
    required this.count,
    required this.inc,
  });
  static List<Company> fromJson(String json) {
    List<Company> _companys = [];
    JsonDecoder decoder = const JsonDecoder();
    var mapData = decoder.convert(json)['list'];
    mapData.forEach((obj) {
      Company jo = Company(
        logo: obj['logo'],
        name: obj['name'],
        location: obj['location'],
        type: obj['type'],
        size: obj['size'],
        employee: obj['employee'],
        hot: obj['hot'],
        count: obj['count'],
        inc: obj['inc'],
      );
      _companys.add(jo);
    });
    return _companys;
  }
}
