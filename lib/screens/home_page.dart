import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/default_page_of_choice.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_home_page.dart';
import 'package:dolni_kounice/screens/audio_guide.dart';
import 'package:dolni_kounice/screens/monuments.dart';

class HomePage extends StatefulWidget {
  static String id = '/homePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Ukončení aplikace'),
            content: Text('Opravdu si přejete ukončit aplikaci?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('Ne'),
              ),
              TextButton(
                onPressed: () => exit(0),
                /*Navigator.of(context).pop(true)*/
                child: Text('Ano'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: DefaultPageOfChoice(
        tittleOfAppbar: 'Dolní Kounice',
        listOfWidget: [
          Hero(
            tag: 'splashscreenImage',
            child: ContainerHeaderHomePage(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(
                tag: 'pruvodcePamatkami',
                child: ChoiceContainer(
                    assetImageOfChoice:
                        'assets/images/pamatky/mesto_pamatek_uvod/pamatky-mapa.jpg',
                    textOfChoice: 'Průvodce památkami',
                    onTap: () {
                      Navigator.pushNamed(context, Monuments.id);
                    }),
              ),
              Hero(
                tag: 'turistickeTrasy',
                child: ChoiceContainer(
                    assetImageOfChoice:
                        'assets/images/pamatky/mesto_pamatek_uvod/beautiful-scenery-greenfield-countryside-eifel-region-germany-M.jpg',
                    textOfChoice: 'Turistické trasy',
                    onTap: () {}),
              ),
              ChoiceContainer(
                  assetImageOfChoice:
                      'assets/images/pamatky/mesto_pamatek_uvod/beautiful-scenery-greenfield-countryside-eifel-region-germany-M.jpg',
                  textOfChoice: 'Služby',
                  onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
