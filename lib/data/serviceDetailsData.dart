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
    uid: 'root1',
    pid: '3406',
    ppid: '1',
    c: '0',
    stime: '08:15',
    tty: '?',
    time: '00:00:00',
    cmd: 'lh.aliveserver.IvrService',
  ),
  ServiceDetails(
    uid: 'root2',
    pid: '0007',
    ppid: '1',
    c: '0',
    stime: '08:15',
    tty: '?',
    time: '00:00:00',
    cmd: 'lh.aliveserver.IvrService',
  ),
  ServiceDetails(
    uid: 'root3',
    pid: '1000',
    ppid: '1',
    c: '0',
    stime: '08:15',
    tty: '?',
    time: '00:00:00',
    cmd: 'lh.aliveserver.IvrService',
  ),
];