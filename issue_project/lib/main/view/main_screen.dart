import 'package:flutter/material.dart';
import 'package:issue_project/common/component/view/default_layout.dart';
import 'package:issue_project/main/view/dialog_error_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'MainScreen',
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const DialogErrorScreen())
              );
            },
            child: const Text(
              'DialogLogErrorScreen',
            ),
          ),
        ],
      ),
    );
  }
}
