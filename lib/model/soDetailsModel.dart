import 'package:meta/meta.dart';

class SODetails {
  final String top;
  final String tasks;
  final String cpu;
  final String mem;
  final String swap;

  const SODetails({
    @required this.top,
    @required this.tasks,
    this.cpu,
    this.mem,
    this.swap,
  });
}
