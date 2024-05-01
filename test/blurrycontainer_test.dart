import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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

    expect(find.text('Hello, World!'), findsOneWidget);
  });

  testWidgets('BlurryContainer default properties', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BlurryContainer(
            child: Text('Hello, World!'),
          ),
        ),
      ),
    );

    final container = tester.widget<BlurryContainer>(find.byType(BlurryContainer));

    expect(container.blur, equals(5));
    expect(container.elevation, equals(0));
    expect(container.padding, equals(const EdgeInsets.all(8)));
    expect(container.color, equals(Colors.transparent));
    expect(container.borderRadius, equals(BorderRadius.circular(20)));
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
            borderRadius: BorderRadius.circular(10),
            child: const Text('Hello, World!'),
          ),
        ),
      ),
    );

    final container = tester.widget<BlurryContainer>(find.byType(BlurryContainer));

    expect(container.blur, equals(10));
    expect(container.elevation, equals(2));
    expect(container.padding, equals(const EdgeInsets.symmetric(horizontal: 16, vertical: 8)));
    expect(container.color, equals(Colors.blue));
    expect(container.borderRadius, equals(BorderRadius.circular(10)));
  });

  testWidgets('BlurryContainer.square constructor', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BlurryContainer.square(
            dimension: 100,
            child: Text('Hello, World!'),
          ),
        ),
      ),
    );

    final container = tester.widget<BlurryContainer>(find.byType(BlurryContainer));

    expect(container.height, equals(100));
    expect(container.width, equals(100));
  });

  testWidgets('BlurryContainer.expand constructor', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BlurryContainer.expand(
            child: Text('Hello, World!'),
          ),
        ),
      ),
    );

    final container = tester.widget<BlurryContainer>(find.byType(BlurryContainer));

    expect(container.height, equals(double.infinity));
    expect(container.width, equals(double.infinity));
  });
}
