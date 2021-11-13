import 'package:flutter/material.dart';
import '/models/transaction.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

  final List<Transaction> _userTransactions = [
    Transaction(id: 't1', amount: 69.99,  date: DateTime.now() , title: "Shoes" ),
    Transaction(id: 't1', amount: 69.99,  date: DateTime.now() , title: "Shoes" ),
    Transaction(id: 't1', amount: 69.99,  date: DateTime.now() , title: "Shoes" ),
    Transaction(id: 't1', amount: 69.99,  date: DateTime.now() , title: "Shoes" )
  ];

  void _addNewTransaction(String txTitle, double txAmount)
  {
    final newTx = Transaction(
        title: txTitle ,
        amount: txAmount,
        date: DateTime.now(),
        id :DateTime.now().toString()
    );

    setState(() {
              _userTransactions.add(newTx);
            }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
