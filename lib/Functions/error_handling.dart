import 'package:flutter/material.dart';

class ErrorHandling {
  void showErrorDailog(BuildContext context, String title, String message) {
//flutter define function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        //return object of type dialoge
        return AlertDialog(
          title:  Text("$title \n"),
          content:  Text(message ),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
