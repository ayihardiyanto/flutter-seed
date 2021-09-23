
import 'package:flutterseed/domain/entities/base_entity.dart';

class Song extends BaseEntity {
  final String title;
  final String singer;
  final String album;
  final String image;
  final bool? isPlaying;
  Song({
    required this.title,
    required this.singer,
    required this.album,
    required this.image,
    this.isPlaying = false,
  });
  @override
  List<Object?> get props => [title, singer, isPlaying];

  @override
  Song copyWith({
    String? title,
    String? singer,
    String? album,
    String? image,
    bool? isPlaying,
  }) {
    return Song(
      title: title ?? this.title,
      singer: singer ?? this.singer,
      album: album ?? this.album,
      image: image ?? this.image,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
}
