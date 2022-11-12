import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:projectstock/model/stockModel.dart';
import 'package:projectstock/widgets/drawer.dart';
import 'package:projectstock/widgets/item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final stockJson = await rootBundle.loadString("assets/files/stock.json");
    final decodedData = jsonDecode(stockJson);
    var stockData = decodedData["data"];
    print(stockData);

    StockModel.items =
        List.from(stockData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stock App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (StockModel.items != null)
            ? ListView.builder(
                itemCount: StockModel.items?.length ?? -1,
                itemBuilder: (context, index) => ItemWidget(
                  item: StockModel.items![index],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
