import 'package:flutter/material.dart';

class CompetitionResultScreen extends StatelessWidget {
  const CompetitionResultScreen({Key? key}) : super(key: key);
  static const routeName = '/competition-result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text("Báo Cáo Kết Quả Thi Đấu")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Báo Cáo Kết Quả Thi Đấu",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Sân: ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Ngày Giờ Thi Đấu: ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                ],
              ),

              ///Đội 1
              Row(
                children: [
                  const Text(
                    "Đội 1: ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Tỷ Số: ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                ],
              ),
              const Text(
                'Nhập Danh sách cầu thủ ghi bàn.',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text('Tên Cầu thủ.'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 100,
                  ),
                  const Text('Thời điểm ghi bàn.'),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                ],
              ),
              //đội 2
              ///Đội 1
              Row(
                children: [
                  const Text(
                    "Đội 2: ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Tỷ Số: ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                ],
              ),
              const Text(
                'Nhập Danh sách cầu thủ ghi bàn.',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text('Tên Cầu thủ.'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 100,
                  ),
                  const Text('Thời điểm ghi bàn.'),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '......................'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Material(
          child: Container(
        height: 50,
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: InkWell(
          onTap: (() {}),
          child: const Text(
            'Báo Cáo Kết Quả Trận Đấu',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
        ),
      )),
    );
  }
}
