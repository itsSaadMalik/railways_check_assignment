class Penalty3 {
  String penaltyID = 'penalty_3';
  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "In case of adverse remark on cleaning Quality and method by any inspecting official or in the event of any passenger complaint (including SMS based or Online) or in the event of non-rectification of any complain made by passengers/Rly employee, the contractor will be liable for a penalty of minimum Rs.3000/- or / and the compensation awarded to complainant in any court of law and / or in consumer court.";

  Penalty3({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty3 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
