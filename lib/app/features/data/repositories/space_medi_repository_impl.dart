import 'package:nasa/app/core/errors/exceptions.dart';
import 'package:nasa/app/features/data/datasources/space_media_datasource.dart';
import 'package:nasa/app/features/domain/entities/space_media_entity.dart';
import 'package:nasa/app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nasa/app/features/domain/repositories/space_media_repository.dart';

class SpaceMediRepositoryImpl extends ISpaceMediaRepository {
  final ISpaceMediaDatasource datasource;

  SpaceMediRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, SpaceMediaEntity>> getSpaceMediaFromDate(
      DateTime date) async {
    try {
      final result = await datasource.getSpaceMediaFromDate(date);
      return Right(result);
    } on ServerException catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }
}
