import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_poinds.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/downloads/i_downloaded_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        // final List<Downloads> downloadsList = [];
        // for (final raw in response.data) {
        //   downloadsList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        // }
        log(downloadsList.toString());
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clintFailure());
    }
  }
}
