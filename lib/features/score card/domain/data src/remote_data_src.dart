import 'package:railway_checks_assignment/core/utils/shared/helpers/http_methods_results.dart';

abstract class RemoteDataSrc {
  Future<HttpMethodsResults> uploadData();
}
