
import 'failure.dart';

class NoConnectionError extends Failure {
  @override
  String toString() => 'No Connection Error!';

  @override
  String? get message => toString();
}
