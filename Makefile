ios-framework:
	if [ -d "build" ]; then rm -r build; fi
	if [ -d "products" ]; then rm -r products; fi

	xcodebuild -project SVProgressHUD.xcodeproj -scheme SVProgressHUD-Framework -sdk iphoneos -configuration Release -derivedDataPath build | xcpretty
	xcodebuild -project SVProgressHUD.xcodeproj -scheme SVProgressHUD-Framework -sdk iphonesimulator -configuration Release -derivedDataPath build | xcpretty

	lipo build/Build/Products/Release-iphonesimulator/SVProgressHUD.framework/SVProgressHUD build/Build/Products/Release-iphoneos/SVProgressHUD.framework/SVProgressHUD -create -output build/Build/Products/Release-iphoneos/SVProgressHUD.framework/SVProgressHUD

	mkdir products
	mkdir products/ios

	mv build/Build/Products/Release-iphoneos/SVProgressHUD.framework products/ios/SVProgressHUD.framework

	rm -r build
