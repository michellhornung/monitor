import 'package:meta/meta.dart';

class ServiceDetails {
  final String uid;
  final String pid;
  final String ppid;
  final String c;
  final String stime;
  final String tty;
  final String time;
  final String cmd;

  const ServiceDetails({
    @required this.uid,
    @required this.pid,
    this.ppid,
    this.c,
    this.stime,
    this.tty,
    this.time,
    this.cmd,
  });
}
