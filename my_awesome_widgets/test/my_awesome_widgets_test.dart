import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_awesome_widgets/my_awesome_widgets.dart';

void main() {
  group('CoolTexts', () {
    testWidgets('displays the texts', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          // Add the delegates defined by our package
          localizationsDelegates:
              MyAwesomeWidgetsLocalizations.localizationsDelegates,
          home: Scaffold(
            // Add our widget that we want to test
            body: CoolTexts(),
          ),
        ),
      );
      // Check it works correctly
      expect(find.text('Welcome John'), findsOneWidget);
    });
  });
}
