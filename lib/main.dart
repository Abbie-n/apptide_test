import 'package:apptide_test/screens/_screens.dart';
import 'package:apptide_test/utils/utils.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends MaterialApp {
  App()
      : super(
          initialRoute: '/',
          routes: {
            '/': (context) => WelcomeScreen(),
            'login': (context) => LoginScreen(),
            'explore': (context) => ExploreScreen(),
            'upload': (context) => UploadScreen()
          },
          debugShowCheckedModeBanner: false,
          theme: themeData,
        );
}
