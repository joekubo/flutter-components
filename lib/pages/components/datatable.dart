import 'package:flutter/material.dart';
import 'package:flutter_components/pages/models/users.dart';

class DatatableYetu extends StatefulWidget {
  final String title;
  const DatatableYetu({Key? key, required this.title}) : super(key: key);

  @override
  _DatatableYetuState createState() => _DatatableYetuState();
}

class _DatatableYetuState extends State<DatatableYetu> {
  bool sort = false;
  List<User> users = [];

  @override
  void initState() {
    sort = true;
    users = User.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    onSortColumn(int columnIndex, bool ascending) {
      if (columnIndex == 0) {
        if (ascending) {
          users.sort((a, b) => a.firstName.compareTo(b.firstName));
        } else {
          users.sort((a, b) => b.firstName.compareTo(a.firstName));
        }
      }
    }

    // onSelectedRow(bool selected, User user) {

    // }

    DataTable dataBody() {
      return DataTable(
        sortAscending: sort,
        sortColumnIndex: 0,
        columns: [
          DataColumn(
            label: const Text("First Name"),
            numeric: false,
            tooltip: "This is First Name",
            onSort: (columnIndex, ascending) {
              setState(() {
                sort = !sort;
              });
              onSortColumn(columnIndex, ascending);
            },
          ),
          const DataColumn(
            label: Text("Last Name"),
            numeric: false,
            tooltip: "This is Last Name",
          ),
        ],
        rows: users
            .map(
              (users) => DataRow(
                selected: true,
                onSelectChanged: (b) {
                  print("OnSelect");
                  // onSelectedRow(b, users);
                },
                cells: [
                  DataCell(
                    Text(users.firstName),
                    onTap: () {
                      print("Selected ${users.firstName}");
                    },
                  ),
                  DataCell(Text(users.lastName)),
                ],
              ),
            )
            .toList(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: [
          Center(
            child: dataBody(),
          ),
        ],
      ),
    );
  }
}
