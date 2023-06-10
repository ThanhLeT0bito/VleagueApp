import 'package:flutter/material.dart';
import 'package:vleague_app/screens/lichthidau_screen.dart';
import 'package:vleague_app/screens/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget buildCentertext(String text, double fz) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: fz),
      ),
    );
  }

  Widget buildKQTranDau(
      BuildContext context, String clb1, String clb2, int ts1, int ts2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(clb1),
            Image.network(
              'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            border: Border.all(),
            color: Theme.of(context).primaryColor,
          ),
          child: Text(
            '${ts1} - ${ts2}',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Row(
          children: [
            Image.network(
              'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ),
            Text(clb2),
          ],
        ),
      ],
    );
  }

  Widget buildSeeAll(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      // padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.grey,
      ),
      child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(LichThiDauScreen.routeName);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Xem tất cả ',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
            ],
          )),
    );
  }

  Widget buildTTCT(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(
            'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
            fit: BoxFit.cover,
            width: 30,
            height: 30,
          ),
          const Text(
            'Name',
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            '10 Bàn thắng',
            style: TextStyle(color: Colors.white),
          ),
          Image.network(
            'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
            fit: BoxFit.cover,
            width: 30,
            height: 30,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('vleagues')),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: Theme.of(context).primaryColor),
                  // color: Theme.of(context).primaryColor,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Lịch Thi đấu',
                        style: TextStyle(color: Colors.white),
                      ))),
              Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.grey,
                  ),
                  // color: Colors.grey,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Bảng Xếp Hạng',
                        style: TextStyle(color: Colors.white),
                      ))),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(color: Colors.black, width: 1)),
            ),
            child: Column(
              children: [
                buildCentertext('Vòng 20 NIGHT WOLF', 25),
                buildCentertext('V.LEAGUES 1-2002', 20),
                buildCentertext('Thứ 5, ngày 24 tháng 12 năm 2022', 15),
                const SizedBox(
                  height: 10,
                ),
                buildKQTranDau(context, 'HAGL', 'HNFB', 1, 2),
                const SizedBox(height: 5),
                buildKQTranDau(context, 'ABC', 'XYZ', 2, 1),
                const SizedBox(height: 5),
                buildKQTranDau(context, 'GFD', 'UGJ', 0, 0),
                const SizedBox(height: 5),
                buildKQTranDau(context, 'NAME', 'SHVT', 0, 6),
                const SizedBox(height: 10),
                buildSeeAll(context),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //Tin tức
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(color: Colors.black, width: 1)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'TIN TỨC MỚI NHẤT',
                      style: TextStyle(
                          fontSize: 20, color: Theme.of(context).primaryColor),
                    ),
                    Container(
                        color: Theme.of(context).primaryColor,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Xem Thêm',
                              style: TextStyle(color: Colors.white),
                            ))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                  'https://static.bongda24h.vn/medias/mobile/2021/2/5/ngoai-hang-anh-hom-nay-6-2-2021.jpg',
                  width: MediaQuery.of(context).size.width - 50,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Text(
                    'Sau vòng 20 của V.league , Thay đổi và không thay đổi và những sự kiện liên quan... ',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                        onPressed: () {}, child: const Text('Tin nổi bật!'))),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //Video
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(color: Colors.black, width: 1)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'VIDEO  ',
                      style: TextStyle(
                          fontSize: 20, color: Theme.of(context).primaryColor),
                    ),
                    Container(
                        color: Theme.of(context).primaryColor,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Xem Thêm',
                              style: TextStyle(color: Colors.white),
                            ))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                  'https://media.bongda.com.vn/files/trong.le/2022/08/12/unnamed-1414.png',
                  width: MediaQuery.of(context).size.width - 50,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Thống kê cầu thủ
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: const BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(color: Colors.black, width: 1)),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Thống kê cầu thủ',
                    style: TextStyle(
                        fontSize: 20, color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildTTCT(context),
                  const SizedBox(
                    height: 10,
                  ),
                  buildTTCT(context),
                  const SizedBox(
                    height: 10,
                  ),
                  buildTTCT(context),
                  const SizedBox(height: 10),
                  Container(
                      color: Theme.of(context).primaryColor,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Xem Chi Tiết',
                            style: TextStyle(color: Colors.white),
                          ))),
                ]),
          ),
          //Tài trợ
          const SizedBox(height: 10),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Tài Trợ Chính',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.network(
                    'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  const Text('FLutter'),
                  Image.network(
                    'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  const Text('CNPMHAIZZ'),
                  Image.network(
                    'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  const Text('LAPTRINHAPP'),
                  const Text(
                    'Tài Trợ Đồng Hành',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                      Image.network(
                        'https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-vector-football-icon-png-image_927125.jpg',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ],
                  )
                ]),
          )
        ],
      )),
    );
  }
}
