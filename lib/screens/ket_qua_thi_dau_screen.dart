import 'package:flutter/material.dart';
import 'package:vleague_app/screens/detail_result_screen.dart';
import 'package:vleague_app/screens/detail_team_screen.dart';

class KetQuaThiDauScreen extends StatelessWidget {
  const KetQuaThiDauScreen({Key? key}) : super(key: key);
  static const routeName = '/ketquathidau';

  Widget buildLTD(BuildContext context, String ngay, String gio, String svd,
      String clb1, String clb2) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
      ),
      child: Column(
        children: [
          Text(ngay),
          Text(gio),
          Text('MT:85'),
          Text(svd),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Text(clb1),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text('2 - 2'),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 130,
              child: Column(
                children: [
                  Image.network(
                    'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Text(clb2),
                ],
              ),
            ),
          ])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kết Quả Thi Đấu'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.arrow_left,
                    size: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(' Tháng 10 Năm 2022'),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 40,
                  ),
                ],
              ),
              Text(
                'Vòng 15 Night Wlf V.league 11-2022',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(DetailResultScreen.routeName);
                },
                child: buildLTD(context, 'Ngày 10 Tháng 10 Năm 2022', '15:00',
                    'SVD Mỹ Đình', 'Đông Á Thanh Hóa', 'Hà Nội'),
              ),
              const SizedBox(
                height: 10,
              ),
              buildLTD(context, 'Ngày 11 Tháng 10 Năm 2022', '19:15',
                  'SVĐ ABCD', 'Hải Phòng', 'Hải Dương'),
              const SizedBox(
                height: 10,
              ),
              buildLTD(context, 'Ngày 11 Tháng 10 Năm 2022', '19:15',
                  'SVĐ ABCD', 'Hải Phòng', 'Hải Dương'),
            ],
          ),
        ),
      ),
    );
  }
}
