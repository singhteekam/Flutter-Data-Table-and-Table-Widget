import 'package:DataTableWidget/table.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DataTable',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table")
      ),
      body: Column(
        children: <Widget>[
          Text("DATA TABLE WIDGET",
                textAlign:TextAlign.center,
                style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
           Padding(padding: const EdgeInsets.only(top: 30),),
          SingleChildScrollView(
            child: DataTable(
                    //sortAscending: true,
                    sortColumnIndex: 0,
                    //columnSpacing: 2.0,
                   dataRowHeight: 53.0,
                   headingRowHeight: 70.0,
              columns: [
                DataColumn(label: Text("Name",
                textAlign:TextAlign.start,
                style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                tooltip: "This is  Name",
                ),
                DataColumn(label: Text("Age",textAlign:TextAlign.start,
                style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                numeric: true),
                DataColumn(label: Text("ID",textAlign:TextAlign.start,
                style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                numeric: true)
              ],
             rows: [
               DataRow(cells: [
                 DataCell(Text("Teekam"),
                 placeholder: true,
                 ),
                 DataCell(Text("19"),
                 showEditIcon: true),
                 DataCell(Text("9462112"),
                 showEditIcon: true)
               ]),
               DataRow(cells: [
                 DataCell(Text("Yogesh")),
                 DataCell(Text("21"),showEditIcon: true),
                 DataCell(Text("1954112"),
                 showEditIcon: true)
               ]),
               DataRow(cells: [
                 DataCell(Text("Praveen")),
                 DataCell(Text("23"),showEditIcon: true),
                 DataCell(Text("8745119"),
                 showEditIcon: true)
               ]),
               DataRow(cells: [
                 DataCell(Text("Dev")),
                 DataCell(Text("5"),showEditIcon: true),
                 DataCell(Text("1514129"),
                 showEditIcon: true)
               ])
             ]),
          ),
           Padding(padding: const EdgeInsets.only(top: 80),),
          RaisedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => Tables()),),
          child: Text(
            'Click to view Table Widget',
            style: TextStyle(fontSize: 27,color: Colors.black)
          ),)
        ],
      ),
    );
  }
}
