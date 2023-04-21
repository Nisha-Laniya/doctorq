import 'package:doctorq/provider/homeProvider/bottom_navigation_provider.dart';
import 'package:doctorq/resources/color_manager.dart';
import 'package:doctorq/screens/Appointment/appointment_screen.dart';
import 'package:doctorq/screens/Home/home_screen.dart';
import 'package:doctorq/screens/history/history_screen.dart';
import 'package:doctorq/screens/profile/profile_screen.dart';
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
          builder: (context,value,child) {
            return _widgetOption[value.selectedIndex];
          },
        ),
      ),
      bottomNavigationBar: Consumer<BottomNavigationProvider>(
        builder: (context,value,child) {
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
                  color: RGBColorManager.blueRGB,
                ),
                title: const Text('Home'),
                backgroundColor: RGBColorManager.blueRGB,
              ),
              BottomBarItem(
                icon: const Icon(
                  Icons.calendar_month,
                  color: RGBColorManager.blueRGB,
                ),
                title: const Text('Appointment'),
                backgroundColor: RGBColorManager.blueRGB,
              ),
              BottomBarItem(
                icon: const Icon(
                  Icons.history,
                  color: RGBColorManager.blueRGB,
                ),
                title: const Text('History'),
                backgroundColor: RGBColorManager.blueRGB,
              ),
              BottomBarItem(
                icon: const Icon(
                  Icons.person,
                  color: RGBColorManager.blueRGB,
                ),
                title: const Text('Profile'),
                backgroundColor: RGBColorManager.blueRGB,
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
