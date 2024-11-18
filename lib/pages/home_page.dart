import 'package:firebase_crud_flutter/pages/add_student_page.dart';
import 'package:firebase_crud_flutter/pages/list_student_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Flutter CRUD'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddStudentPage()));
              },
              child: Text('add',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
              //style: Color(value),
            ),
          ],
        ),
      ),
      body: ListStudentPage(),
    );
  }
}