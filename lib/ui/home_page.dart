import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alertdialog"),
      ),
      body: HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: showAlertDialog,
          child: const Text("AlertDialog"),
        ),
        OutlinedButton(
          onPressed: showCupertinoDialog,
          child: const Text("CupertinoDialog"),
        )
      ],
    );
  }

  Future showAlertDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Title"),
        content: const Text("This is main body"),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Ok"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Cancel"),
          ),
        ],
      ),
    );
  }

  Future showCupertinoDialog() {
    return showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text("Title"),
        content: const Text("This is main body"),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Ok"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Cancel"),
          ),
        ],
      ),
    );
  }
}
