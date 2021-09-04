import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/constants.dart';
import 'package:profile/screens/home/home_screen.dart';
import 'package:profile/screens/home/read_more_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // textTheme: TextTheme
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: kBodyTextColor),
              bodyText2: TextStyle(color: kBodyTextColor),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        'readMoreScreen': (context) => ReadMoreScreen(),
      },
      // home: SplashScreen(),
    );
  }
}
