

import 'package:intl/intl.dart' as intl;
import 'my_awesome_widgets_localizations.dart';

/// The translations for Hungarian (`hu`).
class MyAwesomeWidgetsLocalizationsHu extends MyAwesomeWidgetsLocalizations {
  MyAwesomeWidgetsLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'My Awesome Widgets';

  @override
  String welcome(String name) {
    return 'Üdvözöllek $name';
  }

  @override
  String friendRequests(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: 'Nincs új követési kérésed',
      one: 'Egy új követési kérésed van',
      other: '$count követési kérésed van',
    );
  }

  @override
  String sendMessage(String sex) {
    return intl.Intl.select(
      sex,
      {
        'male': 'Küldj neki egy üzenetet',
        'female': 'Küldj neki egy üzenetet',
        'other': 'Küldj neki egy üzenetet'
      },
      desc: 'Message on the send button'
    );
  }

  @override
  String discountPrice(double price) {
    final intl.NumberFormat priceNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      
    );
    final String priceString = priceNumberFormat.format(price);

    return 'Akciós ár: $priceString';
  }

  @override
  String shippingDate(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMMMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Tervezett szállítási dátum $dateString';
  }
}
