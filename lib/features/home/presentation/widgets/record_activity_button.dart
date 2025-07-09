import 'package:flutter/material.dart';

class RecordActivityButton extends StatelessWidget {
  const RecordActivityButton({
    super.key,
    required this.activityText,
    required this.onTap,
  });
  final String activityText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 300,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 170, 170, 170),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [Text('Record'), Text(activityText)]),
      ),
    );
  }
}
