// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';

const double _kTextAndIconTabHeight = 53.0;
const double _kMarginBottom = 3.0;

class IconTab extends StatefulWidget {
  const IconTab(
      {Key? key, required this.icon, required this.text, required this.color})
      : assert(icon != null || text != null || color != null),
        super(key: key);

  final String text;
  final String icon;
  final Color color;

  @override
  State<StatefulWidget> createState() {
    return IconTabState();
  }
}

class IconTabState extends State<IconTab> {
  Widget _buildLabelText() {
    return Text(
      widget.text,
      softWrap: false,
      style: TextStyle(color: widget.color),
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(
      debugCheckHasMaterial(context),
    );
    double height = _kTextAndIconTabHeight;
    Widget label = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Image(
            image: AssetImage(widget.icon),
          ),
          height: 30.0,
          width: 30.0,
          margin: const EdgeInsets.only(bottom: _kMarginBottom),
        ),
        _buildLabelText()
      ],
    );

    return SizedBox(
      height: height,
      child: Center(
        child: label,
        widthFactor: 1.0,
      ),
    );
  }
}
