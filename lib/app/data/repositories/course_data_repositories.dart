import 'package:meditation/app/constant/asset_image.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/data/model/course_model.dart';

List<Course> courses = [
  new Course(
      background: AppColors.softBlue,
      title: 'Basic',
      type: 'Course',
      image: AppImage.pumpkinface,
      duration: '3-10 Min',
      textColor: AppColors.textColor,
      onTap: () {},
      btnColor: AppColors.WHITE),
  new Course(
      image: AppImage.relaxation,
      background: AppColors.softOrange,
      title: 'Relaxation',
      type: 'Music',
      duration: '3-10 Min',
      onTap: () {},
      btnColor: AppColors.textColor,
      textColor: AppColors.WHITE),
];
