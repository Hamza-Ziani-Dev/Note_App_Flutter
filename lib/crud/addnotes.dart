// ignore_for_file: avoid_unnecessary_containers, dead_code, prefer_const_constructors

import 'package:flutter/material.dart';


class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Text("Add Notes"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          Form(
              child: Column(
            children: [
              TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Title Note",
                  prefixIcon: const Icon(Icons.note),
                ),
              ),
              TextFormField(
                minLines: 1,
                maxLines: 3,
                maxLength: 100,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Note",
                  prefixIcon: const Icon(Icons.note),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showButtomSheet();
                },
                child: const Text(
                  "Add Image For Note",
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Save Note",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange)),
              ),
            ],
          ))
        ]),
      ),
    );
  }

  // function
  showButtomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              padding: const EdgeInsets.all(20),
              height: 170,
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(
                children: [
                  const Text(
                    "Choose Your Image",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.photo_album_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "From Gallary",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.camera),
                          SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "From Camera",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
