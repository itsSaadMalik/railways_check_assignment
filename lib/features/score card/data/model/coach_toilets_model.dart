import 'package:flutter/foundation.dart';
import 'package:railway_checks_assignment/core/utils/enums/toilet_number.dart';
import 'package:railway_checks_assignment/core/utils/extensions/toilet_number_string.dart';

@immutable
class CoachActivity1Model {
  final int toilet1;
  final int toilet2;
  final int toilet3;
  final int toilet4;
  final int coachNumber;
  final String coachID;

  const CoachActivity1Model({
    required this.toilet1,
    required this.toilet2,
    required this.toilet3,
    required this.toilet4,
    required this.coachNumber,
    required this.coachID,
  });

  factory CoachActivity1Model.fromMap(Map<String, dynamic> data) =>
      CoachActivity1Model(
        toilet1: data[ToiletNumber.t1.fieldname] ?? 0,
        toilet2: data[ToiletNumber.t2.fieldname] ?? 0,
        toilet3: data[ToiletNumber.t3.fieldname] ?? 0,
        toilet4: data[ToiletNumber.t4.fieldname] ?? 0,
        coachNumber: data['coachNumber'] ?? 0,
        coachID: data['coachID'] ?? 'na',
      );

  Map<String, dynamic> toMap() => {
    ToiletNumber.t1.fieldname: toilet1,
    ToiletNumber.t2.fieldname: toilet2,
    ToiletNumber.t3.fieldname: toilet3,
    ToiletNumber.t4.fieldname: toilet4,
    'coachNumber': coachNumber,
    'coachID': coachID,
  };
  @override
  bool operator ==(covariant CoachActivity1Model other) =>
      coachID == other.coachID;

  @override
  int get hashCode => coachID.hashCode;
}
