import 'package:firebase_crud_flutter/pages/update_student_page.dart';
import 'package:flutter/material.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({super.key});

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            1: FixedColumnWidth(140),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Action',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                    child: Center(
                      child: Text(
                        'Sam',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                ),
                TableCell(
                  child: Center(
                    child: Text(
                      'sam@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>UpdateStudentPage()));
                            print('Edit button pressed');
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.amber,
                          ),
                      ),
                      IconButton(
                        onPressed: (){
                          print('delete button pressed');
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
