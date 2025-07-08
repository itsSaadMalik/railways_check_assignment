class Penalty6 {
  String penaltyID = 'penalty_6';
  String clauseNo = '22(vi)';
  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "Penalty of Rs.500/- per rake per case shall be imposed if chemicals used are of unapproved brand or less than the Prescribed quantity in addition to deduction for the chemical as per Annexure-6 of ITT.";

  Penalty6({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty6 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
