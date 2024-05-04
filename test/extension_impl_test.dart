import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('implement via extension method', () {
    testWidgets('renders child widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello, World!').blurry(),
          ),
        ),
      );

      expect(find.descendant(of: find.byType(BlurryContainer), matching: find.text('Hello, World!')), findsOneWidget);
    });

    group('checking properties', () {
      testWidgets('default properties', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: const SizedBox().blurry(),
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

      testWidgets('custom properties', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: const SizedBox().blurry(
                blur: 10,
                elevation: 2,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.blue,
                shadowColor: Colors.red,
                borderRadius: BorderRadius.circular(10),
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
  });
}
