import 'package:flutter/material.dart';
import 'package:ifitcare/UI/UserTabs/daily_meals_page.dart';
import 'package:ifitcare/UI/UserTabs/steps_count_page.dart';
import 'package:ifitcare/UI/UserTabs/today_workout_page.dart';
import 'package:ifitcare/UI/UserTabs/user_profile.dart';
import 'package:ifitcare/UI/UserTabs/water_intake_page.dart';
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
          'todayWorkout': (context) => const TodayWorkoutPage(),
          'dailyMeal': (context) => const DailyMealsPage(),
          'stepsCount': (context) => const StepCountPage(),
          'waterIntake': (context) => const WaterIntakePage(),
          'userProfile': (context) => const UserProfilePage(),
        }),
  );
}