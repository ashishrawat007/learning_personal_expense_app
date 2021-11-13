import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
final List<Transaction> transaction ;
  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return     SingleChildScrollView(
      child: Column(
        children: transaction.map( (tx)
        {
          return Card(
            child:  Row(
              children: [
                Container(
                    margin:  const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.purple,
                            width: 2
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text("\$ ${tx.amount}",
                      style:  const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple
                      ),)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tx.title ,
                        style:  const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        )
                    ),
                    Text( DateFormat.yMMMd().format(tx.date),
                        style:  const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        )
                    ),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }


}
