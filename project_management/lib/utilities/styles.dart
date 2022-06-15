import 'package:flutter/material.dart';

TextStyle textStyleMulish = const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

TextStyle textStyleMulish2 = const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 16,
  fontWeight: FontWeight.w300,
  fontStyle: FontStyle.italic,
);

TextStyle textStyleAllerta = const TextStyle(
  fontFamily: 'Allerta',
  fontSize: 17,
);

TextStyle textStyleAllerta2 = const TextStyle(
  fontFamily: 'Allerta',
  fontSize: 20,
);

TextStyle textStyleAllertaSmall = const TextStyle(
  fontFamily: 'Allerta',
  fontSize: 14,
  color: Colors.black38,
);

TextStyle textStyleAllertaExtraSmall = const TextStyle(
  fontFamily: 'Allerta',
  fontSize: 12,
);

TextStyle textStyleAllerta4 = const TextStyle(
  fontFamily: 'Allerta',
  fontSize: 22,
);

TextStyle textStyleAllerta3 = const TextStyle(
  fontFamily: 'Allerta',
  fontSize: 42,
);

var themeData = ThemeData(
  fontFamily: 'Roboto',
  scaffoldBackgroundColor: const Color(0xffffffff),
  indicatorColor: purple,
);

const purple = Color(0xff8465FF);

const white = Color(0xffffffff);
const grey = Color(0xfff5f5f5);
const black = Color(0xff000000);
const blue = Color(0xff4CB7E5);
const violet = Color(0xff6788FF);
const yellow = Color(0xffFFB72B);

TextStyle buttonText = const TextStyle(
  fontSize: 14,
  color: white,
);

TextStyle headerText = const TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

TextStyle headerText2 = const TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.bold,
);

TextStyle mainStyle = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

TextStyle mainStyleWithMaxWidth = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

TextStyle budgetCount = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color(0xffffffff),
);

TextStyle mainStyle2 = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: black,
);

TextStyle subStyle = const TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

TextStyle subStyle2 = const TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Color(0xffffffff),
);

TextStyle linkStyle = const TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Color(0xff00A4EA),
);

TextStyle dayStyle = const TextStyle(
  fontSize: 22,
  color: Color(0xffe0e0e0),
);

var paddingOnly = const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0);
var paddingCustom = const EdgeInsets.only(top: 15.0, right: 15.0);
var paddingTop = const EdgeInsets.only(top: 10.0);
var paddingSide = const EdgeInsets.only(left: 15.0, right: 15.0);
var paddingAll = const EdgeInsets.all(15.0);
var paddingAllSmall = const EdgeInsets.all(10.0);
var paddingAllBig = const EdgeInsets.only(top: 28.0, left: 18.0, right: 18.0, bottom: 18.0);

List<Color> dayColors = [
  const Color(0xffE14141),
  const Color(0xffFFB72B),
  const Color(0xff6788FF),
  const Color(0xff8465FF),
  const Color(0xFF41E169),
  const Color(0xFFE141B1),
  const Color(0xFF000000),
];

Map<String, dynamic> days = {
  'Monday': 'Mo',
  'Tuesday': 'Di',
  'Wednesday': 'Mi',
  'Thursday': 'Do',
  'Friday': 'Fr',
  'Saturday': 'Sa',
  'Sunday': 'So',
};

String checkLength(String text) {
  if (text.length > 23) {
    return '${text.substring(0, 23)}...';
  }
  return text;
}

List<String> test = [
  'hello',
  'hello',
  'hello',
];

BoxShadow boxShadow = BoxShadow(
  color: Colors.black.withOpacity(0.10),
  spreadRadius: 0,
  blurRadius: 0,
  offset: const Offset(0, 3),
);
