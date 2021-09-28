import 'package:countdown/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../widgets/settings_button_widgets.dart';
import '../provider/locale_provider.dart';
import '../l10n/l10n.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool? turnOnButton;
  bool? thirdButton;
  @override
  // void initState() {
  //   super.initState();
  //   turnOnButton = false;
  // }

  @override
  Widget build(BuildContext context) {
    bool? turnOnButton;
        bool? turnOnButton2;


    //  final l10n = Provider.of<L10n>(context);
    final provider = Provider.of<LocaleProvider>(context);
    final themeprovider = Provider.of<ThemeProvider>(context, listen: false);
    //final locale = Localizations.localeOf(context);
    var translation = AppLocalizations.of(context)!;
    final contrller = context.watch<LocaleProvider>();

    if (contrller.getLocale == Locale('ar')) {
      turnOnButton = true;
    } else
      turnOnButton = false;


      if (themeprovider.getThememode == ThemeMode.light ) {
      turnOnButton2 = true;
    } else
      turnOnButton2 = false;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                SettingsButtons(
                  textonTop: translation.language,
                  function1: () {
                    setState(() {
                      provider.setLocale(Locale('en'));
                    });
                  },
                  function2: () {
                    setState(() {
                      provider.setLocale(Locale('ar'));
                    });
                  },
                  //  buttonName1: translation.arabic,
                 // buttonName2: translation.english,
                  // height: 60,
                  // width: 110,
                  gradientcontainer: GradientContainer(
                    turnOnButton: turnOnButton,
                    buttonName1: translation.arabic,
                  ),
                  gradientcontainer2: GradientContainer2(
                    turnOnButton: turnOnButton,
                    buttonName1: translation.english,
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                SettingsButtons(
                  textonTop: translation.theme,
                  function1: () {
                    setState(() {
                      themeprovider.toggleTheme(true);
                    });
                  },
                  function2: () {
                    setState(() {
                      themeprovider.toggleTheme(false);
                    });
                  },
                  buttonName1: translation.light,
                  buttonName2: translation.dark,
                   gradientcontainer: GradientContainer(
                    turnOnButton: turnOnButton2,
                    buttonName1: translation.light,
                  ),
                  gradientcontainer2: GradientContainer2(
                    turnOnButton: turnOnButton2,
                    buttonName1: translation.dark,
                  ),
                  // height: 60,
                  // width: 110,
                ),
                SizedBox(
                  height: 25,
                ),
                SettingsButtons(
                  textonTop: translation.ourTeam,
                  // function1: () {},
                  // function2: () {},
                  // buttonName1: translation.lama,
                  // buttonName2: translation.afaf,
                  // height: 50,
                  // width: 110,
                   gradientcontainer: GradientContainer(
                    turnOnButton: false,
                    buttonName1: translation.lama,
                  ),
                  gradientcontainer2: GradientContainer2(
                    turnOnButton: true,
                    buttonName1: translation.afaf,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    required this.turnOnButton,
    required this.buttonName1,
  });

  final bool? turnOnButton;
  final String? buttonName1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: turnOnButton == true
              ? [
                  Color.fromRGBO(75, 83, 228, 1),
                  Color.fromRGBO(113, 90, 206, 1)
                ]
              : [
                  Theme.of(context).backgroundColor,
                  Theme.of(context).backgroundColor,
                ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55.0,
        constraints: BoxConstraints(maxWidth: 183.0, minHeight: 60.0),
        alignment: Alignment.center,
        child: Text(
          buttonName1 ?? 'name1',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}

class GradientContainer2 extends StatelessWidget {
  const GradientContainer2({
    required this.turnOnButton,
    required this.buttonName1,
  });

  final bool? turnOnButton;
  final String? buttonName1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: turnOnButton == false
              ? [
                  Color.fromRGBO(75, 83, 228, 1),
                  Color.fromRGBO(113, 90, 206, 1)
                ]
              : [
                  Theme.of(context).backgroundColor,
                  Theme.of(context).backgroundColor,
                ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55.0,
        constraints: BoxConstraints(maxWidth: 183.0, minHeight: 60.0),
        alignment: Alignment.center,
        child: Text(
          buttonName1 ?? 'name1',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}


