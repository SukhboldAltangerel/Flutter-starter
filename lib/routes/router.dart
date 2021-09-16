import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/chat.dart';
import 'package:flutter_application_2/screens/home.dart';
import 'package:flutter_application_2/screens/login.dart';
import 'package:flutter_application_2/screens/profile.dart';
import 'package:flutter_application_2/screens/signUp.dart';
import 'package:routemaster/routemaster.dart';

final routes = RouteMap(
  routes: {
    '/': (_) => MaterialPage(child: HomeScreen()),
    '/login': (_) => MaterialPage(child: LoginScreen()),
    '/sign-up': (_) => MaterialPage(child: SignUpScreen()),
    '/profile/:id': (route) =>
        MaterialPage(child: ProfileScreen(id: route.pathParameters['id'])),
    '/chat': (_) => MaterialPage(child: ChatScreen()),
  },
);
