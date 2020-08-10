import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // String titleInput;
  // String amountInput;
  final Function addTx;

  NewTransaction(this.addTx);

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Enter Title'),
              controller: titleController, //2nd method direct connect
              // onChanged: (val) {
              //   titleInput = val;     //its store every key stroke 1st method to store input
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter amount'),
              controller: amountController,
              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            FlatButton(
                child: Text('Add Transaction'),
                onPressed: () {
                  addTx(titleController.text,
                      double.parse(amountController.text));
                },
                textColor: Colors.purple),
          ],
        ),
      ),
    );
  }
}
