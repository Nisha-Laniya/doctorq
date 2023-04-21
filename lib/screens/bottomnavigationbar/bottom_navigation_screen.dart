import '../../provider/provider.dart';
import '../../resources/resources.dart';
import '../../screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  static final List<Widget> _widgetOption = [
    const HomeScreen(),
    const AppointmentScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Consumer<BottomNavigationProvider>(
          builder: (context, value, child) {
            return _widgetOption[value.selectedIndex];
          },
        ),
      ),
      bottomNavigationBar: Consumer<BottomNavigationProvider>(
        builder: (context, value, child) {
          return StylishBottomBar(
            option: BubbleBarOptions(
              barStyle: BubbleBarStyle.horizotnal,
              bubbleFillStyle: BubbleFillStyle.fill,
              opacity: 0.3,
            ),
            items: [
              BottomBarItem(
                icon: const Icon(
                  Icons.home,
                  color: RGBColorManager.darkBlueRGB,
                ),
                title: const Text(
                  'Home',
                ),
                backgroundColor: RGBColorManager.darkBlueRGB,
              ),
              BottomBarItem(
                icon: const Icon(
                  Icons.calendar_month,
                  color: RGBColorManager.darkBlueRGB,
                ),
                title: const Text(
                  'Appointment',
                ),
                backgroundColor: RGBColorManager.darkBlueRGB,
              ),
              BottomBarItem(
                icon: const Icon(
                  Icons.history,
                  color: RGBColorManager.darkBlueRGB,
                ),
                title: const Text(
                  'History',
                ),
                backgroundColor: RGBColorManager.darkBlueRGB,
              ),
              BottomBarItem(
                icon: const Icon(
                  Icons.person,
                  color: RGBColorManager.darkBlueRGB,
                ),
                title: const Text(
                  'Profile',
                ),
                backgroundColor: RGBColorManager.darkBlueRGB,
              ),
            ],
            hasNotch: true,
            currentIndex: value.selectedIndex,
            onTap: (index) {
              value.changeIndex(index);
            },
          );
        },
      ),
    );
  }
}
