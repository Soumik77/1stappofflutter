import 'package:first_app/models/catalogue.dart';
import 'package:first_app/widgets/drawer.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Project";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dripping in Dazzle",
        ),
      ),
      //body: Center(
      //child: Container(
      //  child: Text(context.runtimeType.toString()),
      // ),
      //),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          //itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
                //item: CatalogModel.items[index],
                item: dummyList[index]);
          },
        ),
      ),

      drawer: MyDrawer(),
    );
  }
}
