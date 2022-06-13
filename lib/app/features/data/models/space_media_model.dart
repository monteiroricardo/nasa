import 'package:nasa/app/features/domain/entities/space_media_entity.dart';

class SpaceMediaModel extends SpaceMediaEntity {
  const SpaceMediaModel({
    required String title,
    required String description,
    required String date,
    required String mediatype,
    required String mediaUrl,
    required String mediaUrlHD,
    required String serviceVersion,
    required String copyright,
  }) : super(
          title: title,
          description: description,
          mediatype: mediatype,
          mediaUrl: mediaUrl,
          copyright: copyright,
        );

  factory SpaceMediaModel.fromJson(Map<String, dynamic> json) =>
      SpaceMediaModel(
        title: json['title'],
        description: json['explanation'],
        mediatype: json['media_type'],
        mediaUrl: json['url'],
        copyright: json['copyright'],
        date: json['date'],
        mediaUrlHD: json['hdurl'],
        serviceVersion: json['service_version'],
      );
}
