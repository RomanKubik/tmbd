import 'package:flutter/material.dart';

class AppTheme {
  static get theme {
    return ThemeData.dark().copyWith(
        primaryColor: Colors.green[800],
        accentColor: Colors.green[800],
        backgroundColor: Colors.grey[200],

    );
  }
}