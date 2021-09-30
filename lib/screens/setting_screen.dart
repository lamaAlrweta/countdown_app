import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../widgets/settings_button_widgets.dart';
import '../provider/locale_provider.dart';
import '../provider/theme_provider.dart';


class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool? thirdButton;
  @override
 

  @override
  Widget build(BuildContext context) {
    bool? turnOnButton;
    bool? turnOnButton2;

    final provider = Provider.of<LocaleProvider>(context, listen: false);
    final themeprovider = Provider.of<ThemeProvider>(context, listen: false);
    var translation = AppLocalizations.of(context)!;

    if (provider.getLocale == Locale('ar')) {
      turnOnButton = true;
    } else
      turnOnButton = false;

    if (themeprovider.getThememode == ThemeMode.light) {
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
                  gradientcontainer: GradientContainer(
                    turnOnButton: turnOnButton,
                    buttonName1: translation.arabic,
                  ),
                  gradientcontainer2: GradientContainer2(
                    turnOnButton: turnOnButton,
                    buttonName: translation.english,
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
                  gradientcontainer: GradientContainer(
                    turnOnButton: turnOnButton2,
                    buttonName1: translation.light,
                  ),
                  gradientcontainer2: GradientContainer2(
                    turnOnButton: turnOnButton2,
                    buttonName: translation.dark,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SettingsButtons(
                  textonTop: translation.ourTeam,
                  // function1: () {},
                  // function2: () {},
                  gradientcontainer: GradientContainer(
                    turnOnButton: false,
                    buttonName1: translation.lama,
                  ),
                  gradientcontainer2: GradientContainer2(
                    turnOnButton: true,
                    buttonName: translation.afaf,
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
          buttonName1 ?? 'name',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}

class GradientContainer2 extends StatelessWidget {
  const GradientContainer2({
    required this.turnOnButton,
    required this.buttonName,
  });

  final bool? turnOnButton;
  final String? buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: turnOnButton == true
              ? [
                  Theme.of(context).backgroundColor,
                  Theme.of(context).backgroundColor,
                ]
              : [
                  Color.fromRGBO(75, 83, 228, 1),
                  Color.fromRGBO(113, 90, 206, 1)
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
          buttonName ?? 'name',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
