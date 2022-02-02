import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root
// of your application.
@override
Widget build(BuildContext context) {
	return new MaterialApp(
	title: "ListView.builder",
	theme: new ThemeData(
		primarySwatch: Colors.blue
	),
	debugShowCheckedModeBanner: false,
	home: new ListViewBuilder()
	);
}
}
class ListViewBuilder extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title:Text("Piyush App")
	),
	body: ListView.builder(
		itemCount: 10,
		itemBuilder: (BuildContext context,int index){
		return ListTile(
			leading: Icon(Icons.list),
			trailing: Text("Hi",
						style: TextStyle(
							color: Colors.green,fontSize: 15),),
			title:Text("Demo Number $index")
			);
		}
		),
	);
}
}
