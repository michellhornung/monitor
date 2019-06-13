import 'package:monitor/widgets/dataTableWidget.dart';
import 'package:flutter/material.dart';

class ServiceDetails extends StatefulWidget {
  @override
  _ServiceDetailsState createState() => new _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  Widget appBarTitle = new Text(
    "Detalhes Serviços",
    style: new TextStyle(color: Colors.black),
  );
  Icon icon = new Icon(
    Icons.search,
    color: Colors.black,
  );
  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();
  List<dynamic> _list;
  bool _isSearching;
  String _searchText = "";
  List searchresult = new List();

  _ServiceDetailsState() {
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        setState(() {
          _isSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearching = true;
          _searchText = _controller.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _isSearching = false;
    values();
  }

  void values() {
    _list = List();
    _list.add("Indian rupee");
    _list.add("United States dollar");
    _list.add("Australian dollar");
    _list.add("Euro");
    _list.add("British pound");
    _list.add("Yemeni rial");
    _list.add("Japanese yen");
    _list.add("Hong Kong dollar");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: globalKey,
        appBar: buildAppBar(context),
        body: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Flexible(
                  child: searchresult.length != 0 || _controller.text.isNotEmpty
                      ? new ListView.builder(
                          shrinkWrap: true,
                          itemCount: searchresult.length,
                          itemBuilder: (BuildContext context, int index) {
                            String listData = searchresult[index];
                            return new ExpansionTile(
                              leading: Icon(
                                Icons.room_service,
                                color: Colors.grey,
                              ),
                              title: new Text(listData.toString()),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              children: <Widget>[
                                Divider(color: Colors.black, indent: 8.8),
                                AnimatedContainer(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.8),
                                    child: DataTableWidget(),
                                  ),
                                  curve: Curves.easeInOut,
                                  duration: const Duration(milliseconds: 500),
                                  height: 100.0,
                                ),
                              ],
                            );
                          },
                        )
                      : new ListView.builder(
                          shrinkWrap: true,
                          itemCount: _list.length,
                          itemBuilder: (BuildContext context, int index) {
                            String listData = _list[index];
                            return new ExpansionTile(
                              leading: Icon(
                                Icons.room_service,
                                color: Colors.grey,
                              ),
                              title: new Text(listData.toString()),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              children: <Widget>[
                                Divider(color: Colors.black, indent: 8.8),
                                AnimatedContainer(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.8),
                                    child: DataTableWidget(),
                                  ),
                                  curve: Curves.easeInOut,
                                  duration: const Duration(milliseconds: 500),
                                  height: 100.0,
                                ),
                              ],
                            );
                          },
                        ))
            ],
          ),
        ));
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
      new IconButton(
        icon: icon,
        onPressed: () {
          setState(() {
            if (this.icon.icon == Icons.search) {
              this.icon = new Icon(
                Icons.close,
                color: Colors.black,
              );
              this.appBarTitle = new TextField(
                controller: _controller,
                style: new TextStyle(
                  color: Colors.black,
                ),
                decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search, color: Colors.black),
                    hintText: "Search...",
                    hintStyle: new TextStyle(color: Colors.black)),
                onChanged: searchOperation,
              );
              _handleSearchStart();
            } else {
              _handleSearchEnd();
            }
          });
        },
      ),
    ]);
  }

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.icon = new Icon(
        Icons.search,
        color: Colors.black,
      );
      this.appBarTitle = new Text(
        "Detalhes Serviços",
        style: new TextStyle(color: Colors.black),
      );
      _isSearching = false;
      _controller.clear();
    });
  }

  void searchOperation(String searchText) {
    searchresult.clear();
    if (_isSearching != null) {
      for (int i = 0; i < _list.length; i++) {
        String data = _list[i];
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          searchresult.add(data);
        }
      }
    }
  }
}
