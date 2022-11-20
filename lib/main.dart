import 'package:flutter/material.dart';
import 'package:ifitcare/UI/coach_home.dart';
import 'package:ifitcare/UI/forgot_password_page.dart';
import 'package:ifitcare/UI/user_home.dart';

import 'UI/login_page.dart';
import 'UI/signup_page.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => const MyLogin(),
          'register': (context) => const MyRegister(),
          'userHome': (context) => const UserHome(),
          'coachHome': (context) => const CoachHome(),
          'forgotPassword': (context) => const ForgotPassword(),
        }),
  );
}