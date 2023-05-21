import 'package:flutter/material.dart';
import 'package:issue_project/common/component/view/default_layout.dart';
import 'package:issue_project/utils/utils.dart';

class DialogErrorScreen extends StatefulWidget {
  const DialogErrorScreen({Key? key}) : super(key: key);

  @override
  State<DialogErrorScreen> createState() => _DialogErrorScreenState();
}

class _DialogErrorScreenState extends State<DialogErrorScreen> {
  @override
  void initState() {
    // error
    // Utils.showOkNoDialog(context: context, title: 'title', message: 'message');

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Utils.showOkNoDialog(
          context: context, title: 'title', message: 'message');
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // error
    // Utils.showOkNoDialog(context: context, title: 'title', message: 'message');
  }

  @override
  Widget build(BuildContext context) {
    // error
    // Utils.showOkNoDialog(context: context, title: 'title', message: 'message');
    return DefaultLayout(
      title: 'DialogErrorScreen',
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'DialogErrorScreen',
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}

