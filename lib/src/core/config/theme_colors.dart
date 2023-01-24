import 'package:flutter/material.dart';

class ThemeColors {
  const ThemeColors._();

  static const List<Color> linearGradientColors = [
    Color(0xFF46B746),
    Color(0xFF43CC43),
  ];

  static const MaterialColor green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFE9F6E9),
      100: Color(0xFFC8EAC8),
      200: Color(0xFFA3DCA3),
      300: Color(0xFF7ECD7E),
      400: Color(0xFF62C362),
      500: Color(_greenPrimaryValue),
      600: Color(0xFF3FB13F),
      700: Color(0xFF37A837),
      800: Color(0xFF2FA02F),
      900: Color(0xFF209120),
    },
  );
  static const int _greenPrimaryValue = 0xFF46B846;

  static const Color greyPrimary = Color(0xFF333333);
  static const Color greyCaption = Color(0xFF828282);
  static const Color grey4 = Color(0xFFBDBDBD);
  static const Color grey5 = Color(0xFFE0E0E0);
  static const Color grey6 = Color(0xFFF3F3F3);
  static const Color grey7 = Color(0xFFEFEFEF);
  static const Color grey8 = Color(0xFFD9D9D9);
  static const Color backgroundPage = Color(0xFFF5F5F5);
  static const Color backgroundField = Color(0xFFF1F4FB);
  static const Color backgroundFieldDark = Color(0xFF97B0EC);
  static const Color red = Color(0xFFEB5757);
  static const Color blackPrimary = Color(0xFF333333);
  static const Color black70 = Color(0xB3000000);
  static const Color orange = Color(0xFFEE8008);
  static const Color pink = Color(0xFFE13875);
  static const Color purple = Color(0xFF723CA2);
  static const Color yellow = Color(0xFFF2C94C);
  static const Color blue = Color(0xFF2D9CDB);
  static const Color blueDark = Color(0xFF416DBF);
}
