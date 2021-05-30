import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/default_page_of_choice_with_floating_button.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli_1_portal.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli_2_klasterni_kostel.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli_3_vezicka.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli_4_prima_chramova_lod.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli_5_rajska_zahrada.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli_filmy_a_serialy.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli_historie.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli_strecha.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli_uvod.dart';

class AudioGuideRosaCoeli extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli';
  @override
  _AudioGuideRosaCoeliState createState() => _AudioGuideRosaCoeliState();
}

class _AudioGuideRosaCoeliState extends State<AudioGuideRosaCoeli> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoiceWithFloatingButton(
      tittleOfAppbar: 'Audioprůvodce',
      textOfFloatingButton: 'Mapa kláštera',
      assetImageOfModal: 'assets/images/pamatky/klaster_rosa_coeli/mapa_klaster.png',
      onPressedFloatingButton: (){
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          isScrollControlled: false,
          clipBehavior: Clip.antiAlias,
          backgroundColor: kBackgroundColor,
          builder: (context) => Container(
            //height: MediaQuery.of(context).size.height/3*2.5,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.15,
                    child: Container(
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: kDefaultMarginLarger),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        image: AssetImage('assets/images/pamatky/klaster_rosa_coeli/mapa_klaster.png'),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        );
      },
      listOfWidget: [
        Hero(
          tag: 'audioKlasterRosaCoeli',
          child: ContainerHeaderImageBackground(
            assetImage:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
            textHeader: 'Klášter Rosa Coeli',
            text: '',
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
          child: Column(
            children: [
              Text(
                'Děkujeme, že jste zvolili audioprůvodce.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kDefaultColorTextWhite,
                    fontSize: kDefaultFontSizeText),
              ),
              SizedBox(
                height: 20.0,
              ),
              Icon(
                    Icons.headset,
                color: Colors.white,
                size: 50,
              ),
              Text(
                'Prosíme poslouchejte se sluchátky nebo s mobilem na uchu, aby nebyli rušeni ostatní návštěvníci.\n\nPřípadně si můžete přečíst přepis nahrávky, který se nachází pod přehrávačem. Předem děkujeme.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kDefaultColorTextWhite,
                    fontSize: kDefaultFontSizeText),
              ),
              SizedBox(height: kDefaultMargin),
            ],
          ),
        ),
        SizedBox(height: kDefaultMarginLarger),
        Hero(
          tag: 'Úvod',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-brana.jpg',
            textOfChoice: 'Úvod',
            onTap: () {
              Navigator.pushNamed(context, AudioGuideRosaCoeliUvod.id);
            },
          ),
        ),
        Hero(
          tag: 'audioKlasterRosaCoeliPortal',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-portal.jpg',
            textOfChoice: '1 - Portál',
            onTap: () {
              Navigator.pushNamed(context, AudioGuideRosaCoeli1Portal.id);
            },
          ),
        ),
        Hero(
          tag: '2 - Klášterní kostel',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-1.jpg',
            textOfChoice: '2 - Klášterní kostel',
            onTap: () {
              Navigator.pushNamed(
                  context, AudioGuideRosaCoeli2KlasterniKostel.id);
            },
          ),
        ),
        Hero(
          tag: '3 - Věžička',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
            textOfChoice: '3 - Věžička',
            onTap: () {
              Navigator.pushNamed(context, AudioGuideRosaCoeli3Vezicka.id);
            },
          ),
        ),
        Hero(
          tag: '4 - Příčná chrámová loď',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-2.jpg',
            textOfChoice: '4 - Přímá chrámová loď',
            onTap: () {
              Navigator.pushNamed(
                  context, AudioGuideRosaCoeli4PrimaChramovaLod.id);
            },
          ),
        ),
        Hero(
          tag: '5 - Rajská zahrada',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-rajska-zahrad.jpg',
            textOfChoice: '5 - Rajská zahrada',
            onTap: () {
              Navigator.pushNamed(
                  context, AudioGuideRosaCoeli5RajskaZahrada.id);
            },
          ),
        ),
        Hero(
          tag: 'Historie',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-1720.jpg',
            textOfChoice: 'Historie',
            onTap: () {
              Navigator.pushNamed(context, AudioGuideRosaCoeliHistorie.id);
            },
          ),
        ),
        Hero(
          tag: 'FilmyASeriály',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/photographic-film-wooden-background_compressed.jpg',
            textOfChoice: 'Které filmy a seriály se v klášteře natáčely?',
            onTap: () {
              Navigator.pushNamed(
                  context, AudioGuideRosaCoeliFilmyASerialy.id);
            },
          ),
        ),
        Hero(
          tag: 'Střecha',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-letecky.jpg',
            textOfChoice: 'Proč klášter nemá střechu?',
            onTap: () {
              Navigator.pushNamed(context, AudioGuideRosaCoeliStrecha.id);
            },
          ),
        ),
      ],
    );
  }
}
