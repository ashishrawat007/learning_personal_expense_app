import 'package:flutter/material.dart';
import '../widgets/transaction_list.dart';
import 'widgets/new_transaction.dart';
import 'widgets/user_transaction.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
// late String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("expense App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment:  MainAxisAlignment.spaceAround,
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          children: [
            Container(
              width:  double.infinity,
              child: const Card(
                color: Colors.blue,
                  child: Text("chart"),
                elevation: 5,
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
