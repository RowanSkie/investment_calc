//Added some information if there are currently no assets - Gab

import 'package:flutter/material.dart';
import 'package:investment_calc/widgets/sidebar.dart';

int MyAssets = 1;
List<String> assetName = <String>[];
List<int> assetPrice = <int>[];

class AssetsPage extends StatefulWidget {
  const AssetsPage({Key? key}) : super(key: key);

  @override
  _AssetsPageState createState() => _AssetsPageState();
}

class _AssetsPageState extends State<AssetsPage>{

  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: Text('Assets'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _showMyDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _showMyDialog() async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Add a Asset'),
        content: SingleChildScrollView(
          child: ListBody(
            children:[
              Text("Asset Name:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )),
              TextField(
                controller: nameController,
              ),
              Text("Asset Price:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )),
              TextField(
                controller: priceController,
                
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Add'),
            onPressed: () {
              assetName.add(nameController.text);
              int qty = int.parse(priceController.text);
              assetPrice.add(qty);
              setState((){});
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

}

