import 'package:logger/logger.dart';

class Log {
  late Logger logger;

  static final Log _instance = Log._internal();

  factory Log() => _instance;

  Log._internal() {
    logger = Logger();
  }

}