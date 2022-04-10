import 'package:flutter/material.dart';
import 'package:random_order/pages/order_page.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderPage()),
                    );
                  },
                  child: const Text('ランダムに打順を決める'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
