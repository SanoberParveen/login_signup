import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minproject/main.dart';

enum DialogActions { yes, cancel }

class AlertDialogs {
  static Future<DialogActions> yescanceldialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(body),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(DialogActions.cancel);
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(MyHomePage);
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ))
            ],
          );
        });
    return (action != null) ? action : DialogActions.cancel;
  }
}
