import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/Main_Failures/Main_Failure.dart';
import 'package:netflix_clone/domain/downloads/modals/downloads.dart';

abstract class IDownloads{
Future<Either<MainFailure,List<Downloads>>> getDownloadsImages();
}