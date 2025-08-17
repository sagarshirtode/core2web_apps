// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoUiCreen extends StatefulWidget {
  const TodoUiCreen({super.key});

  @override
  State<TodoUiCreen> createState() => _TodoUiCreenState();
}

class _TodoUiCreenState extends State<TodoUiCreen> {
  List cardColorsList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];
  void showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create TO-DO Task",
                      style: GoogleFonts.quicksand(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    color: const Color.fromRGBO(2, 167, 177, 1.0),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(2, 167, 177, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    color: const Color.fromRGBO(2, 167, 177, 1.0),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(2, 167, 177, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Date",
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    color: const Color.fromRGBO(2, 167, 177, 1.0),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.calendar_month_outlined,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(2, 167, 177, 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Submit"))
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(2, 167, 177, 1.0),
        title: Text(
          'To-do list',
          style: GoogleFonts.quicksand(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: cardColorsList[index % cardColorsList.length],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/todo_icon.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          children: [
                            Text('Flutter'),
                            Text(
                                'Dart , Inheritance,Polimorphism,Future Async,State managment,Getx'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text("16 August 2025"),
                            SizedBox(width: 10),
                            Icon(Icons.edit_outlined),
                            SizedBox(width: 10),
                            Icon(Icons.delete_outline_rounded),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet();
        },
        backgroundColor: Color.fromRGBO(2, 167, 177, 1.0),
        child: Icon(Icons.add),
      ),
    );
  }
}
