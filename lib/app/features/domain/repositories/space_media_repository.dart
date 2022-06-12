import 'package:dartz/dartz.dart';
import 'package:nasa/app/core/errors/failures.dart';
import 'package:nasa/app/features/domain/entities/space_media_entity.dart';

abstract class ISpaceMediaRepository {
  Future<Either<Failure, SpaceMediaEntity>> getSpaceMediaFromDate(
      DateTime date);
}
