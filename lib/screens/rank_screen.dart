import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class RankScreen extends StatelessWidget {
  RankScreen({Key? key}) : super(key: key);
  static const routeName = '/rank_screen';

  Widget buildrank(int VT, String nameDB, int Tran, int T, int H, int B, int BT,
      int BB, int HS, int Diem) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(VT.toString()),
        Container(width: 100, child: Text(nameDB)),
        Text(Tran.toString()),
        Text(T.toString()),
        Text(H.toString()),
        Text(B.toString()),
        Container(width: 50, child: Text('${BT.toString()}-${BB.toString()}')),
        Text(HS.toString()),
        Text(Diem.toString()),
      ],
    );
  }

  List<String> temp = [
    "VT: Vị trí",
    "Tr: Số trận",
    " T: Trận thắng",
    "H: Trận hòa",
    "B: Trận thua",
    "BT: Số bàn thắng",
    "BB: Số bàn thua",
    "HS: Hiệu số   "
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bảng xếp hạng'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        const Divider(),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              // VerticalDivider(),
              Text('VT'),
              // VerticalDivider(
              //   color: Colors.black,
              //   thickness: 1,
              // ),
              SizedBox(width: 100, child: Text('Đội Bóng')),
              Text(' Trận '),
              Text("  T "),
              Text('  H '),
              Text(' B '),
              SizedBox(width: 50, child: Text('BT-BB')),
              Text('  HS '),
              Text('Điểm'),
            ],
          ),
        ),
        const Divider(),
        const SizedBox(height: 10),
        buildrank(1, 'Hà Nội', 19, 12, 4, 3, 39, 19, 20, 40),
        const SizedBox(height: 10),
        buildrank(2, 'Hải Phòng', 20, 11, 5, 4, 32, 24, 20, 40),
        const SizedBox(height: 10),
        buildrank(3, 'Topenland Bình Định', 19, 11, 4, 3, 39, 19, 20, 40),
        const SizedBox(height: 10),
        buildrank(4, 'Viettel', 19, 10, 3, 6, 26, 13, 13, 33),
        const SizedBox(height: 10),
        buildrank(5, 'Đông Á Thanh Hóa', 20, 11, 5, 4, 32, 24, 20, 40),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
              children:
                  List.generate(temp.length, (index) => Text(temp[index]))),
        )
      ]),
    );
  }
}
