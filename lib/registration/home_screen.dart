import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Ui/auth_first.dart';
import '../Ui/first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: Center(
        child: (user == null) ? const FirstScreen() : const AuthFirst(),
      ),
    );
  }
}
