DATE_NOW:=`date +%Y%m%d.%H%M`
VERSION:=`cider version`
APP_NAME:=Blitar-Sehat-Pasien
PATH_APK:=`PWD`/build/app/outputs/flutter-apk
PATH_APK_GOOGLE:=/Users/Maulana/Library/CloudStorage/GoogleDrive-mas@alan.my.id/My\ Drive/Blitar-Sehat/APK
PATH_APP_BUNDLE:=`PWD`/build/app/outputs/bundle/release

generate:
	fvm spawn 3.3.4 pub run build_runner build --delete-conflicting-outputs
asset-generate:
	fluttergen -c pubspec.yaml
apk:
	fvm spawn 3.3.4 build apk --split-per-abi --target-platform=android-arm --release -v
	mv $(PATH_APK)/app-armeabi-v7a-release.apk $(PATH_APK_GOOGLE)/$(APP_NAME)-v$(VERSION)-$(DATE_NOW).apk
apk-open: apk
	open $(PATH_APK_GOOGLE)/