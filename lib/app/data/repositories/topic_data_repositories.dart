import 'package:get/get.dart';
import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/data/model/topic_model.dart';
import 'package:meditation/app/modules/remainder/bindings/remainder_binding.dart';
import 'package:meditation/app/modules/remainder/views/remainder_view.dart';

List<TopicModel> topics = [
  new TopicModel(
    text: 'Reduce Stress',
    image: AppImage.reduceStress,
    onTap: () {
      Get.to(() => RemainderView(), binding: RemainderBinding());
    },
    color: AppColors.reduceStressbackground,
    code: 0,
  ),
  new TopicModel(
    text: 'Improve Permormance',
    image: AppImage.officeWork,
    onTap: () {},
    color: AppColors.improvePerformance,
    code: 0,
  ),
  new TopicModel(
    text: 'Increase Happiness',
    image: AppImage.increaseHappinessEmoji,
    onTap: () {},
    color: AppColors.increasehappyness,
    code: 1,
  ),
  new TopicModel(
    text: 'Reduce Axienty',
    image: AppImage.ladything,
    onTap: () {},
    color: AppColors.softgreen,
    code: 1,
  ),
  new TopicModel(
    text: 'Personal Growth',
    image: AppImage.mountainClimb,
    onTap: () {},
    color: AppColors.textColor,
    code: 0,
  ),
  new TopicModel(
    text: 'Better sleep',
    image: AppImage.sleeping,
    onTap: () {},
    color: AppColors.primaryCOLOR,
    code: 0,
  ),
  new TopicModel(
    text: 'Improve Permormance',
    image: AppImage.officeWork,
    onTap: () {},
    color: AppColors.improvePerformance,
    code: 1,
  ),
  new TopicModel(
    text: 'Increase Happiness',
    image: AppImage.increaseHappinessEmoji,
    onTap: () {},
    color: AppColors.increasehappyness,
    code: 1,
  ),
  new TopicModel(
    text: 'Reduce Stress',
    image: AppImage.reduceStress,
    onTap: () {},
    color: AppColors.reduceStressbackground,
    code: 0,
  ),
  new TopicModel(
    text: 'Improve Permormance',
    image: AppImage.officeWork,
    onTap: () {},
    color: AppColors.improvePerformance,
    code: 0,
  ),
  // new TopicModel(
  //   text: 'Reduce Stress',
  //   image: AppImage.reduceStress,
  //   onTap: () {},
  //   color: AppColors.softpurpal,
  // ),
  // new TopicModel(
  //   text: 'Reduce Stress',
  //   image: AppImage.reduceStress,
  //   onTap: () {},
  //   color: AppColors.reduceStressbackground,
  // ),
  // new TopicModel(
  //   text: 'Reduce Stress',
  //   image: AppImage.reduceStress,
  //   onTap: () {},
  //   color: AppColors.reduceStressbackground,
  // ),
  // new TopicModel(
  //   text: 'Reduce Stress',
  //   image: AppImage.reduceStress,
  //   onTap: () {},
  //   color: AppColors.reduceStressbackground,
  // ),
];
