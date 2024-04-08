import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../utils/constants/app_navigators.dart';
import '../../../../../utils/constants/app_text_style.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/extension/sized_box.dart';
import '../../../../../utils/extension/sizer.dart';
import '../../controller/radio_cubit.dart';
import '../../model/report_model.dart';
import '../modal/home_report_success.dart';
import '../../../../widgets/global_button_widget.dart';
import '../../../../widgets/global_close_button.dart';

class HomeReportWidget extends StatefulWidget {
  const HomeReportWidget({super.key});

  @override
  State<HomeReportWidget> createState() => _HomeReportWidgetState();
}

class _HomeReportWidgetState extends State<HomeReportWidget> {
  @override
  Widget build(BuildContext context) {
    RadioCubit cubit = context.watch<RadioCubit>();
    List<ReportModel> report = ReportModel.model;
    return SafeArea(
      child: Column(
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalCloseButton(),
            ],
          ),
          10.h,
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppTexts.chooseBasket),
            ],
          ),
          SizedBox(
            height: 350,
            child: ListView.builder(
              itemCount: report.length,
              itemBuilder: (context, index) {
                final datas = report[index];
                return RadioMenuButton(
                  value: datas.id,
                  groupValue: cubit.groupValue,
                  onChanged: (v) {
                    cubit.chooseRep(v);
                  },
                  child: SizedBox(
                    width: context.w * 0.8,
                    child: Text(datas.rep),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GlobalButton(
                  onPressed: () {
                    AppNavigators.pop(context);
                    repSuccess(context);
                  },
                  buttonWidget: Text(
                    AppTexts.send,
                    style: AppTextStyle.white16,
                  ),
                  // style: ,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
