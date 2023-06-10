import 'package:flutter/material.dart';

class DetailResultScreen extends StatelessWidget {
  const DetailResultScreen({Key? key}) : super(key: key);
  static const routeName = '/detailreult';

  Widget buildRowDetail(String tf, String tm, String tl) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(tf),
        SizedBox(width: 150, child: Center(child: Text(tm))),
        Text(tl),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('Chi Tiết Trận Đấu')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.network(
                    'https://vpf.vn/wp-content/uploads/2018/10/binh-duong-2021.png',
                    width: 100,
                    height: 150,
                  ),
                  const Text('Becamex Bình Dương'),
                ],
              ),
              Text('0'),
              Text('-'),
              Text('2'),
              Column(
                children: [
                  Image.network(
                    'https://vpf.vn/wp-content/uploads/2018/10/Logo-CLB-Dong-A-Thanh-Hoa_chuan-310x257.png',
                    width: 100,
                    height: 150,
                  ),
                  const Text('Thanh Hóa'),
                ],
              ),
            ],
          ),

          ///
          const Align(
              alignment: Alignment.center,
              child: Text(
                'Thông Số',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                'https://vpf.vn/wp-content/uploads/2018/10/binh-duong-2021.png',
                width: 70,
                height: 70,
              ),
              const Text('Team Stats'),
              Image.network(
                'https://vpf.vn/wp-content/uploads/2018/10/Logo-CLB-Dong-A-Thanh-Hoa_chuan-310x257.png',
                width: 70,
                height: 70,
              ),
            ],
          ),

          buildRowDetail('26', 'Cú sút', '12'),
          const SizedBox(height: 5),
          buildRowDetail('9', 'Sút Trúng Đích', '4'),
          const SizedBox(height: 5),
          buildRowDetail('74%', 'Kiểm Soát Bóng', '26%'),
          const SizedBox(height: 5),
          buildRowDetail('771', 'vượt Qua', '269'),
          const SizedBox(height: 5),
          buildRowDetail('88%', 'Vượt qua độ chính xác', '70%'),
          const SizedBox(height: 5),
          buildRowDetail('6', 'Phạm lỗi', '4'),
          const SizedBox(height: 5),
          buildRowDetail('0', 'Thẻ vàng', '0'),
          const SizedBox(height: 5),
          buildRowDetail('0', 'Thẻ Đỏ', '0'),
        ],
      ),
    );
  }
}
