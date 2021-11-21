import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  NewTransaction(this.addTx);
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Product',
                hintText: 'Input Product Name',
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
                hintText: 'Input Product Amount',
              ),
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {
                print(titleController.text);
                print(amountController.text);
                addTx(
                  titleController.text,
                  double.parse(
                    amountController.text,
                  ),
                );
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
          ],
        ));
  }
}
