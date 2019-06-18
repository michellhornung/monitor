import 'package:monitor/data/soDetailsData.dart';
import 'package:monitor/model/soDetailsModel.dart';
import 'package:flutter/material.dart';

class DataTableSODetails extends StatefulWidget {
  @override
  DataTableSODetailsState createState() => DataTableSODetailsState();
}

class DataTableSODetailsState extends State<DataTableSODetails> {
  bool ascending;
  List<SODetails> selectedSO;

  @override
  void initState() {
    super.initState();

    ascending = false;
    selectedSO = [];
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
        columns: soDetailsColumns
            .map(
              (String column) => DataColumn(
                    label: Text(column),
                    onSort: (int columnIndex, bool ascending) => onSortColumn(
                        columnIndex: columnIndex, ascending: ascending),
                  ),
            )
            .toList(),
        rows: soDetails
            .map((SODetails soDetails) => DataRow(
                  cells: [
                    DataCell(Text('${soDetails.top}')),
                    DataCell(Text('${soDetails.tasks}')),
                    DataCell(Text('${soDetails.cpu}')),
                    DataCell(Text('${soDetails.mem}')),
                    DataCell(Text('${soDetails.swap}')),
                  ],
                ))
            .toList(),
      );

  void onSortColumn({int columnIndex, bool ascending}) {
    if (columnIndex == 0) {
      setState(() {
        if (ascending) {
          soDetails.sort((a, b) => a.top.compareTo(b.top));
        } else {
          soDetails.sort((a, b) => b.top.compareTo(a.top));
        }
        this.ascending = ascending;
      });
    }
  }

  void onSelectedRowChanged({bool selected, SODetails soDetails}) {
    setState(() {
      if (selected) {
        selectedSO.add(soDetails);
      } else {
        selectedSO.remove(soDetails);
      }
    });
  }

  Function onPressed() {
    if (selectedSO.isEmpty) return null;

    return () {};
  }
}
