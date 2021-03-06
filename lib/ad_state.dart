import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState {
  Future<InitializationStatus> initialization;

  AdState(this.initialization);

  String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-7304211152045310/4190895759';

  AdListener get adListener => _adListener;

  AdListener _adListener = AdListener(
    onAdLoaded: (ad) => print('Ad loaded: ${ad.adUnitId}.'),
    onAdClosed: (ad) => print('Ad closed: ${ad.adUnitId}.'),
    onAdFailedToLoad: (ad, error) =>
        print('Ad failed to load: ${ad.adUnitId}, $error.'),
    onAdOpened: (ad) => print('Ad opened: ${ad.adUnitId}'),
    onAppEvent: (ad, name, data) =>
        print('App Event: ${ad.adUnitId}, $name, $data'),
    onApplicationExit: (ad) => print('App exit: ${ad.adUnitId}'),
    onNativeAdClicked: (nativeAd) =>
        print('Native ad clicked: ${nativeAd.adUnitId}'),
    onNativeAdImpression: (nativeAd) =>
        print('Native ad impression: ${nativeAd.adUnitId}'),
    onRewardedAdUserEarnedReward: (ad, reward) => print(
        'User rewarded: ${ad.adUnitId}. ${reward.amount}, ${reward.type}'),
  );
}



//* Stateful
// BannerAd banner;
// @override
// void didChangeDependencies() {
//    super.didChangeDependencies();
// final adState = Provider.of<AdState>(context);
// adState.initialization.then((status) {
//  setStaet(() {
// banner = BannerAD(
//      adUnitId: adState.bannerAdUnitId,
//      size: AdSize.banner,
//      request: AdRequest(),
// })..load();
// })
// }



