class PenaltyModel {
  final String penaltyID;
  final int fineAmount;
  final List<int> coaches;

  final String? description;

  PenaltyModel({
    required this.fineAmount,
    required this.coaches,
    required this.description,
    required this.penaltyID,
  });

  int get total => fineAmount * (coaches.length);
  factory PenaltyModel.fromJson(Map<String, dynamic> data) => PenaltyModel(
    fineAmount: data['fineAmount'],
    coaches: data['coaches'],
    description: data['description'],
    penaltyID: data['penaltyID'],
  );
  Map<String, dynamic> toMap() => {
    'fineAmount': fineAmount,
    'coaches': coaches,
    'description': description,
    'penaltyID': penaltyID,
  };
  @override
  bool operator ==(covariant PenaltyModel other) =>
      penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
