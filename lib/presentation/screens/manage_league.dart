import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ManageLeagues(),
    );
  }
}

class ManageLeagues extends StatelessWidget {
  const ManageLeagues({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: const CustomBar(title: 'Manage leauges'),
        drawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) => const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Meta League',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Total players: 10',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(left: 24.0, top: 15),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start),
                    ),
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ));
  }
}
