import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_firebase/core/app_color.dart';

class ClipWidget extends StatelessWidget {
  const ClipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        height: 60,
        color: AppColors.appbarosnovnoi,
      ),
    );
  }
}
