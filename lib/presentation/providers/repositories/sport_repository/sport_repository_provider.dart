import 'package:hepa/data/api/hepa_sport.dart';
import 'package:hepa/data/repositories/sport_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sport_repository_provider.g.dart';

@riverpod
SportRepository sportRepository(SportRepositoryRef ref) => HepaSport();
