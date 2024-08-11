import 'package:flutter/material.dart';

class Player{

  Icon icon;
  String name= "";
  int score = 0;
  bool isPlayer1;

  Player({required this.icon,required this.name,this.score=0,this.isPlayer1=false});

  Map<String, dynamic> toJson() {
    return {
      'icon': icon.icon!.codePoint,
      'iconColor': icon.color?.value,
      'iconSize': icon.size,
      'name': name,
      'score': score,
      'isPlayer1': isPlayer1,
    };
  }

  static Player fromJson(Map<String, dynamic> json) {
    return Player(
      icon: Icon(
        IconData(json['icon'], fontFamily: 'MaterialIcons'),
        color: json['iconColor'] != null ? Color(json['iconColor']) : null,
        size: json['iconSize']?.toDouble(),
      ),
      name: json['name'] as String,
      score: json['score'] as int,
      isPlayer1: json['isPlayer1'] as bool,
    );
  }

  Player copyWith({
    Icon? icon,
    String? name,
    int? score,
    bool? isPlayer1,
  }) {
    return Player(
      icon: icon ?? this.icon,
      name: name ?? this.name,
      score: score ?? this.score,
      isPlayer1: isPlayer1 ?? this.isPlayer1,
    );
  }
}