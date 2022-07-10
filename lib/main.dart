import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:line_icons/line_icons.dart';
import 'package:movie_db/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: FlexThemeData.light(
        scheme: FlexScheme.shark,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 20,
        appBarOpacity: 0.95,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          blendOnColors: false,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.shark,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        appBarStyle: FlexAppBarStyle.background,
        appBarOpacity: 0.90,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 30,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const HomeView(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(LineIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(LineIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(LineIcons.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
