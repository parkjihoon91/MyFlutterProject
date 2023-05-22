import 'package:basic_project/common/component/view/default_layout.dart';
import 'package:basic_project/common/utils/log.dart';
import 'package:flutter/material.dart';

class LifeCycleScreen extends StatelessWidget {
  const LifeCycleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'LifeCycleScreen',
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => LifeCycleStatelessWidget()),
              );
            },
            child: const Text('StatelessWidget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => LifeCycleStatefulWidget()),
              );
            },
            child: const Text('StatefulWidget'),
          ),
        ],
      ),
    );
  }
}

class LifeCycleStatelessWidget extends StatelessWidget {
  LifeCycleStatelessWidget({Key? key}) : super(key: key) {
    Log().logger.d('LifeCycleStatelessWidget start');
  }

  @override
  Widget build(BuildContext context) {
    Log().logger.d('LifeCycleStatelessWidget build');
    return DefaultLayout(title: 'LifeCycleStatelessWidget', widget: Container());
  }
}

class LifeCycleStatefulWidget extends StatefulWidget {
  LifeCycleStatefulWidget({Key? key}) : super(key: key) {
    Log().logger.d('LifeCycleStatefulWidget start');
  }

  @override
  State<LifeCycleStatefulWidget> createState() {
    Log().logger.d('LifeCycleStatefulWidget createState(');
    return _LifeCycleStatefulWidgetState();
  }
}

class _LifeCycleStatefulWidgetState extends State<LifeCycleStatefulWidget> {
  final log = Log();

  @override
  void initState() {
    super.initState();
    log.logger.d('LifeCycleStatefulWidget initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log.logger.d('LifeCycleStatefulWidget didChangeDependencies');
  }

  @override
  void deactivate() {
    log.logger.d('LifeCycleStatefulWidget deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    log.logger.d('LifeCycleStatefulWidget dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log.logger.d('LifeCycleStatefulWidget build');
    return DefaultLayout(title: 'LifeCycleStatefulWidget', widget: Container());
  }
}
