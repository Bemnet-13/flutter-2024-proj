import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ManageLeagues(),
    );
  }
}

class ManageLeagues extends StatefulWidget {
  const ManageLeagues({super.key});

  @override
  _ManageLeaguesState createState() => _ManageLeaguesState();
}

class _ManageLeaguesState extends State<ManageLeagues> {
  List<Map<String, dynamic>> leagues = [
    {'name': 'Meta League', 'players': 10},
    {'name': 'Alpha League', 'players': 8},
    {'name': 'Beta League', 'players': 12},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manage Leagues')),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: leagues.length,
          itemBuilder: (context, index) => Column(
            children: [
              Slidable(
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      onPressed: (context) {
                        setState(() {
                          leagues.removeAt(index);
                        });
                      },
                      icon: Icons.delete,
                      backgroundColor: Colors.black,
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () => _showEditLeagueDialog(context, index),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topLeft: Radius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            leagues[index]['name'],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Total players: ${leagues[index]['players']}',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        focusColor: Colors.black,
        onPressed: () => _showAddLeagueDialog(context),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  void _showEditLeagueDialog(BuildContext context, int index) {
    final TextEditingController nameController =
        TextEditingController(text: leagues[index]['name']);
    final TextEditingController playersController =
        TextEditingController(text: leagues[index]['players'].toString());

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit League'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: "League Name"),
              ),
              TextField(
                controller: playersController,
                decoration:
                    const InputDecoration(hintText: "Number of Players"),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Save'),
              onPressed: () {
                setState(() {
                  if (nameController.text.isNotEmpty &&
                      playersController.text.isNotEmpty) {
                    leagues[index]['name'] = nameController.text;
                    leagues[index]['players'] =
                        int.tryParse(playersController.text) ??
                            leagues[index]['players'];
                  }
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showAddLeagueDialog(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController playersController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add New League'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: "League Name"),
              ),
              TextField(
                controller: playersController,
                decoration:
                    const InputDecoration(hintText: "Number of Players"),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                setState(() {
                  if (nameController.text.isNotEmpty &&
                      playersController.text.isNotEmpty) {
                    leagues.add({
                      'name': nameController.text,
                      'players': int.tryParse(playersController.text) ?? 0,
                    });
                  }
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
