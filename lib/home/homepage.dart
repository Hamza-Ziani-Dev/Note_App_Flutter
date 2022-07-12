// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {"note": "This Is Note 1"},
    {"note": "This Is Note 2"},
    {"note": "This Is Note 3"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("addnotes");
        },
      ),
      body: Container(
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: ((context, i) {
              return Dismissible(key: Key("$i"), child:  ListNotes(
                notes: notes[i],
              ),
              );
            })),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;
  const ListNotes({Key? key, this.notes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "images/service-icon-03.png",
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 3,
            child: ListTile(
              title: const Text("Title"),
              subtitle: Text(
                "${notes['note']}",
                style: const TextStyle(fontSize: 20),
              ),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
            ),
          ),
        ],
      ),
    );
  }
}
