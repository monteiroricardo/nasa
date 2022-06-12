import 'package:nasa/app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nasa/app/core/usecase/usecase.dart';
import 'package:nasa/app/features/domain/entities/space_media_entity.dart';
import 'package:nasa/app/features/domain/repositories/space_media_repository.dart';

class GetSpaceMediaUsecase extends Usecase<SpaceMediaEntity, DateTime> {
  final ISpaceMediaRepository repository;
  GetSpaceMediaUsecase(this.repository);
  @override
  Future<Either<Failure, SpaceMediaEntity>> call(DateTime params) async {
    return await repository.getSpaceMediaFromDate(params);
  }
}
