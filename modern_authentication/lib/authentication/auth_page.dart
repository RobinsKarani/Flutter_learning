import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modern_authentication/screens/home_page.dart';

import 'package:modern_authentication/screens/login_Page.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //is the user logged in?
          if (snapshot.hasData) {
            return const  HomePage();
          }
          //is the user not logged in?
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
