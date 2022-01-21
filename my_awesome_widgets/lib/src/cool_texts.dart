import 'package:flutter/material.dart';
import 'package:my_awesome_widgets/my_awesome_widgets.dart';

class CoolTexts extends StatelessWidget {
  const CoolTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(MyAwesomeWidgetsLocalizations.of(context).appTitle),
        Text(MyAwesomeWidgetsLocalizations.of(context).welcome('John')),
        Text(MyAwesomeWidgetsLocalizations.of(context).friendRequests(0)),
        Text(MyAwesomeWidgetsLocalizations.of(context).friendRequests(1)),
        Text(MyAwesomeWidgetsLocalizations.of(context).friendRequests(2)),
        Text(MyAwesomeWidgetsLocalizations.of(context).sendMessage('male')),
        Text(MyAwesomeWidgetsLocalizations.of(context).sendMessage('female')),
        Text(
          MyAwesomeWidgetsLocalizations.of(context).sendMessage('unspecfied'),
        ),
        Text(
          MyAwesomeWidgetsLocalizations.of(context).discountPrice(20),
        ),
        Text(
          MyAwesomeWidgetsLocalizations.of(context)
              .shippingDate(DateTime.now()),
        ),
      ],
    );
  }
}
