import 'package:flutter/material.dart';

import 'package:flutter_firebase/core/app_color.dart';
import 'package:flutter_firebase/core/clip.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerEmail = TextEditingController();
    TextEditingController controllerPassword = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.fonosnovnoi,
      appBar: AppBar(
        
        centerTitle: true,
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
          const ClipWidget(),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Для пользования системой воспользуйтесь формой авторизации или зарегистрируйтесь',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: AppColors.appbarosnovnoi),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextField(
              controller: controllerEmail,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.appbarosnovnoi,
                    width: 2.0,
                  ),
                ),
                hintText: 'email@email.ru',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextField(
              obscureText: true,
              controller: controllerPassword,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.appbarosnovnoi,
                    width: 2.0,
                  ),
                ),
                hintText: 'PASSWORD',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Registration'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.appbarosnovnoi),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Sign in',
              style: TextStyle(color: AppColors.appbarosnovnoi),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Данный сервис предоставлен обьединением какихто людей, пока не понятно для кого, но начало хорошее.',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
