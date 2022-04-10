import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage(this._orderMaps, {Key? key}) : super(key: key);

  final Map<int, List<String>> _orderMaps;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    var numbars = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    numbars.shuffle();
    return Scaffold(
      appBar: AppBar(title: const Text('ランダム打順')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FractionColumnWidth(.06),
                2: FractionColumnWidth(.5),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                const TableRow(
                  children: [
                    Text(
                      '打順',
                      textAlign: TextAlign.center,
                    ),
                    Center(child: Text('守備位置')),
                    Center(child: Text('選手名')),
                    Center(child: Text('背番号')),
                  ],
                ),
                for (int i = 0; i < numbars.length; i++)
                  TableRow(
                    children: [
                      SizedBox(
                        height: 42,
                        child: Center(
                          child: Text(
                            (i + 1).toString(),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(widget._orderMaps[numbars[i]]![0]),
                      ),
                      Center(child: Text(widget._orderMaps[numbars[i]]![1])),
                      Center(child: Text(widget._orderMaps[numbars[i]]![2])),
                    ],
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 42,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Icon(Icons.refresh),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: const Text('トップへ戻る'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
