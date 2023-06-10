import 'dart:core';

class Player {
  final String id;
  final String idCLB;
  final String name;
  final String imgURL;
  final String birth;
  final String heightPlayer;
  final String soAo;
  final String viTri;
  Player(this.id, this.idCLB, this.name, this.imgURL, this.birth,
      this.heightPlayer, this.soAo, this.viTri);

  Player.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'],
        idCLB = json['idCLB'],
        name = json['name'],
        imgURL = json['imgURL'],
        birth = json['birth'],
        heightPlayer = json['heightPlayer'],
        soAo = json['soAo'],
        viTri = json['viTri'];
  Map<dynamic, dynamic> toJson() => {
        'id': id,
        'idCLB': idCLB,
        'name': name,
        'imgURL': imgURL,
        'birth': birth,
        'heightPlayer': heightPlayer,
        'soAo': soAo,
        'viTri': viTri,
      };
}
