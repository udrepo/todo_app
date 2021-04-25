import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      height: MediaQuery.of(context).size.height * 0.75,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task', style: TextStyle(
              fontSize: 25,
              color: Colors.lightBlueAccent
            ),
            textAlign: TextAlign.center,),
            TextField(
              autofocus: true,
            ),
            FlatButton(onPressed: (){}, color: Colors.lightBlueAccent, child: Text('Add',
            style: TextStyle(
              color: Colors.white
            ),))
          ],
        ),
      ),
    );
  }
}
