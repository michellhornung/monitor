import 'package:monitor/data/serviceDetailsData.dart';
import 'package:monitor/model/serviceDetailsModel.dart';
import 'package:flutter/material.dart';

class DataTableWidget extends StatefulWidget {
  @override
  DataTableWidgetState createState() => DataTableWidgetState();
}

class DataTableWidgetState extends State<DataTableWidget> {
  bool ascending;
  List<ServiceDetails> selectedServices;

  @override
  void initState() {
    super.initState();

    ascending = false;
    selectedServices = [];
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: width * 1.4,
        child: ListView(
          children: <Widget>[
            buildDataTable(),
          ],
        ),
      ),
    );
  }

  Widget buildDataTable() => DataTable(
        sortAscending: ascending,
        sortColumnIndex: 0,
        columns: serviceDetailsColumns
            .map(
              (String column) => DataColumn(
                    label: Text(column),
                    onSort: (int columnIndex, bool ascending) => onSortColumn(
                        columnIndex: columnIndex, ascending: ascending),
                  ),
            )
            .toList(),
        rows: servicesDetails
            .map((ServiceDetails servicesDetails) => DataRow(
                  cells: [
                    DataCell(Text('${servicesDetails.uid}')),
                    DataCell(Text('${servicesDetails.pid}')),
                    DataCell(Text('${servicesDetails.ppid}')),
                    DataCell(Text('${servicesDetails.c}')),
                    DataCell(Text('${servicesDetails.stime}')),
                    DataCell(Text('${servicesDetails.tty}')),
                    DataCell(Text('${servicesDetails.time}')),
                    DataCell(Text('${servicesDetails.cmd}')),
                  ],
                ))
            .toList(),
      );

  void onSortColumn({int columnIndex, bool ascending}) {
    if (columnIndex == 0) {
      setState(() {
        if (ascending) {
          servicesDetails.sort((a, b) => a.uid.compareTo(b.uid));
        } else {
          servicesDetails.sort((a, b) => b.uid.compareTo(a.uid));
        }
        this.ascending = ascending;
      });
    }
  }

  void onSelectedRowChanged({bool selected, ServiceDetails servicesDetails}) {
    setState(() {
      if (selected) {
        selectedServices.add(servicesDetails);
      } else {
        selectedServices.remove(servicesDetails);
      }
    });
  }

  Function onPressed() {
    if (selectedServices.isEmpty) return null;

    return () {};
  }
}
