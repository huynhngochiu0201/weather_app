import 'package:flutter/material.dart';

class AssetCustom {
  static String getLinkImg(String name) =>
      '$linkAsset${name.replaceAll('', '').toLowerCase()}.png';
}

const linkAsset = 'assets/images/';

class Mykey {
  static const String api_token = '21e34bef9ac77f4bb12cc472e27c0e58';
}

Widget createTemp(num temp, {double size = 100}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        temp.round().toString(),
        style: TextStyle(
            fontSize: size, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Text(
        '0',
        style: TextStyle(
            fontSize: size / 3,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
    ],
  );
}
