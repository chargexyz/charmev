import 'package:charmev/screens/account.dart';
import 'package:charmev/screens/charging_session.dart';
import 'package:charmev/screens/entry.dart';
import 'package:charmev/screens/provider_detail.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:charmev/screens/onboarding.dart';
import 'package:charmev/screens/home.dart';

var onboardingHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  int page = int.tryParse(params["page"]![0]) ?? 1;
  return OnboardingScreen(page: page);
});

var providerDetailHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const ProviderDetailScreen();
});

var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomeScreen();
});

var chargingSessionHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const CharginSessionScreen();
});

var accountHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const AccountScreen();
});

var entryHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const CEVEntryScreen();
});
