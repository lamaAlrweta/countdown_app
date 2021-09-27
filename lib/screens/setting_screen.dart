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
    //  final l10n = Provider.of<L10n>(context);
    final provider = Provider.of<LocaleProvider>(context);
    //final locale = Localizations.localeOf(context);
    var translation = AppLocalizations.of(context)!;

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
                      provider.setLocaleAr(Locale('en'));
                    });
                  },
                  function2: () {
                    setState(() {
                      provider.setLocaleAr(Locale('ar'));
                    });
                  },
                  buttonName1: translation.arabic,
                  buttonName2: translation.english,
                  height: 60,
                  width: 110,
                ),
                SizedBox(
                  height: 25,
                ),
                SettingsButtons(
                  textonTop: translation.theme,
                  // function1: () {},
                  // function2: () {},
                  buttonName1: translation.light,
                  buttonName2: translation.dark,
                  height: 60,
                  width: 110,
                  font: FontWeight.w600,
                ),
                SizedBox(
                  height: 25,
                ),
                SettingsButtons(
                  textonTop: translation.ourTeam,
                  // function1: () {},
                  // function2: () {},
                  buttonName1: translation.lama,
                  buttonName2: translation.afaf,
                  height: 50,
                  width: 110,
                  font: FontWeight.normal,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
