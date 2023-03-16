import 'package:flutter/material.dart';
import 'package:todoapp/components/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override    //==================Add=a=new=task==============
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow.shade300,
      content: Container(
        height: 400,
        width: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),

            // ========buttons==1=save=&=2=cancel===========
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button=============
                MyButton(text: "Save", onPressed: () {}),
                const SizedBox(width: 20),
                //cancel button===========
                MyButton(text: "Cancel", onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
