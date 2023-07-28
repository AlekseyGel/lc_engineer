import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/registration/login_screen.dart';
import '../core/app_color.dart';
import '../core/clip.dart';
import '../core/razdely.dart';
import '../registration/account_screen.dart';

class AuthFirst extends StatefulWidget {
  const AuthFirst({super.key});

  @override
  State<AuthFirst> createState() => _AuthFirstState();
}

class _AuthFirstState extends State<AuthFirst> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ОЦ "ИНЖЕНЕР',
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
          const SizedBox(height: 25),
          InkWell(onTap: () {}, child: Razdely(razdel: 'Раздел Документация')),
          Razdely(razdel: 'Раздел Тестирования'),
          Razdely(razdel: 'Раздел Схемы и Таблицы'),
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
