// ignore: depend_on_referenced_packages
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/i_downloaded_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    
    
    on<_GetDownloadsImage>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            downloadsOrSuccessOption: none(),
          ),
        );
        final Either<MainFailure, List<Downloads>> downloadsOptions =
            await _downloadsRepo.getDownloadsImages();
            log(downloadsOptions.toString());
        emit(
          downloadsOptions.fold(
            (failure) => state.copyWith(
              isLoading: false,
              downloadsOrSuccessOption: some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsOrSuccessOption: some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
