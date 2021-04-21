import 'package:flutter/material.dart';

class ContainerHeaderHomePage extends StatelessWidget {
  const ContainerHeaderHomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: 100, right: 100),
      child: Image(
        //height: 100,
        image: AssetImage('assets/images/dk_znak_icon.png'),
      ),
    );
  }
}