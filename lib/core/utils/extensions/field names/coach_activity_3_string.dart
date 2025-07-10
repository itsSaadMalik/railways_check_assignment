import 'package:railway_checks_assignment/core/utils/enums/field%20names%20enums/Annexure%20A-9/activity_3_score_field_enum.dart';

extension CoachActivity3String on Activity3ScoreFields {
  String get fieldname {
    switch (this) {
      case Activity3ScoreFields.b1:
        return 'b1';
      case Activity3ScoreFields.b2:
        return 'b2';
      case Activity3ScoreFields.d1:
        return 'd1';
      case Activity3ScoreFields.d2:
        return 'd2';
    }
  }
}
