import '../../../../constants/app_texts.dart';

class ReportModel {
  final String rep;
  final int id;

  ReportModel({
    required this.rep,
    required this.id,
  });

  static List<ReportModel> model = [
    ReportModel(rep: AppTexts.rep1, id: 1),
    ReportModel(rep: AppTexts.rep2, id: 2),
    ReportModel(rep: AppTexts.rep3, id: 3),
    ReportModel(rep: AppTexts.rep4, id: 4),
    ReportModel(rep: AppTexts.rep5, id: 5),
    ReportModel(rep: AppTexts.rep6, id: 6),
    ReportModel(rep: AppTexts.rep7, id: 7),
    ReportModel(rep: AppTexts.rep8, id: 8),
  ];
}
