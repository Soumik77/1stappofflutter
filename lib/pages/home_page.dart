import 'dart:math';
import 'package:first_app/models/catalogue.dart';
import 'package:first_app/widgets/drawer.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'dart:convert';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Project";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString('assets/files/catalog.json');
    final decodeData = jsonDecode(catalogJson);
    final productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {}); //data notun kore reload er khetre bebohar kora hoy
  }

  @override
  Widget build(BuildContext context) {
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
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
        ? GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16),
          itemBuilder: (context, index){
            final item = CatalogModel.items[index];
  
            return Card ( 
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: GridTile(
                header: Text(item.name),
                
                
                child: Image.network(item.image),
                footer: Text(item.price.toString()),
            )
            );
          },
          itemCount: CatalogModel.items.length
          
          
          
          
          ,)
        
        /*ListView.builder(
          itemCount: CatalogModel.items.length,
          //itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
              //item: dummyList[index]);
            );
          },
        ):*/ 
        : Center(
          child: CircularProgressIndicator(),
        )
      ),

      drawer: MyDrawer(),
    );
  }
}
