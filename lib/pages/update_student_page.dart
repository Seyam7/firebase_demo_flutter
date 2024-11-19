import 'package:flutter/material.dart';

class UpdateStudentPage extends StatefulWidget {
  const UpdateStudentPage({super.key});

  @override
  State<UpdateStudentPage> createState() => _UpdateStudentPageState();
}

class _UpdateStudentPageState extends State<UpdateStudentPage> {
  final _formkey=GlobalKey<FormState>();

  updateUser(){
    print('User updated');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update User'),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  autofocus: false,
                  initialValue: 'Sonam',
                  onChanged: (value)=>{},
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15),
                  ),
                  validator: (value){
                    if(value==null|| value.isEmpty){
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  autofocus: false,
                  initialValue: 'soanm@gamil.com',
                  onChanged: (value)=>{},
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15),
                  ),
                  validator: (value){
                    if(value==null|| value.isEmpty){
                      return 'Please Enter Email';
                    }
                    else if(!value.contains('@')){
                      return 'Please Enter Valid Email';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true, //password field will not show the characters
                  initialValue: 'sonam',
                  onChanged: (value)=>{},
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15),
                  ),
                  validator: (value){
                    if(value==null|| value.isEmpty){
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        updateUser();
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Update',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                    ElevatedButton(
                      onPressed: (){

                      },
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.teal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
