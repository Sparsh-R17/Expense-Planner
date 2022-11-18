import '../models/transaction.dart';
import 'package:flutter/material.dart';
import './transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function removeTransaction;

  const TransactionList(this.transactions, this.removeTransaction);

  @override
  Widget build(BuildContext context) {
    return transactions.isNotEmpty
        ? ListView(
            children: transactions
                .map((tx) => TransactionItem(
                      transaction: tx,
                      key: ValueKey(tx.id),
                      removeTransaction: removeTransaction,
                    ))
                .toList(),
          )
        : LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Text(
                      'No Transactions added yet',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset('assets/images/Loading_wait.png'),
                  ),
                ],
              );
            },
          );
  }
}
