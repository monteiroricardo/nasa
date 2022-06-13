import 'dart:convert';

import 'package:nasa/app/core/errors/exceptions.dart';
import 'package:nasa/app/core/http_client/http_client.dart';
import 'package:nasa/app/core/utils/converters/date_to_string_converter.dart';
import 'package:nasa/app/core/utils/keys/nasa_api_key.dart';
import 'package:nasa/app/features/data/datasources/endpoints/nasa_endpoints.dart';
import 'package:nasa/app/features/data/datasources/space_media_datasource.dart';
import 'package:nasa/app/features/data/models/space_media_model.dart';

class SpaceMediaDatasourceImpl implements ISpaceMediaDatasource {
  final HttpClient client;
  SpaceMediaDatasourceImpl(this.client);

  @override
  Future<SpaceMediaModel> getSpaceMediaFromDate(DateTime date) async {
    final response = await client.get(NasaEndpoints.apod(
        NasaApiKey.apiKey, DateToStringConverter().convert(date)));

    if (response.statusCode == 200) {
      return SpaceMediaModel.fromJson(jsonDecode(response.data));
    } else {
      throw ServerException();
    }
  }
}
