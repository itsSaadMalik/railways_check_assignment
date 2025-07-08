import 'package:railway_checks_assignment/core/utils/enums/toilet_number.dart';

extension ToiletNumberString on ToiletNumber {
  String get fieldname {
    switch (this) {
      case ToiletNumber.t1:
        return 'toilet_1';
      case ToiletNumber.t2:
        return 'toilet_2';
      case ToiletNumber.t3:
        return 'toilet_3';
      case ToiletNumber.t4:
        return 'toilet_4';
    }
  }
}
