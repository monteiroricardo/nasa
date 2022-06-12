import 'package:equatable/equatable.dart';

class SpaceMediaEntity extends Equatable {
  final String title;
  final String description;
  final String mediatype;
  final String mediaUrl;
  final String copyright;

  const SpaceMediaEntity({
    required this.title,
    required this.description,
    required this.mediatype,
    required this.mediaUrl,
    required this.copyright,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        mediatype,
        mediaUrl,
        copyright,
      ];
}
