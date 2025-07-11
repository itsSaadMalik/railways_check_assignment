import 'package:railway_checks_assignment/core/utils/shared/helpers/http_methods_results.dart';
import 'package:railway_checks_assignment/core/utils/shared/helpers/http_response_handler.dart';
import 'package:railway_checks_assignment/features/score%20card/domain/data%20src/remote_data_src.dart';
import 'package:http/http.dart' as http;

class RemoteScoreCardDataSrcImpl implements RemoteDataSrc {
  final String remoteDatabaseUrl;
  final http.Client client;

  RemoteScoreCardDataSrcImpl({
    required this.remoteDatabaseUrl,
    required this.client,
  });
  @override
  Future<HttpMethodsResults> uploadData({required String data}) async {
    try {
      final response = await client.post(
        Uri.parse(remoteDatabaseUrl),
        headers: {'Content-Type': 'application/json'},
        body: data,
      );
      final results = await httpResponseHandler(res: response);
    } catch (e) {}
  }
}
