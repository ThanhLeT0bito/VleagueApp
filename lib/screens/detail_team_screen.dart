import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vleague_app/providers/vleagues.dart';

class DetailTeamScreen extends StatelessWidget {
  const DetailTeamScreen({Key? key}) : super(key: key);
  static const routeName = "/detail-team-screen";

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Vleagues>(context);
    final List<Player> listPlayer = data.itemsListPlayer;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thông tin đội bóng"),
      ),
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.network(
            'https://vpf.vn/wp-content/uploads/2018/10/binh-duong-2021.png',
            width: 150,
            height: 150,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Becamex Bình Dương",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.visible),
                ),
                Text("Sân Nhà: SVĐ Bình Dương "),
                Text("(Sức chứa: 15.000 người)"),
                Text("HLV: Lư Đình Tuấn")
              ],
            ),
          )
        ]),
        const SizedBox(height: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              // height: 200,
              child: ListView.builder(
                  itemCount: listPlayer.length,
                  itemBuilder: ((context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text((index + 1).toString()),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'https://qph.cf2.quoracdn.net/main-qimg-b166b7cee77783cd0c0e7566c0a883ed-lq',
                              width: 80,
                              height: 80,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                              child: Text(listPlayer[index].name.toString())),
                          Text(listPlayer[index].soAo.toString()),
                          const SizedBox(width: 5),
                          Expanded(
                              child: Text(listPlayer[index].viTri.toString())),
                          Text(listPlayer[index].chieuCao.toString()),
                          const SizedBox(width: 10),
                          Text(listPlayer[index].namSinh),
                        ],
                      ))),
            ),
          ),
        )
      ]),
    );
  }
}
