import 'package:logger/logger.dart';
import 'package:flutterseed/common/util/logger/logger_config.dart';

// ignore: non_constant_identifier_names
LoggerConfig Log = LoggerConfig(
  printer: PrettyPrinter(
    methodCount: 0,
    lineLength: 100,
    printTime: true,
    printEmojis: true,
  ),
  level: LoggerConfig.logLevel(),
);
