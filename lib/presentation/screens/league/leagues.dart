import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:FantasyE/presentation/widgets/cards.dart';

class LeaguesScreen extends StatelessWidget {
  const LeaguesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: "Leagues", icon: Icons.menu),
      drawer: DrawerMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: DashboardCard(
              navigateTo: '/create_league',
              buttonText: 'Create New League',
              imagePath: 'assets/cale.png',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: DashboardCard(
              navigateTo: '/manage_leagues',
              buttonText: 'Manage Leagues',
              imagePath: 'assets/cale.png',
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}




         // Column(
           // children: [
             // const SizedBox(
               // height: 50,
             // ),
             // Container(
               // width: 200,
               // height: 150,
               // decoration: BoxDecoration(
                 // color: const Color.fromARGB(255, 189, 189, 189),
                 // borderRadius: BorderRadius.circular(10),
               // ),
               // child: Column(
                 // crossAxisAlignment: CrossAxisAlignment.center,
                 // children: [
                   // SizedBox(
                     // width: 100,
                     // height: 100,
                     // child: Image.asset(
                       // 'assets/cale.png',
                       // fit: BoxFit.contain,
                     // ),
                   // ),
                   // ElevatedButton(
                       // onPressed: () {
                        //  add some action latter
                       // },
                       // style: ButtonStyle(
                           // backgroundColor: MaterialStateProperty.all<Color>(
                         // const Color.fromARGB(255, 10, 112, 27),
                       // )),
                       // child: const Text(
                         // 'My Leagues',
                         // style: TextStyle(color: Colors.white),
                       // ))
                 // ],
               // ),
             // ),
             // const SizedBox(
               // height: 25,
             // ),
             // Divider(
               // height: 1,
               // thickness: 1,
               // endIndent: 20,
               // indent: 20,
             // ),
             // const SizedBox(
               // height: 25,
             // ),
             // Container(
               // width: 200,
               // height: 150,
               // decoration: BoxDecoration(
                 // color: const Color.fromARGB(255, 189, 189, 189),
                 // borderRadius: BorderRadius.circular(10),
               // ),
               // child: Column(
                 // crossAxisAlignment: CrossAxisAlignment.center,
                 // children: [
                   // SizedBox(
                     // width: 110,
                     // height: 110,
                     // child: Image.asset(
                       // 'assets/cale.png',
                       // fit: BoxFit.contain,
                     // ),
                   // ),
                   // ElevatedButton(
                       // onPressed: () {
                        //  add some action latter
                       // },
                       // style: ButtonStyle(
                           // backgroundColor: MaterialStateProperty.all<Color>(
                         // Color.fromARGB(255, 10, 112, 27),
                       // )),
                       // child: const Text(
                         // 'Join New League',
                         // style: TextStyle(color: Colors.white),
                       // ))
                 // ],
               // ),
             // ),
           // ],
         // )),
  //  ),
  //  backgroundColor: const Color.fromARGB(255, 245, 245, 245),