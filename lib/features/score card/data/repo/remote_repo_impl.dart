import 'package:railway_checks_assignment/core/utils/shared/helpers/http_methods_results.dart';
import 'package:railway_checks_assignment/features/score%20card/data/data%20src/remote_score_card_data_src_impl.dart';
import 'package:railway_checks_assignment/features/score%20card/domain/repo/remote_data_repo.dart';

class RemoteRepoImpl implements RemoteDataRepository {
  final RemoteScoreCardDataSrcImpl remoteScoreCardDataSrcImpl;

  RemoteRepoImpl({required this.remoteScoreCardDataSrcImpl});
  @override
  Future<HttpMethodsResults> submitStationActivities({
    required String data,
  }) async {
    return await remoteScoreCardDataSrcImpl.uploadData(data: data);
  }

  @override
  Future<HttpMethodsResults> reviewPlatformActivitiesScorecards() {
    // TODO: implement reviewPlatformActivitiesScorecards
    throw UnimplementedError();
  }

  @override
  Future<HttpMethodsResults> reviewStationActivitiesScorecards() {
    // TODO: implement reviewStationActivitiesScorecards
    throw UnimplementedError();
  }

  @override
  Future<HttpMethodsResults> submitPlatformActivities({required String data}) {
    // TODO: implement submitPlatformActivities
    throw UnimplementedError();
  }
}
