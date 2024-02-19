import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode => themeMode ==ThemeMode.dark;
  void toggleTheme(bool IsDark){
    themeMode = IsDark ? ThemeMode.dark: ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes{
  static final darkTheme = ThemeData(scaffoldBackgroundColor: Colors.grey.shade900
  ,colorScheme: const ColorScheme.dark());

static final lightTheme = ThemeData(scaffoldBackgroundColor: Colors.white,colorScheme: const ColorScheme.light());
}

class ChangeThemeButtonWidget extends  StatelessWidget  {
  const ChangeThemeButtonWidget({super.key});

@override
  Widget build(BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);
  return Switch.adaptive(
  value: themeProvider.isDarkMode,
  onChanged: (value){
    final provider = Provider.of<ThemeProvider>(context, listen: false);
provider.toggleTheme(value);
  });
}

}