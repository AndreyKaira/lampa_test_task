import 'package:flutter/material.dart';
import 'package:lampa_test_task/res/app_data.dart';
import 'package:lampa_test_task/ui/widgets/shimmers/shimmer.dart';

class MainShimmer extends StatelessWidget {
  const MainShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppData.colors.white,
      child: ListView(
        children: [
          ...List.generate(10, (index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Shimmer(
                              baseColor: AppData.colors.grey2,
                              highlightColor: AppData.colors.white,
                              child: SizedBox(
                                width: 12,
                                height: 12,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Shimmer(
                              baseColor: AppData.colors.grey2,
                              highlightColor: AppData.colors.white,
                              child: SizedBox(
                                height: 16.0,
                                width: 160.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          children: [
                            Shimmer(
                              baseColor: AppData.colors.grey2,
                              highlightColor: AppData.colors.white,
                              child: SizedBox(
                                height: 16.0,
                                width: 64.0,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Shimmer(
                              baseColor: AppData.colors.grey2,
                              highlightColor: AppData.colors.white,
                              child: SizedBox(
                                height: 16.0,
                                width: 64.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Shimmer(
                    baseColor: AppData.colors.grey2,
                    highlightColor: AppData.colors.white,
                    child: SizedBox(
                      width: 32.0,
                      height: 32.0,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
