import '../../features/home/domain/entities/smoking_entity.dart';
import '../utils/constants/app/app_const.dart';
import '../utils/constants/asset_paths/images_const.dart';

class SmokingLists {
  static List<String> get images => [
        ImagesConst.instance.vozol10KForestBerry,
        ImagesConst.instance.vozol5KBlueRazz,
        ImagesConst.instance.vozol10KForestBerry,
        ImagesConst.instance.cigarette,
      ];

  static List<SmokingEntity> get smokings => [
        SmokingEntity(
          id: '1',
          name: 'Vozol Forest Berry',
          image: ImagesConst.instance.vozol10KForestBerry,
          capacity: 10000,
          price: 45,
          nicotineValue: 5,
          dailyLimit: 400,
          dailyUsed: 200,
          type: AppConst.vape,
        ),
        SmokingEntity(
          id: '2',
          name: 'Cigarette',
          image: ImagesConst.instance.cigarette,
          capacity: 24,
          price: 2,
          nicotineValue: 15,
          dailyLimit: 24,
          dailyUsed: 12,
          type: AppConst.cigarette,
        ),
        SmokingEntity(
          id: '3',
          name: 'Vozol Blue Razz',
          image: ImagesConst.instance.vozol5KBlueRazz,
          capacity: 5000,
          price: 30,
          nicotineValue: 5,
          dailyLimit: 400,
          dailyUsed: 200,
          type: AppConst.vape,
        ),
        SmokingEntity(
          id: '4',
          name: 'Vozol Mango Peach',
          image: ImagesConst.instance.vozol5KMangoPeach,
          capacity: 5000,
          price: 30,
          nicotineValue: 5,
          dailyLimit: 400,
          dailyUsed: 200,
          type: AppConst.vape,
        ),
      ];
}
