import 'package:flutter/material.dart';
import 'package:weather_app/apps/utils/const.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key, required this.nameIcon});

  final String nameIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    /// để chia tỉ lệ màng hình
    return Container(
      child: SizedBox(
        width: size.width / 1.5,

        /// để chia tỉ lệ màng hình
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            AssetCustom.getLinkImg(nameIcon),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
