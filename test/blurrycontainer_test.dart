import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BlurryContainer Widget Tests', () {
    testWidgets('BlurryContainer renders child widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: BlurryContainer(
              child: Text('Hello, World!'),
            ),
          ),
        ),
      );

      expect(find.descendant(of: find.byType(BlurryContainer), matching: find.text('Hello, World!')), findsOneWidget);
    });

    group('BlurryContainer properties', () {
      testWidgets('BlurryContainer default properties', (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: BlurryContainer(
                child: SizedBox(),
              ),
            ),
          ),
        );

        final widget = tester.widget<BlurryContainer>(find.byType(BlurryContainer));

        expect(widget.blur, equals(5));
        expect(widget.elevation, equals(0));
        expect(widget.padding, equals(const EdgeInsets.all(8)));
        expect(widget.color, equals(Colors.transparent));
        expect(widget.shadowColor, equals(Colors.black26));
        expect(widget.borderRadius, equals(BorderRadius.circular(20)));
      });

      testWidgets('BlurryContainer custom properties', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: BlurryContainer(
                blur: 10,
                elevation: 2,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.blue,
                shadowColor: Colors.red,
                borderRadius: BorderRadius.circular(10),
                child: const SizedBox(),
              ),
            ),
          ),
        );

        final widget = tester.widget<BlurryContainer>(find.byType(BlurryContainer));

        expect(widget.blur, equals(10));
        expect(widget.elevation, equals(2));
        expect(widget.padding, equals(const EdgeInsets.symmetric(horizontal: 16, vertical: 8)));
        expect(widget.color, equals(Colors.blue));
        expect(widget.shadowColor, equals(Colors.red));
        expect(widget.borderRadius, equals(BorderRadius.circular(10)));
      });
    });

    group('BlurryContainer constructor', () {
      testWidgets('BlurryContainer.square constructor', (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: BlurryContainer.square(
                dimension: 100,
                child: SizedBox(),
              ),
            ),
          ),
        );

        final widget = tester.widget<BlurryContainer>(find.byType(BlurryContainer));

        expect(widget.height, equals(100));
        expect(widget.width, equals(100));
      });

      testWidgets('BlurryContainer.expand) constructor', (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: BlurryContainer.expand(
                child: SizedBox(),
              ),
            ),
          ),
        );

        final widget = tester.widget<BlurryContainer>(find.byType(BlurryContainer));

        expect(widget.height, equals(double.infinity));
        expect(widget.width, equals(double.infinity));
      });
    });
  });
}
