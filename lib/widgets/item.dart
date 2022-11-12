import 'package:flutter/material.dart';
import 'package:projectstock/model/stockModel.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.symbol} pressed");
        },
        leading: Text(item.series),
        title: Text(item.symbol),
        subtitle: Text(item.highPrice.toString()),
        trailing: Text(
          "${item.openPrice.toString()}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
