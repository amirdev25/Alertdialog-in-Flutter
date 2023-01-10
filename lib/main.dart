import 'package:alertdialog_in_flutter/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AlertDialogApp());
}

class AlertDialogApp extends StatelessWidget {
  const AlertDialogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
