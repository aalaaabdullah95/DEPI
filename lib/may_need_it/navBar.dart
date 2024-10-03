// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:test_project_depi/feature/sec_three_student/presentation/view/widgets/bottonNavItem.dart';

//الكود دا شبه ال فوق بس بدل ال ويدجت الجاهزه عملت ويدجيت وال هي هنا اسمها في الفايل ال في الجمب 
//bottonNavItem


// class CustomBottomNavigationBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 60,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xFF79F1A4), Color(0xFF0E9F98)],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(20),
//         ),
//       ),
//       child: const Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           BottomNavItem(
//             icon: FontAwesomeIcons.trophy,
//             label: 'Rank',
//           ),
//           BottomNavItem(
//             icon: FontAwesomeIcons.bookOpen,
//             label: 'Courses',
//           ),
//           CircleAvatar(
//             maxRadius: 31,
//             backgroundColor: Colors.amberAccent,
//             child: CircleAvatar(
//               backgroundColor: Colors.blue,
//               maxRadius: 28,
//               child: BottomNavItem(
//                 icon: FontAwesomeIcons.home,
//                 label: 'Home',
//               ),
//             ),
//           ),
//           BottomNavItem(
//             icon: FontAwesomeIcons.tasks,
//             label: 'Tasks',
//           ),
//           BottomNavItem(
//             icon: FontAwesomeIcons.cog,
//             label: 'Settings',
//           ),
//         ],
//       ),
//     );
//   }
// }