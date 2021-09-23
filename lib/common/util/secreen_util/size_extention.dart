import 'package:flutterseed/common/util/secreen_util/screen_config.dart';

extension SizeExtension on num {
  num get w => ScreenConfig().width(this);

  num get h => ScreenConfig().height(this);
}
