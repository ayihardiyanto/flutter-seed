import 'package:equatable/equatable.dart';

abstract class BaseEntity<T> extends Equatable {
  T copyWith();
}
