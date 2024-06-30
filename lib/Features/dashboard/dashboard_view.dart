import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Features/dashboard/dashboardViewModel.dart';
import 'package:weverefy/Features/dashboard/disputes/disputes_view.dart';
import 'package:weverefy/Features/dashboard/history/history_view.dart';
import 'package:weverefy/Features/dashboard/home/home_view.dart';
import 'package:weverefy/Features/dashboard/profile/profile_view.dart';
import 'package:weverefy/Features/dashboard/rewards/reward_view.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';
import 'package:weverefy/assets/app_image.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
        viewModelBuilder: () => DashboardViewModel(),
        onViewModelReady: (viewModel) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            viewModel.setIndex(0);
          });
        },
        builder: (_, viewModel, __) => Scaffold(
              backgroundColor: Colors.transparent,
              body: PageTransitionSwitcher(
                transitionBuilder:
                    (child, primaryAnimation, secondaryAnimation) =>
                        FadeTransition(opacity: primaryAnimation, child: child),
                child: Container(
                    key: ValueKey<int>(viewModel.currentIndex),
                    child: _getViewForIndex(viewModel.currentIndex)),
              ),
              bottomNavigationBar: BottomNavigationBar(
                  elevation: 10,
                  currentIndex: viewModel.currentIndex,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: AppColors.white,
                  selectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.w500, fontFamily: AppFonts.aeonik),
                  selectedItemColor: AppColors.primary,
                  unselectedItemColor: AppColors.grey400,
                  unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.w500, fontFamily: AppFonts.aeonik),
                  onTap: viewModel.setIndex,
                  items: [
                    BottomNavigationBarItem(
                        label: 'Home',
                        icon: ImageView(
                            imageConfig: ImageConfig(
                                imageURL: AppImage.house,
                                imageType: ImageType.svg,
                                color: viewModel.currentIndex == 0
                                    ? AppColors.primary
                                    : AppColors.grey400))),
                    BottomNavigationBarItem(
                        label: 'Rewards',
                        icon: ImageView(
                            imageConfig: ImageConfig(
                                imageType: ImageType.svg,
                                imageURL: AppImage.reward,
                                color: viewModel.currentIndex == 1
                                    ? AppColors.primary
                                    : AppColors.grey400))),
                    BottomNavigationBarItem(
                        label: 'Disputes',
                        icon: ImageView(
                            imageConfig: ImageConfig(
                                imageType: ImageType.svg,
                                imageURL: AppImage.shield,
                                color: viewModel.currentIndex == 2
                                    ? AppColors.primary
                                    : AppColors.grey400))),
                    BottomNavigationBarItem(
                        label: 'History',
                        icon: ImageView(
                            imageConfig: ImageConfig(
                                imageType: ImageType.svg,
                                imageURL: AppImage.clock,
                                color: viewModel.currentIndex == 3
                                    ? AppColors.primary
                                    : AppColors.grey400))),
                    BottomNavigationBarItem(
                        label: 'Profile',
                        icon: ImageView(
                            imageConfig: ImageConfig(
                                imageType: ImageType.svg,
                                imageURL: AppImage.profile,
                                color: viewModel.currentIndex == 4
                                    ? AppColors.primary
                                    : AppColors.grey400)))
                  ]),
            ));
  }

  Widget _getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const RewardView();
      case 2:
        return const DisputesView();
      case 3:
        return const HistoryView();
      case 4:
        return const ProfileView();
    }
    return const Scaffold();
  }
}
