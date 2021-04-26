import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
final Function addTaskCallback;

AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String text;
    return Container(
      color: Color(0xff757575),
      height: MediaQuery.of(context).size.height * 0.3,
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
              onChanged: (newText){
                text = newText;
              },
            ),
            FlatButton(onPressed: (){
             addTaskCallback(text);
                }, color: Colors.lightBlueAccent, child: Text('Add',
            style: TextStyle(
              color: Colors.white
            ),))
          ],
        ),
      ),
    );
  }
}
