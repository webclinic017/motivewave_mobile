import 'package:meta/meta.dart';

@immutable
class ConnectResult {
  final bool success;
  final String? message;
  const ConnectResult(this.success, [this.message]);
}