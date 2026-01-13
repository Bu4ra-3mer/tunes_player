import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;

  const TuneModel({
    required this.color,
    required this.sound,
  });

  static final AudioPlayer _player = AudioPlayer();

  void playSound() async {
    await _player.stop();
    await _player.play(AssetSource(sound));
  }
}
