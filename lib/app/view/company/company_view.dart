import 'package:flutter/material.dart';
import 'package:bossad/app/item/companylist_item.dart';
import 'package:bossad/app/model/company.dart';
import 'package:bossad/app/view/company/company_detail.dart';

class CompanyTab extends StatefulWidget {
  const CompanyTab({Key? key}) : super(key: key);

  @override
  _JobsTabState createState() => _JobsTabState();
}

class _JobsTabState extends State<CompanyTab> {
  // ignore: unused_field
  List<Company> _companys = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      getCompanyList();
    });
  }

  void getCompanyList() {
    _companys = Company.fromJson(""" 
      {
        "list":[
          {
            "logo":"https://cms-dumall.cdn.bcebos.com/cms_upload_pro/cms_1633138913464.jpg?x-bce-process=image/quality,q_80/format,f_auto/interlace,i_progressive",
            "name":"杭州蚂蚁金服信息技术有限公司",
            "location":"上海市浦东新区",
            "type":"互联网",
            "size":"B轮",
            "employee":"10000人以上",
            "hot":"资深技术工程师",
            "count":"500",
            "inc":"蚂蚁金服服务集团起步于2004年成立的支付宝"
          },
          {
            "logo":"https://product-online.cdn.bcebos.com/1629215219911573.png?x-bce-process=image/quality,q_80/format,f_auto/interlace,i_progressive",
            "name":"杭州蚂蚁金服信息技术有限公司",
            "location":"上海市浦东新区",
            "type":"互联网",
            "size":"B轮",
            "employee":"10000人以上",
            "hot":"资深技术工程师",
            "count":"500",
            "inc":"蚂蚁金服服务集团起步于2004年成立的支付宝"
          },
          {
            "logo":"https://cms-dumall.cdn.bcebos.com/cms_com_upload_pro/dumall_1629199275460.png",
            "name":"杭州蚂蚁金服信息技术有限公司",
            "location":"上海市浦东新区",
            "type":"互联网",
            "size":"B轮",
            "employee":"10000人以上",
            "hot":"资深技术工程师",
            "count":"500",
            "inc":"蚂蚁金服服务集团起步于2004年成立的支付宝"
          },
        
          {
            "logo":"https://cms-dumall.cdn.bcebos.com/cms_com_upload_pro/dumall_1629908991486.png",
            "name":"杭州蚂蚁金服信息技术有限公司",
            "location":"上海市浦东新区",
            "type":"互联网",
            "size":"B轮",
            "employee":"10000人以上",
            "hot":"资深技术工程师",
            "count":"500",
            "inc":"蚂蚁金服服务集团起步于2004年成立的支付宝"
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
          '公 司',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: buildCompanyItem,
        itemCount: _companys.length,
      ),
    );
  }

  Widget buildCompanyItem(BuildContext context, int index) {
    Company company = _companys[index];
    var companyItem = InkWell(
        child: CompanyListItem(company),
        onTap: () => navCompanyDetail(company, index));
    return companyItem;
  }

  navCompanyDetail(Company company, int index) {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return CompanyDetail(company);
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
          );
        },
      ),
    );
  }
}
