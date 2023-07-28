import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_firebase/core/app_color.dart';
import 'package:flutter_firebase/core/clip.dart';
import 'package:flutter_firebase/registration/login_screen.dart';

import '../core/razdely.dart';
import '../registration/account_screen.dart';
import 'auth_first.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
    
      appBar: AppBar(
        title: const Text(
          'HYOSUNG',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: AppColors.appbarosnovnoi,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              if ((user == null)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccountScreen()),
                );
              }
            },
            icon: Icon(
              Icons.home_filled,
              color: (user == null) ? Colors.white : Colors.yellow,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const ClipWidget(),
          const SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              if ((user == null)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AuthFirst()),
                );
              }
            },
            child: Razdely(razdel: 'Войти в ОЦ "ИНЖЕНЕР'),
          ),
          InkWell(
            onTap: () {},
            child: Razdely(razdel: 'Расшифровка кодов ошибок'),
          ),
          InkWell(
            onTap: () {},
            child: Razdely(razdel: 'Новости в сфере IT-Технологий'),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Данный сервис предоставлен обьединением каких-то людей, пока не понятно для кого, но начало хорошее.',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
