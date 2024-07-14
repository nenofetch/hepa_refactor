import 'package:flutter/foundation.dart';
import 'package:hepa/domain/entities/bmr.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/check_bmr/check_bmr.dart';
import 'package:hepa/domain/usecases/detail_bmr/detail_bmr.dart';
import 'package:hepa/domain/usecases/get_bmr/get_bmr.dart';
import 'package:hepa/presentation/providers/usecases/check_bmr.dart';
import 'package:hepa/presentation/providers/usecases/detail_bmr.dart';
import 'package:hepa/presentation/providers/usecases/get_bmr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bmr_provider.g.dart';

@riverpod
class Bmrs extends _$Bmrs {
  @override
  FutureOr<BMR?> build() async {
    GetBmr getBmr = ref.read(getBmrProvider);

    var result = await getBmr(null);

    switch (result) {
      case Success(value: final bmr):
        return bmr;
      case Failed(message: _):
        return null;
    }
  }

  Future<void> checkBMR({
    required double weight,
    required double height,
    required String activities,
  }) async {
    state = AsyncLoading();

    CheckBmr checkBmr = ref.read(checkBmrProvider);

    var result = await checkBmr(
        CheckBmrParams(weight: weight, height: height, activities: activities));

    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);
      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = AsyncData(null);
    }
  }


  Future<List<BMR>> detailBMR() async {
    DetailBmr detailBmr = ref.read(detailBmrProvider);

    var result = await detailBmr(null);

    switch (result) {
      case Success(value: final bmr):
        return bmr;
      case Failed(message: _):
        return [];
    }
  }
}
