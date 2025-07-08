import 'package:railway_checks_assignment/core/utils/enums/coach_number.dart';

extension CoachNumberString on CoachNumber {
  String get fieldname {
    switch (this) {
      case CoachNumber.coach1:
        return 'coach_1';
      case CoachNumber.coach2:
        return 'coach_2';
      case CoachNumber.coach3:
        return 'coach_3';
      case CoachNumber.coach4:
        return 'coach_4';
      case CoachNumber.coach5:
        return 'coach_5';
      case CoachNumber.coach6:
        return 'coach_6';
      case CoachNumber.coach7:
        return 'coach_7';
      case CoachNumber.coach8:
        return 'coach_8';
      case CoachNumber.coach9:
        return 'coach_9';
      case CoachNumber.coach10:
        return 'coach_10';
      case CoachNumber.coach11:
        return 'coach_11';
      case CoachNumber.coach12:
        return 'coach_12';
      case CoachNumber.coach13:
        return 'coach_13';
    }
  }
}
