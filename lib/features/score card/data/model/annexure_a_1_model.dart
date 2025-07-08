import 'dart:convert';

import 'package:railway_checks_assignment/core/utils/enums/field%20names%20enums/annexure%20a-1/annexure_a_1_fieldnames_enums.dart';
import 'package:railway_checks_assignment/core/utils/extensions/field%20names/annexure_a_1_fieldnames_string.dart';
import 'package:railway_checks_assignment/features/score%20card/domain/entity/annexuer_a_1.dart';

class AnnexureA1Model extends AnnexureA1Entity {
  AnnexureA1Model({
    required super.agreementNumber,
    required super.agreementDate,
    required super.contractorName,
    required super.dateofInspecton,
    required super.nameOfDepot,
    required super.nameOfSupervisor,
    required super.trainNumber,
    required super.timeWorkStarted,
    required super.timeWorkCompleted,
    required super.totalTrainCoaches,
    required super.coachesAttended,
    required super.totalScoreObtained,
    required super.activity1,
    required super.activity2,
    required super.activity3,
    required super.activity4,
    required super.activity5,
  });
  factory AnnexureA1Model.fromMap(Map<String, dynamic> data) => AnnexureA1Model(
    agreementNumber:
        data[AnnexureA1FieldnamesEnums.agreementNumber.fieldname] ?? '',
    agreementDate:
        data[AnnexureA1FieldnamesEnums.agreementDate.fieldname] ??
        DateTime.now(),
    contractorName:
        data[AnnexureA1FieldnamesEnums.contractorName.fieldname] ?? '',
    dateofInspecton:
        data[AnnexureA1FieldnamesEnums.dateofInspecton.fieldname] ??
        DateTime.now(),
    nameOfDepot: data[AnnexureA1FieldnamesEnums.nameOfDepot.fieldname] ?? '',
    nameOfSupervisor:
        data[AnnexureA1FieldnamesEnums.nameOfSupervisor.fieldname] ?? '',
    trainNumber: data[AnnexureA1FieldnamesEnums.trainNumber.fieldname] ?? '',
    timeWorkStarted:
        data[AnnexureA1FieldnamesEnums.timeWorkStarted.fieldname] ??
        DateTime.now(),
    timeWorkCompleted:
        data[AnnexureA1FieldnamesEnums.timeWorkCompleted.fieldname] ??
        DateTime.now(),
    totalTrainCoaches:
        data[AnnexureA1FieldnamesEnums.totalTrainCoaches.fieldname] ?? 13,
    coachesAttended:
        data[AnnexureA1FieldnamesEnums.coachesAttended.fieldname] ?? 0,
    totalScoreObtained:
        data[AnnexureA1FieldnamesEnums.totalScoreObtained.fieldname] ?? 0,
    activity1: data[AnnexureA1FieldnamesEnums.activity1.fieldname] ?? [],
    activity2: data[AnnexureA1FieldnamesEnums.activity2.fieldname] ?? [],
    activity3: data[AnnexureA1FieldnamesEnums.activity3.fieldname] ?? [],
    activity4: data[AnnexureA1FieldnamesEnums.activity4.fieldname] ?? [],
    activity5: data[AnnexureA1FieldnamesEnums.activity5.fieldname] ?? [],
  );
  Map<String, dynamic> toMap() => {
    AnnexureA1FieldnamesEnums.agreementNumber.fieldname: agreementNumber,
    AnnexureA1FieldnamesEnums.agreementDate.fieldname: agreementDate,
    AnnexureA1FieldnamesEnums.contractorName.fieldname: contractorName,
    AnnexureA1FieldnamesEnums.dateofInspecton.fieldname: dateofInspecton,
    AnnexureA1FieldnamesEnums.nameOfDepot.fieldname: nameOfDepot,
    AnnexureA1FieldnamesEnums.nameOfSupervisor.fieldname: nameOfSupervisor,
    AnnexureA1FieldnamesEnums.trainNumber.fieldname: trainNumber,
    AnnexureA1FieldnamesEnums.timeWorkStarted.fieldname: timeWorkStarted,
    AnnexureA1FieldnamesEnums.timeWorkCompleted.fieldname: timeWorkCompleted,
    AnnexureA1FieldnamesEnums.totalTrainCoaches.fieldname: totalTrainCoaches,
    AnnexureA1FieldnamesEnums.coachesAttended.fieldname: coachesAttended,
    AnnexureA1FieldnamesEnums.totalScoreObtained.fieldname: totalScoreObtained,
    AnnexureA1FieldnamesEnums.activity1.fieldname: activity1,
    AnnexureA1FieldnamesEnums.activity2.fieldname: activity2,
    AnnexureA1FieldnamesEnums.activity3.fieldname: activity3,
    AnnexureA1FieldnamesEnums.activity4.fieldname: activity4,
    AnnexureA1FieldnamesEnums.activity5.fieldname: activity5,
  };

  factory AnnexureA1Model.fromJson(String source) =>
      AnnexureA1Model.fromMap(json.decode(source));
  @override
  bool operator ==(covariant AnnexureA1Model other) =>
      agreementNumber == other.agreementNumber;

  @override
  int get hashCode => agreementNumber.hashCode;
}
