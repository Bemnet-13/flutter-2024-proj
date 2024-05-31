import 'package:FantasyE/presentation/screens/auth/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

void main() {
  testWidgets('LoginScreen renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    expect(find.byType(Image), findsOneWidget);
    expect(find.text('Login to Fantasy Ethiopia As'), findsOneWidget);
    expect(find.text('PLAYER'), findsOneWidget);
    expect(find.text('GAME ADMIN'), findsOneWidget);
    expect(find.text('NEXT'), findsOneWidget);
  });

  testWidgets('Role selection and navigation work correctly',
      (WidgetTester tester) async {
    final router = GoRouter(routes: [
      GoRoute(
          path: '/login_user',
          builder: (_, __) => const Scaffold(body: Text('Login User'))),
      GoRoute(
          path: '/login_admin',
          builder: (_, __) => const Scaffold(body: Text('Login Admin'))),
    ]);

    await tester.pumpWidget(MaterialApp.router(
      routerConfig: router,
    ));

    expect(find.byType(ChoiceChip).at(0), findsOneWidget);
    expect(find.text('PLAYER'), findsOneWidget);
    expect(find.text('GAME ADMIN'), findsOneWidget);

    await tester.tap(find.text('GAME ADMIN'));
    await tester.pump();

    expect(
        find.byWidgetPredicate((widget) =>
            widget is ChoiceChip &&
            widget.label == const Text('GAME ADMIN') &&
            widget.selected == true),
        findsOneWidget);

    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();

    expect(find.text('Login Admin'), findsOneWidget);

    await tester.pumpWidget(MaterialApp.router(
      routerConfig: router,
    ));

    await tester.tap(find.text('PLAYER'));
    await tester.pump();

    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();

    expect(find.text('Login User'), findsOneWidget);
  });
}
