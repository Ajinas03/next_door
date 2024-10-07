import 'package:flutter/material.dart';

pushScreen(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

Size size(context) {
  return MediaQuery.of(context).size;
}
