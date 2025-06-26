import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/sport.dart';
import 'package:hepa/domain/usecases/get_sports/get_sports.dart';
import 'package:hepa/domain/usecases/post_activities_sport/post_activities_sport.dart';
import 'package:hepa/domain/usecases/post_activities_sport/post_activities_sport_params.dart';
import 'package:hepa/presentation/providers/usecases/get_sport.dart';
import 'package:hepa/presentation/providers/usecases/post_activities_sport.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sport_provider.g.dart';

@riverpod
class Sports extends _$Sports {
  @override
  FutureOr<List<Sport>> build() async {
    GetSports getSports = ref.read(getSportsProvider);
    var result = await getSports(null);
    return switch (result) {
      Success(value: final sports) => sports,
      Failed(message: _) => const []
    };
  }

  Future<void> addActivitiesSport(
      {required String name,
      required String duration,
      required String tglInput}) async {
    PostActivitiesSport postActivitiesSport =
        await ref.read(postActivitiesSportProvider);
    var result = postActivitiesSport(PostActivitiesSportParams(
        name: name, duration: duration, tglInput: tglInput));
    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);

      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData([]);
    }
  }
}

// Future<List<Sport>> getSportList(GetSportListRef ref) async {
//   GetSports getSports = ref.read(getSportsProvider);

//   var result = await getSports(null);
//   return switch (result) {
//     Success(value: final sports) => sports,
//     Failed(message: _) => const []
//   };
// }
