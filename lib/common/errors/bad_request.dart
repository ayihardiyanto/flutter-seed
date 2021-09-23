

import 'failure.dart';

class BadRequest extends Failure {
  @override
  String toString() => 'Bad Request Error!';

  @override
  String? get message => toString();
}
