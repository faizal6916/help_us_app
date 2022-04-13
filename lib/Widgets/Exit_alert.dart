import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitAlert extends StatelessWidget {
  const ExitAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('alert'),
      content: Text('Are you sure want to logout'),
      actions: [
        ElevatedButton(
            onPressed: () => SystemNavigator.pop(), child: Text('Ok')),
        ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel')),
      ],
    );
  }
}
