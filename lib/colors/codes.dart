import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final Color greencolor = HexColor('00E676');
final Color bluecolor = HexColor('00E5FF');
final Color darkcolor = HexColor('212121');
final Color whitecolor = HexColor('E0E0E0');
final Color lightgreencolor = HexColor('81C784');
final Color lightbluecolor = HexColor('BBDEFB');
bool changemod = true;
Color ChangeBackBolor() {
  if (changemod) {
    return whitecolor;
  } else {
    return darkcolor;
  }
}

Icon ChangeIconLighter() {
  if (changemod) {
    return Icon(
      Icons.sunny,
      size: 30.0,
      color: ChangeColorR(),
    );
  } else {
    return Icon(
      Icons.dark_mode,
      size: 30.0,
      color: ChangeColorR(),
    );
  }
}

Color ChangeColorR2() {
  if (changemod) {
    return lightbluecolor;
  } else {
    return lightgreencolor;
  }
}

void GetTap() {
  changemod = !changemod;
  ChangeBackBolor();
  ChangeIconLighter();
  ChangeColorR();
  ChangeColorR2();
}

Color ChangeColorR() {
  if (changemod) {
    return bluecolor;
  } else {
    return greencolor;
  }
}

double showfinalvalue = 000.00;

final double dollar = 1.0;
final double euro = 1.02;
final double pound = 1.2;
final double cadollar = 0.77;
final double asdollar = 0.69;
final double rial = 0.00024;
final double aed = 0.27;
final double cny = 0.15;

String FromA = 'USD';
String ToB = 'CAD';
double Fromavalue = 1.0;
double tobvalue = 0.77;
final valuecontrol = TextEditingController();
