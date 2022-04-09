import 'package:flutter/material.dart';

import 'result_page.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メンバー入力'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FractionColumnWidth(.07),
                2: FractionColumnWidth(.5),
              },
              children: const [
                TableRow(
                  children: [
                    Text('#'),
                    Center(child: Text('守備位置')),
                    Center(child: Text('名前')),
                    Center(child: Text('背番号')),
                  ],
                ),
                TableRow(
                  children: [Text('1'), Text('投手'), TextField(), TextField()],
                ),
                TableRow(
                  children: [Text('2'), Text('捕手'), TextField(), TextField()],
                ),
                TableRow(
                  children: [Text('3'), Text('一塁手'), TextField(), TextField()],
                ),
                TableRow(
                  children: [Text('4'), Text('二塁手'), TextField(), TextField()],
                ),
                TableRow(
                  children: [Text('5'), Text('三塁手'), TextField(), TextField()],
                ),
                TableRow(
                  children: [Text('6'), Text('遊塁手'), TextField(), TextField()],
                ),
                TableRow(
                  children: [Text('7'), Text('左翼手'), TextField(), TextField()],
                ),
                TableRow(
                  children: [Text('8'), Text('中堅手'), TextField(), TextField()],
                ),
                TableRow(
                  children: [Text('9'), Text('右翼手'), TextField(), TextField()],
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultPage()),
                        );
                      },
                      child: const Text('打順を発表！'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
