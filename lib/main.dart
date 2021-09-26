import 'package:countdown/provider/locale_provider.dart';
import 'package:countdown/provider/theme_provider.dart';
import 'package:flutter/services.dart';
import 'package:countdown/screens/tabbarScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../screens/tabbarScreen.dart';
import '../l10n/l10n.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);

          return MaterialApp(
            // themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            debugShowCheckedModeBanner: false,
            supportedLocales: L10n.all,
            locale: provider.getLocale,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            onGenerateTitle: (context) {
              var translation = AppLocalizations.of(context)!;

              return translation.countdowns;
            },
            // theme: ThemeData(
            //   textTheme: Theme.of(context)
            //       .textTheme
            //       .apply(bodyColor: Colors.white, displayColor: Colors.white),
            //   fontFamily: 'Montserrat-Arabic',
            //   textSelectionColor: Color.fromRGBO(198, 199, 200, 1),
            //   //HintColor
            //   hintColor: Color.fromRGBO(73, 90, 114, 1),
            //   //card color
            //   primaryColor: Color.fromRGBO(113, 90, 206, 1),

            //   scaffoldBackgroundColor: Color.fromRGBO(22, 30, 41, 1),
            //   // scaffoldBackgroundColor: Color.fromRGBO(0, 22, 30, 41),
            //   backgroundColor: Color.fromRGBO(34, 46, 62, 1),
            //   //second color of card
            //   accentColor: Color.fromRGBO(75, 83, 228, 1),
            //   buttonTheme: ButtonTheme.of(context).copyWith(
            //     buttonColor: Color.fromRGBO(34, 46, 62, 1),
            //     textTheme: ButtonTextTheme.primary,
            //   ),
            // ),
            initialRoute: '/',
            routes: {
              '/': (context) {
                return TabBarScreen();
              },
            },
          );
        },
      );
}
