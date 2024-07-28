import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';


var kColorSheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(255, 96, 59, 181),
);
var kDarkScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(131, 184, 57, 105),
);


void main() {
// WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((fn) {
    runApp(
    MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
            brightness: Brightness.dark,
            colorScheme: kDarkScheme,
            cardTheme: const CardTheme().copyWith(
              color: kDarkScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),

            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kDarkScheme.onSecondaryContainer,
                foregroundColor: kDarkScheme.secondaryContainer,
              ),
            ),

            textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kColorSheme.onBackground,
                    fontSize: 16,
                  ),
                ),
            iconTheme: const IconThemeData().copyWith(
              color: kDarkScheme.onSecondaryContainer
            )
            
            ),

        theme: ThemeData().copyWith(
          colorScheme: kColorSheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorSheme.onPrimaryContainer,
            foregroundColor: kColorSheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorSheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorSheme.secondaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorSheme.onTertiaryContainer,
                  fontSize: 16,
                ),
              ),
        ),
        home: const Expenses()),
  );
 // });
  
}
