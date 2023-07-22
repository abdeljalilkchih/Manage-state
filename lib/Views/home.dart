import 'package:flutter/material.dart';
import 'package:menage_state/Views/settings.dart';
import 'package:menage_state/components/form_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const FormUser(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var route =
              MaterialPageRoute(builder: (context) => const PageSetting());
          Navigator.push(context, route);
        },
        child: const Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}
