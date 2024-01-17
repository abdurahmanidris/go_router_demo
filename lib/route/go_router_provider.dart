import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/pages/chat_page.dart';
import 'package:go_router_demo/pages/home_page.dart';
import 'package:go_router_demo/pages/settings_page.dart';
import 'package:go_router_demo/pages/terms_of_service.dart';
import 'package:go_router_demo/screens/dashboard_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) =>
          DashboardScreen(title: 'Dashboard Screen', child: child),
      routes: [
        GoRoute(
          path: '/',
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/chat',
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const ChatPage(),
        ),
        GoRoute(
          path: '/settings',
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const SettingsPage(),
          routes: [
            GoRoute(
              path: 'terms-of-services',
              parentNavigatorKey: _rootNavigatorKey,
              builder: (context, state) => const TermsOfServicesPage(),
            ),
          ],
        ),
      ],
    )
  ],
);
