import 'package:flutter/material.dart';

final textThemeAll = ThemeData.light().textTheme.copyWith(
      headline6: const TextStyle(
        fontFamily: 'OpenSans',
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w300,
        fontSize: 18,
      ),
      headline5: const TextStyle(
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );

final appBarThemeAll = AppBarTheme(
  toolbarTextStyle: ThemeData.light()
      .textTheme
      .copyWith(
        headline6: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      )
      .bodyText2,
  titleTextStyle: ThemeData.light()
      .textTheme
      .copyWith(
        headline6: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      )
      .headline6,
);
