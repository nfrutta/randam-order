import 'package:flutter/material.dart';

import 'result_page.dart';

class OrderPage extends StatelessWidget {
  OrderPage({Key? key}) : super(key: key);

  final _nameController1 = TextEditingController(text: '奥川恭伸');
  final _nameController2 = TextEditingController(text: '内山壮真');
  final _nameController3 = TextEditingController(text: 'オスナ');
  final _nameController4 = TextEditingController(text: '山田哲人');
  final _nameController5 = TextEditingController(text: '村上宗隆');
  final _nameController6 = TextEditingController(text: '長岡秀樹');
  final _nameController7 = TextEditingController(text: '青木宣親');
  final _nameController8 = TextEditingController(text: '塩見泰隆');
  final _nameController9 = TextEditingController(text: 'サンタナ');

  final _numbarController1 = TextEditingController(text: '11');
  final _numbarController2 = TextEditingController(text: '33');
  final _numbarController3 = TextEditingController(text: '13');
  final _numbarController4 = TextEditingController(text: '1');
  final _numbarController5 = TextEditingController(text: '55');
  final _numbarController6 = TextEditingController(text: '58');
  final _numbarController7 = TextEditingController(text: '23');
  final _numbarController8 = TextEditingController(text: '9');
  final _numbarController9 = TextEditingController(text: '25');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メンバー入力'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('チーム名も入力できると良いかも'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('東京ヤクルトスワローズ'),
              ),
            ),
            Table(
                border: TableBorder.all(),
                columnWidths: const {
                  0: FractionColumnWidth(.07),
                  2: FractionColumnWidth(.5),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(
                    children: [
                      Center(child: Text('#')),
                      Center(child: Text('守備位置')),
                      Center(child: Text('選手名')),
                      Center(child: Text('背番号')),
                    ],
                  ),
                  _createTableRow(
                      _nameController1, _numbarController1, 1, '投手'),
                  _createTableRow(
                      _nameController2, _numbarController2, 2, '捕手'),
                  _createTableRow(
                      _nameController3, _numbarController3, 3, '一塁手'),
                  _createTableRow(
                      _nameController4, _numbarController4, 4, '二塁手'),
                  _createTableRow(
                      _nameController5, _numbarController5, 5, '三塁手'),
                  _createTableRow(
                      _nameController6, _numbarController6, 6, '遊撃手'),
                  _createTableRow(
                      _nameController7, _numbarController7, 7, '左翼手'),
                  _createTableRow(
                      _nameController8, _numbarController8, 8, '中堅手'),
                  _createTableRow(
                      _nameController9, _numbarController9, 9, '右翼手'),
                ]),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Map<int, List<String>> orderMaps = {
                          1: [
                            '投手',
                            _nameController1.text,
                            _numbarController1.text,
                          ],
                          2: [
                            '捕手',
                            _nameController2.text,
                            _numbarController2.text,
                          ],
                          3: [
                            '一塁手',
                            _nameController3.text,
                            _numbarController3.text,
                          ],
                          4: [
                            '二塁手',
                            _nameController4.text,
                            _numbarController4.text,
                          ],
                          5: [
                            '三塁手',
                            _nameController5.text,
                            _numbarController5.text,
                          ],
                          6: [
                            '遊撃手',
                            _nameController6.text,
                            _numbarController6.text,
                          ],
                          7: [
                            '左翼手',
                            _nameController7.text,
                            _numbarController7.text,
                          ],
                          8: [
                            '中堅手',
                            _nameController8.text,
                            _numbarController8.text,
                          ],
                          9: [
                            '右翼手',
                            _nameController9.text,
                            _numbarController9.text,
                          ],
                        };

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(orderMaps)),
                        );
                      },
                      child: const Text('打順を発表！'),
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

  TableRow _createTableRow(
    TextEditingController nameController,
    TextEditingController numbarController,
    int number,
    String position,
  ) {
    return TableRow(
      children: [
        Center(child: Text(number.toString())),
        Center(child: Text(position)),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
            height: 42,
            child: TextFormField(
              controller: nameController,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
            height: 42,
            child: TextFormField(
              controller: numbarController,
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
