import 'package:ecommmerce/utils/constants/app_images.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';

import '../../features/authentication/on_boarding/models/on_boarding.model.dart';

List<OnBoardingModel> onboardingList = [
  OnBoardingModel(
    title: AppTexts.onBoardingTitleOne,
    image: AppImages.onBoarding_one,
    body: AppTexts.onBoardingBodyOne,
  ),
  OnBoardingModel(
    title: AppTexts.onBoardingTitleTwo,
    image: AppImages.onBoarding_two,
    body: AppTexts.onBoardingBodyTwo,
  ),
  OnBoardingModel(
    title: AppTexts.onBoardingTitleThree,
    image: AppImages.onBoarding_three,
    body: AppTexts.onBoardingBodyThree,
  ),
];
