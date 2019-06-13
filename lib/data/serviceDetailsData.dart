import 'package:monitor/model/serviceDetailsModel.dart';

final List<String> serviceDetailsColumns = [
  'UID',
  'PID',
  'PPID',
  'C',
  'STIME',
  'TTY',
  'TIME',
  'CMD',
];

final List<ServiceDetails> servicesDetails = [
  ServiceDetails(
    uid: 'root',
    pid: '3406',
    ppid: '1',
    c: '0',
    stime: '08:15',
    tty: '?',
    time: '00:00:00',
    cmd: 'lh.aliveserver.IvrService',
  ),
  ServiceDetails(
    uid: 'root',
    pid: '0007',
    ppid: '1',
    c: '0',
    stime: '08:15',
    tty: '?',
    time: '00:00:00',
    cmd: 'lh.aliveserver.IvrService',
  ),
  ServiceDetails(
    uid: 'root',
    pid: '1000',
    ppid: '1',
    c: '0',
    stime: '08:15',
    tty: '?',
    time: '00:00:00',
    cmd: 'lh.aliveserver.IvrService',
  ),
];
