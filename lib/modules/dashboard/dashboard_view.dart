import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:movie_db/modules/home/home_view.dart';
import 'package:movie_db/modules/search/search_view.dart';
import 'package:movie_db/modules/dashboard/dashboard_controller.dart';
import 'package:movie_db/modules/yourmovie/yourmovie_view.dart';

class DashboardView extends GetWidget<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => IndexedStack(
              index: controller.currentIndex.value,
              children: const [
                HomeView(),
                SearchView(),
                YourMoviesView(),
              ],
            )),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            onTap: controller.changeIndex,
            currentIndex: controller.currentIndex.value,
            selectedIconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.secondary,
            ),
            unselectedIconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            showSelectedLabels: false,
            showUnselectedLabels: false,
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
                icon: Icon(LineIcons.television),
                label: 'Your Movies',
              ),
            ],
          )),
    );
  }
}
