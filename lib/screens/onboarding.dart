import 'package:flutter/material.dart';

import 'package:vino/utils/constants/onboarding_items.dart';
import 'package:vino/widgets/brand_text.dart';
import 'package:vino/widgets/dots_indicators.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController _pageViewController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: BrandText(fontSize: 23), centerTitle: true),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) => setState(() {
                _currentPageIndex = value;
              }),
              itemCount: onboardingItems.length,
              controller: _pageViewController,
              itemBuilder: (context, index) => Image.asset(
                onboardingItems[index].image,
                width: 220,
                height: 240,
              ),
            ),
          ),
          // const SizedBox(height: 14),
          DotsIndicator(
            count: onboardingItems.length,
            index: _currentPageIndex,
          ),
          const SizedBox(height: 14),
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Text(
                    softWrap: true,
                    onboardingItems[_currentPageIndex].title,
                    key: ValueKey(_currentPageIndex),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: 23,
                      height: 33 / 23,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),

                const SizedBox(height: 12),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Text(
                    onboardingItems[_currentPageIndex].description,
                    key: ValueKey('desc-$_currentPageIndex'),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16,
                      height: 26 / 16,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                FilledButton(onPressed: () {}, child: Text("Login")),
                SizedBox(height: 6),
                OutlinedButton(onPressed: () {}, child: Text("Create Account")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
