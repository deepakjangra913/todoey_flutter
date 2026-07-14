import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function(String) callback;

  AddTaskScreen({required this.callback});

  @override
  Widget build(BuildContext context) {

    String enteredText = '';
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w500,
              ),
            ),

            TextField(
              maxLines: 1,
              textAlign: TextAlign.center,
              autofocus: true,
              cursorColor: Colors.lightBlueAccent,
              onChanged: (value) {
                enteredText = value;
              },
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  callback(enteredText);
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(0.0),
                  ),
                  backgroundColor: Colors.lightBlueAccent,
                ),
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 200.0),
          ],
        ),
      ),
    );
  }
}
