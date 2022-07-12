import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:movie_db/view/home_view.dart';
import 'package:movie_db/view/search_view.dart';
import 'package:movie_db/viewmodel/dashboard_viewmodel.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardViewModel>(
      initState: (_) {
        Get.put(DashboardViewModel());
      },
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.currentIndex,
              children: const [
                HomeView(),
                SearchView(),
                Center(child: Text('pages 3')),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeIndex,
            currentIndex: controller.currentIndex,
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
                icon: Icon(LineIcons.user),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
