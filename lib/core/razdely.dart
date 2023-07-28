import 'package:flutter/material.dart';
import 'package:flutter_firebase/core/fonts_app.dart';

import 'app_color.dart';

class Razdely extends StatelessWidget {
  Razdely({super.key, required this.razdel});

  String razdel = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 150,
        width: 300,
        decoration: const BoxDecoration(color: AppColors.appbarosnovnoi),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              razdel,
              textAlign: TextAlign.center,
              style: AppFonts.w600s20,
            ),
          ),
        ),
      ),
    );
  }
}
