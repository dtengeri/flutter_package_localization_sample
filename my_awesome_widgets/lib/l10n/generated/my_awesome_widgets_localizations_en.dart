

import 'package:intl/intl.dart' as intl;
import 'my_awesome_widgets_localizations.dart';

/// The translations for English (`en`).
class MyAwesomeWidgetsLocalizationsEn extends MyAwesomeWidgetsLocalizations {
  MyAwesomeWidgetsLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'My Awesome Widgets';

  @override
  String welcome(String name) {
    return 'Welcome $name';
  }

  @override
  String friendRequests(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: 'You have no new friend request',
      one: 'You have one reuquest',
      other: 'You have $count requests',
    );
  }

  @override
  String sendMessage(String sex) {
    return intl.Intl.select(
      sex,
      {
        'male': 'Send him a message',
        'female': 'Send her a message',
        'other': 'Send a message'
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

    return 'Discount: $priceString';
  }

  @override
  String shippingDate(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMMMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Estimated shipping at $dateString';
  }
}
