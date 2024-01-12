import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twita_kulone/constants/constants.dart';
import 'package:twita_kulone/theme/theme.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetConstants.twitterLogo,
        height: 30,color: Pallete.blueColor,
      ),
      centerTitle: true,
    );
  }
}
