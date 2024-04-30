import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/anthropometry.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/check_anthropometry/check_anthropometry.dart';
import 'package:hepa/domain/usecases/get_anthropometry/get_anthropometry.dart';
import 'package:hepa/presentation/providers/usecases/check_anthropometry.dart';
import 'package:hepa/presentation/providers/usecases/get_anthropometry.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_anthropometies.g.dart';

@riverpod
class GetAnthropometries extends _$GetAnthropometries {
  @override
  dynamic build() {
    // TODO: implement build
    throw UnimplementedError();
  }

  Future<Anthropometry?> checkAnthropometry(
      {required double weight, required double height}) async {
    CheckAnthropometry checkAnthropometry =
        ref.read(checkAnthropometryProvider);
    var result = await checkAnthropometry(
        CheckAnthropometryParams(weight: weight, height: height));

    return switch (result) {
      Success(value: final anthropometry) => anthropometry,
      Failed(message: _) => null,
    };
  }

  Future<void> getAnthro() async {
    state = const AsyncLoading();
    GetAnthropometry getAnthropometry =  ref.read(getAnthropometryProvider);

    var result = await getAnthropometry(null);

     switch (result) {
       case Success(value: final data):
         state = AsyncData(data);
       case Failed(:final message):
         state = AsyncError(FlutterError(message), StackTrace.current);
         state = const AsyncData(null);
    };

}
}
