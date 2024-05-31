import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:FantasyE/injection.dart';
import 'package:FantasyE/presentation/screens/auth/login/login.dart';
import 'package:FantasyE/presentation/screens/auth/login/login_form_admin.dart';
import 'package:FantasyE/presentation/screens/auth/login/login_form_player.dart';
import 'package:FantasyE/presentation/screens/dashboard/admin_dashboard.dart';
import 'package:FantasyE/presentation/screens/dashboard/player_dashboard.dart';
import 'package:FantasyE/presentation/screens/welcome_screen.dart';
import 'package:FantasyE/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets("Fantasy Ethiopia integration Test", (WidgetTester tester) async {
    configureInjection(Environment.dev);
    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: router,
      ),
    );

    await tester.pumpAndSettle();
    await tester.pumpWidget(MaterialApp(
        home: (BlocProvider(
      create: (context) =>
          getIt<AuthLogicBloc>()..add(const AuthLogicEvent.loggedOut()),
      child: WelcomeScreen(),
    ))));
    await tester.pumpAndSettle();
    expect(find.text('FANTASY ETHIOPIA'), findsOneWidget);
    expect(find.text('Draft.'), findsOneWidget);
    expect(find.text('Play.'), findsOneWidget);
    expect(find.text('Dominate!'), findsOneWidget);
    expect(find.text('Victory Starts Here!'), findsOneWidget);
    await tester.tap(find.text('SIGNUP'));
    await tester.pumpAndSettle();
    expect(find.text('Signup'), findsOneWidget);
    await tester.tap(find.text('ADMIN'));
    await tester.enterText(find.byKey(const Key('nameField')), 'Test User');
    await tester.enterText(
        find.byKey(const Key('emailField')), 'test@example.com');
    await tester.enterText(find.byKey(const Key('passwordField')), 'password');
    await tester.tap(find.byKey(const Key('signupButton')));
    await tester.pumpAndSettle();
    await tester.pumpWidget(const MaterialApp(home: (LoginScreen())));
    await tester.pumpAndSettle();
    expect(find.text('Login to Fantasy Ethiopia As'), findsOneWidget);
    await tester.tap(find.text('ADMIN'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();
    await tester.pumpWidget(const MaterialApp(home: (LoginAdmin())));
    await tester.pumpAndSettle();
    expect(find.text('Login as an Admin'), findsOneWidget);
    await tester.enterText(
        find.byKey(const Key('emailField')), 'test@example.com');
    await tester.enterText(find.byKey(const Key('passwordField')), 'password');
    await tester.tap(find.byKey(const Key('loginButton')));
    await tester.pumpAndSettle();
    await tester.pumpWidget(MaterialApp(
        home: (BlocProvider(
      create: (context) => getIt<AuthLogicBloc>()
        ..add(const AuthLogicEvent.adminAuthenticated()),
      child: const AdminDashboardScreen(),
    ))));
    await tester.pumpAndSettle();
    expect(find.text('Adminboard'), findsOneWidget);
    expect(find.text('Create New Avatar'), findsOneWidget);
    expect(find.text('Manage Avatars'), findsOneWidget);
    expect(find.text('Manage Leagues'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.logout));
    await tester.pumpAndSettle();
    
    expect(find.text('FANTASY ETHIOPIA'), findsOneWidget);
    await tester.pumpAndSettle();
  });
}
