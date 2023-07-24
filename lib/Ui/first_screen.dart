import 'package:flutter/material.dart';

import 'package:flutter_firebase/core/app_color.dart';
import 'package:flutter_firebase/core/clip.dart';
import 'package:flutter_firebase/registration/login_screen.dart';
import 'package:flutter_firebase/registration/registration.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fonosnovnoi,
      appBar: AppBar(
        title: const Text(
          'HYOSUNG',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: AppColors.appbarosnovnoi,
        elevation: 0,
      ),
      body: Column(
        children: [
          ClipWidget(),
          SizedBox(height: 70),
          Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Начать обучение',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.appbarosnovnoi),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Error code',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.appbarosnovnoi),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Данный сервис предоставлен обьединением каких-то людей, пока не понятно для кого, но начало хорошее.',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
