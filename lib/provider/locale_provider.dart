import 'package:flutter/material.dart';

import '../l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;

  Locale get getLocale => _locale ??Locale('en');

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }

  // void setLocaleEn(Locale locale) {
  //   if (!L10n.all.contains(locale)) return;

  //   _locale = locale;
  //   notifyListeners();
  // }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
  // Locale get languageCodeEn => L10n.all.elementAt(0) ;
  // Locale get languageCodeAr => L10n.all.elementAt(1) ;

}
