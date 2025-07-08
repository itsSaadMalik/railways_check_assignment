import 'package:railway_checks_assignment/core/utils/constants/auth_constants.dart';
import 'package:railway_checks_assignment/features/auth/domain/data%20src/cache_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheUserDataSrcImpl implements CacheUserDataSrc {
  final SharedPreferences sharedPreferences;

  CacheUserDataSrcImpl({required this.sharedPreferences});
  @override
  Future<bool> cacheUserData() {
    // TODO: implement cacheUserData
    throw UnimplementedError();
  }

  @override
  Future<bool> saveLogin() async {
    try {
      await sharedPreferences.setBool(AuthConstants.loginKey, true);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> clearCacheData() async {
    try {
      return await sharedPreferences.clear();
    } catch (e) {
      return false;
    }
  }
}
