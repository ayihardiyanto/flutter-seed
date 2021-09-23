import 'dart:convert';

import 'package:flutterseed/domain/entities/song_entity.dart';

class SongModel extends Song {
  SongModel({
    required String title,
    required String singer,
    required String album,
    required String image,
    bool? isPlaying,
  }) : super(
          singer: singer,
          title: title,
          isPlaying: isPlaying,
          album: album,
          image: image,
        );

  @override
  SongModel copyWith({
    String? title,
    String? singer,
    bool? isPlaying,
    String? album,
    String? image,
  }) {
    super.copyWith(isPlaying: isPlaying, singer: singer, title: title);
    return SongModel(
      title: title ?? title!,
      singer: singer ?? singer!,
      album: album ?? album!,
      image: image ?? image!,
      isPlaying: isPlaying,
    );
  }

  factory SongModel.fromMap(Map<String, dynamic> map) {
    return SongModel(
      title: map[SongModelStrings.title],
      singer: map[SongModelStrings.singer],
      album: map[SongModelStrings.album],
      image: map[SongModelStrings.image],
      isPlaying: false,
    );
  }

  factory SongModel.fromJson(String source) =>
      SongModel.fromMap(json.decode(source));
}

class SongModelStrings {
  static const String title = 'title';
  static const String singer = 'singer';
  static const String album = 'album';
  static const String image = 'image';
}
