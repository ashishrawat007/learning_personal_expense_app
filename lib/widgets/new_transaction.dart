import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final Function addTx ;
  NewTransaction(this.addTx, {Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              TextField(
                decoration: const InputDecoration(
                  labelText: "Enter title",
                ),
                //onChanged:  (val) => titleInput = val,
                controller: titleController,
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: "Enter Amount"
                ),
                //onChanged: (value) => amountInput = value ,
                controller: amountController,
              ),
              TextButton(
                  onPressed: (){
                    addTx(titleController.text,double.parse(amountController.text));
                  },
                  child : const Text("Add Transaction",
                    style: TextStyle(
                        color: Colors.purple
                    ),
                  )
              )
            ],
          ),
        )
    );
  }
}
