// import 'package:bottom_bar/bottom_bar.dart';
// import 'package:doctorq/resources/color_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class SecondBottom extends StatefulWidget {
//   const SecondBottom({Key? key}) : super(key: key);
//
//   @override
//   State<SecondBottom> createState() => _SecondBottomState();
// }
//
// class _SecondBottomState extends State<SecondBottom> {
//   int _currentPage = 0;
//   final _pageController = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         physics: NeverScrollableScrollPhysics(),
//         children: [
//           Container(color: Colors.blue),
//           Container(color: Colors.red),
//           Container(color: Colors.greenAccent.shade700),
//           Container(color: Colors.orange),
//         ],
//         onPageChanged: (index) {
//           // Use a better state management solution
//           // setState is used for simplicity
//           setState(() => _currentPage = index);
//         },
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 10.0,left: 2,right: 2).r,
//         child: BottomBar(
//           selectedIndex: _currentPage,
//           onTap: (int index) {
//             _pageController.jumpToPage(index);
//             setState(() => _currentPage = index);
//           },
//           items: <BottomBarItem>[
//             const BottomBarItem(
//               icon: Icon(Icons.home,color: RGBColorManager.blueRGB,),
//               title: Text('Home'),
//               activeColor: RGBColorManager.blueRGB,
//             ),
//             const BottomBarItem(
//               icon: Icon(Icons.favorite),
//               title: Text('Appointment'),
//               activeColor: Colors.red,
//             ),
//             BottomBarItem(
//               icon: Icon(Icons.person),
//               title: Text('History'),
//               activeColor: Colors.greenAccent.shade700,
//             ),
//             BottomBarItem(
//               icon: Icon(Icons.settings),
//               title: Text('Profile'),
//               activeColor: Colors.orange,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
