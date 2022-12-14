import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          final tr = transactions[index];
          return Card(
              child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  'R\$ ${tr.value.toStringAsFixed(2)}', // Valor do item
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // alinamento da L I N H A
                children: [
                  Text(
                    tr.title, // Titulo do objeto
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold, // Fonte em negrito
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    DateFormat('d MMM y').format(tr.date),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ));
        },
      ),
    );
  }
}
