import 'package:daily_expenses/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Daily Expenses',
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
            actions: [IconButton(onPressed: (){},
            icon: Icon(
              Icons.add),),],
          ),
          backgroundColor: Colors.indigo,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        'CHART',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                UserTrasaction(),
              ],
              
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
          floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
          ),
    );
  }
}