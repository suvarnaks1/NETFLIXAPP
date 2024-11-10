import 'package:netflixapp/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage();
}
