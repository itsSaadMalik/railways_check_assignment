import 'dart:convert';

import 'package:railway_checks_assignment/core/utils/enums/field%20names%20enums/Annexure%20A-9/annexure_09_fieldnames.dart';
import 'package:railway_checks_assignment/core/utils/extensions/field%20names/annexure_09_fieldname_string.dart';
import 'package:railway_checks_assignment/features/score%20card/data/model/coach_activity_3_model.dart';
import 'package:railway_checks_assignment/features/score%20card/data/model/coach_toilets_model.dart';
import 'package:railway_checks_assignment/features/score%20card/domain/entity/annexure_09_of_itt_entity.dart';

class Annexure09IttModel extends Annexuer09ITTCardEntity {
  Annexure09IttModel({
    required super.wOnumber,
    required super.titleOfWork,
    required super.contractorName,
    required super.nameOfSupervisor,
    required super.designation,
    required super.dateofInspecton,
    required super.trainNumber,
    required super.trainArrivalTime,
    required super.trainDepartureTime,
    // here we asssume there are 13 coaches by deafult if not mentioned
    required super.totalTrainCoaches,
    required super.coachesAttended,
    required super.totalScoreObtained,
    required super.activity1,
    required super.activity2,
    required super.activity3,
    required super.activity4,
  });
  Annexure09IttModel copywith({
    String? wOnumber,
    String? titleOfWork,
    String? contractorName,
    String? nameOfSupervisor,
    String? designation,
    DateTime? dateofInspecton,

    String? trainNumber,
    DateTime? trainArrivalTime,
    DateTime? trainDepartureTime,
    int? totalTrainCoaches,
    int? coachesAttended,
    double? totalScoreObtained,
    List<CoachActivity1Model?>? activity1,
    List<String>? activity2,
    List<CoachActivity3Model?>? activity3,
    List<String>? activity4,
  }) => Annexure09IttModel(
    wOnumber: wOnumber ?? this.wOnumber,
    titleOfWork: titleOfWork ?? this.titleOfWork,
    contractorName: contractorName ?? this.contractorName,
    nameOfSupervisor: nameOfSupervisor ?? this.nameOfSupervisor,
    designation: designation ?? this.designation,
    dateofInspecton: dateofInspecton ?? this.dateofInspecton,
    trainNumber: trainNumber ?? this.trainNumber,
    trainArrivalTime: trainArrivalTime ?? this.trainArrivalTime,
    trainDepartureTime: trainDepartureTime ?? this.trainDepartureTime,
    totalTrainCoaches: totalTrainCoaches ?? this.totalTrainCoaches,
    coachesAttended: coachesAttended ?? this.coachesAttended,
    totalScoreObtained: totalScoreObtained ?? this.totalScoreObtained,
    activity1: activity1 ?? this.activity1,
    activity2: activity2 ?? this.activity2,
    activity3: activity3 ?? this.activity3,
    activity4: activity4 ?? this.activity4,
  );
  factory Annexure09IttModel.fromMap(Map<String, dynamic> data) {
    final activity1Data =
        (data[Annexure09FieldnamesEnum.activity1.feildname] != null)
        ? (data[Annexure09FieldnamesEnum.activity1.feildname]
                  as List<Map<String, dynamic>>)
              .map((e) => CoachActivity1Model.fromMap(data))
              .toList()
        : [null];
    final activityData2 =
        (data[Annexure09FieldnamesEnum.activity3.feildname] != null)
        ? (data[Annexure09FieldnamesEnum.activity3.feildname]
                  as List<Map<String, dynamic>>)
              .map((e) => CoachActivity3Model.fromMap(e))
              .toList()
        : [null];
    return Annexure09IttModel(
      wOnumber: data[Annexure09FieldnamesEnum.wOnumber.feildname] ?? '',
      titleOfWork: data[Annexure09FieldnamesEnum.titleOfWork.feildname] ?? '',
      contractorName:
          data[Annexure09FieldnamesEnum.contractorName.feildname] ?? '',
      nameOfSupervisor:
          data[Annexure09FieldnamesEnum.nameOfSupervisor.feildname] ?? '',
      designation: data[Annexure09FieldnamesEnum.designation.feildname] ?? '',
      dateofInspecton:
          data[Annexure09FieldnamesEnum.dateofInspecton.feildname] ??
          DateTime.now(),
      trainNumber: data[Annexure09FieldnamesEnum.trainNumber.feildname] ?? '',
      trainArrivalTime:
          data[Annexure09FieldnamesEnum.trainArrivalTime.feildname] ??
          DateTime.now(),
      trainDepartureTime:
          data[Annexure09FieldnamesEnum.trainDepartureTime.feildname] ??
          DateTime.now(),
      totalTrainCoaches:
          data[Annexure09FieldnamesEnum.totalTrainCoaches.feildname] ?? 11,
      coachesAttended:
          data[Annexure09FieldnamesEnum.coachesAttended.feildname] ?? 0,
      totalScoreObtained:
          data[Annexure09FieldnamesEnum.totalScoreObtained.feildname] ?? 0.0,
      activity1: activity1Data,
      activity2: data[Annexure09FieldnamesEnum.activity2.feildname] ?? [],
      activity3: activityData2,
      activity4: data[Annexure09FieldnamesEnum.activity4.feildname] ?? [],
    );
  }

  Map<String, dynamic> toMap() => {
    Annexure09FieldnamesEnum.wOnumber.feildname: wOnumber,
    Annexure09FieldnamesEnum.titleOfWork.feildname: titleOfWork,
    Annexure09FieldnamesEnum.contractorName.feildname: contractorName,
    Annexure09FieldnamesEnum.nameOfSupervisor.feildname: nameOfSupervisor,
    Annexure09FieldnamesEnum.designation.feildname: designation,
    Annexure09FieldnamesEnum.dateofInspecton.feildname: dateofInspecton,
    Annexure09FieldnamesEnum.trainNumber.feildname: trainNumber,
    Annexure09FieldnamesEnum.trainArrivalTime.feildname: trainArrivalTime,
    Annexure09FieldnamesEnum.trainDepartureTime.feildname: trainDepartureTime,
    Annexure09FieldnamesEnum.totalTrainCoaches.feildname: totalTrainCoaches,
    Annexure09FieldnamesEnum.coachesAttended.feildname: coachesAttended,
    Annexure09FieldnamesEnum.totalScoreObtained.feildname: totalScoreObtained,
    Annexure09FieldnamesEnum.activity1.feildname: activity1.map(
      (e) => e?.toMap(),
    ),
    Annexure09FieldnamesEnum.activity2.feildname: activity2,
    Annexure09FieldnamesEnum.activity3.feildname: activity3.map(
      (e) => e?.toMap(),
    ),
    Annexure09FieldnamesEnum.activity4.feildname: activity4,
  };

  factory Annexure09IttModel.fromJson(String source) =>
      Annexure09IttModel.fromMap(json.decode(source));

  String get toJson => json.encode(toMap());
}
