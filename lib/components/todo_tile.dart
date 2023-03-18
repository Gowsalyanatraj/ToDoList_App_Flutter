import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  ToDoTile({
    super.key,
    required this.taskCompleted,
    required this.taskName,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 1600, top: 25),
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Row(
          children: [
            //CHECK BOX
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
              
            ),

            //TASK NAME
            Text(taskName,
            style: TextStyle(
              decoration: taskCompleted
              ? TextDecoration.lineThrough
              :TextDecoration.none),),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.teal, borderRadius: BorderRadius.circular(12.0)),
      ),
    );
  }
}
