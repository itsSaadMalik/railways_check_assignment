class Penalty8 {
  String penaltyID = 'penalty_8';
  String clauseNo = '22(viii)';

  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "If the short deployment of staff is noticed/recorded, deduction shall be as per daily wages (prevailing rate) for short deployment plus suitable penalty of Rs.1000/- for each short deployment.";

  Penalty8({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty8 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
