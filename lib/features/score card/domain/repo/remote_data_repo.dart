import 'package:railway_checks_assignment/core/utils/shared/helpers/http_methods_results.dart';

abstract class RemoteDataRepository {
  Future<HttpMethodsResults> submitStationActivities({required String data});
  Future<HttpMethodsResults> submitPlatformActivities({required String data});
  Future<HttpMethodsResults> reviewStationActivitiesScorecards();
  Future<HttpMethodsResults> reviewPlatformActivitiesScorecards();
}
