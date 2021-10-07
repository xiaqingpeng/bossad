import 'package:flutter/material.dart';
import 'package:bossad/app/component/indicator_viewpager.dart';
const double _kAppBarHeight = 256.0;
class CompanySwiper extends StatelessWidget {
  const CompanySwiper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     final List<String> imgs = [
      "https://cms-dumall.cdn.bcebos.com/cms_upload_pro/cms_1633138913464.jpg?x-bce-process=image/quality,q_80/format,f_auto/interlace,i_progressive",
      "https://product-online.cdn.bcebos.com/1629215219911573.png?x-bce-process=image/quality,q_80/format,f_auto/interlace,i_progressive",
      "https://cms-dumall.cdn.bcebos.com/cms_com_upload_pro/dumall_1629199275460.png",
      "https://cms-dumall.cdn.bcebos.com/cms_com_upload_pro/dumall_1629908991486.png",
    ];

    List<Widget> swiperList = [];
   
    for (var item in imgs) {
      swiperList.add(
        Container(
          color: Colors.black.withAlpha(900),
          child: ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
              item,
              fit: BoxFit.cover,
              height: _kAppBarHeight,
            ),
          ),
        ),
      );
    }
   return IndicatorViewPager(swiperList);
  }
}