import 'package:flutter/material.dart';
import 'package:flutter_payments/ui/pages/home_page.dart';
import 'package:flutter_payments/ui/pages/onboarding_page.dart';
import 'package:flutter_payments/ui/pages/sign_in_page.dart';
import 'package:flutter_payments/ui/pages/sign_up_page.dart';
import 'package:flutter_payments/ui/pages/sign_up_set_identity_page.dart';
import 'package:flutter_payments/ui/pages/sign_up_set_profile_page.dart';
import 'package:flutter_payments/ui/pages/sign_up_success_page.dart';
import 'package:flutter_payments/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-set-identity': (context) => const SignUpSetIdentityPage(),
        '/sign-up-success':(context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}