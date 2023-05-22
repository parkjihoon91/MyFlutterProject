import 'package:basic_project/main/view/life_cycle_screen.dart';
import 'package:basic_project/main/view/ui_screen.dart';
import 'package:flutter/material.dart';

import '../../common/component/view/default_layout.dart';

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
                MaterialPageRoute(builder: (_) => const LifeCycleScreen())
              );
            },
            child: const Text(
              'LifeCycle',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const UiScreen())
              );
            },
            child: const Text(
              'UI - 국민카드앱',
            ),
          ),
        ],
      ),
    );
  }
}
