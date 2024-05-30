import '../widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/colors.dart';


class Choice extends StatelessWidget {
  const Choice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Choose role"),),
        backgroundColor: CustomColors.primary,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You are logged in as", style: TextStyle(fontSize: 30),),
          Text('OR', style: TextStyle(fontSize: 30),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton("Player", CustomColors.divider, '/player_dashboard'),
              CustomButton("Admin", CustomColors.divider, '/admin_dashboard'),
            ],
          ),
        ],
      ),
    );
  }
}
