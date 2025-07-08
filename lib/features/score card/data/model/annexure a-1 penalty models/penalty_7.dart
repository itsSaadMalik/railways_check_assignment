class Penalty7 {
  String penaltyID = 'penalty_7';
  String clauseNo = '22(vii)';

  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "A penalty of Rs.500/-per person will be Levied for the staff having improper uniform or for not having ID cards.";

  Penalty7({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty7 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
