import '../../../../core/managers/network/app_network_manager.dart';
import '../../domain/enum/periodic_report_type.dart';
import '../models/periodic_report.dart';
import '../models/periodic_report_model.dart';
import 'report_remote_data_source.dart';

class ReportRemoteDataSourceImpl implements ReportRemoteDataSource {
  ReportRemoteDataSourceImpl({required AppNetworkManager network})
      : _network = network;

  final AppNetworkManager _network;

  @override
  Future<PeriodicReportModel> periodicReport(PeriodicReportType params) async {
    return const PeriodicReportModel(
      data: [
        PeriodicReport(
          title: 'Health Status',
          description:
              '- **Cigarette Consumption:** Smoking 14 cigarettes per week equates to an average of approximately 2 cigarettes per day.\n* **Vape Usage:** Puffing from a vape 1070 times per week equates to approximately 153 puffs per day.\n* **Carbon Monoxide (CO) Exposure:** The amount of CO you inhaled from cigarettes is relatively low (1.4 mg). However, even small amounts of CO can affect your heart and lungs.\n* **Long-Term Health Effects:** Smoking for 6 years has increased your risk of developing several chronic health conditions, including cardiovascular disease, COPD, and cancer.\n\n',
        ),
        PeriodicReport(
            title: 'Target Goals',
            description:
                '* **Reduce Cigarettes to 15 Per Day:** This is a significant reduction but still within the range of moderate smoking.\n* **Reduce Vape Puffs to 246 Per Day:** This reduction is relatively moderate and may help ease the transition to quitting.\n* **Quit All Smoking by September 14, 2024:** Setting a long-term goal provides motivation but allows for gradual progress.\n\n'),
        PeriodicReport(
          title: 'Smoking Habit',
          description:
              '**Cigarette Smoking:**\n\n* Number smoked: 14\n* CO intake: 1.4 mg\n* Consumption: 2.3 cigarettes per day (on average)\n\n**Vape Puffing:**\n\n* Number of puffs: 1070\n* CO intake: N/A (vapes do not produce carbon monoxide)\n* Consumption: 153 puffs per day (on average)\n\n**Additional Information:**\n\n* Duration of smoking: 6 years\n* Quit attempts: 2\n* Weight: 105 kg\n* Height: 173 cm\n* Smoking goals:\n\n    * Reduce cigarettes to 15 per day\n    * Reduce puffs to 246 per day\n    * Quit completely by September 14, 2024\n\n**Smoking Intensity Index:**\n\n**Cigarettes:**\n\n* Light smoker (<10 cigarettes per day)\n* Moderate smoker (10-24 cigarettes per day)\n* Heavy smoker (>24 cigarettes per day)\n\nBased on your average daily consumption, you currently classify as a light cigarette smoker.\n\n**Vape Puffing:**\n\n* Light vaper (<100 puffs per day)\n* Moderate vaper (100-249 puffs per day)\n* Heavy vaper (>249 puffs per day)\n\nBased on your average daily consumption, you currently classify as a moderate vaper.',
        ),
      ],
    );
  }
}
