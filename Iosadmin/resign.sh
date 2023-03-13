
APP=$1
PROFILEPATH=pCloudyPrivateProductionProfile.mobileprovision
IDENTITY=7DFB0467FF737879D80F6A70D86BF78281ACB5C0
/usr/bin/security cms -D -i $PROFILEPATH > provision.plist
/usr/libexec/PlistBuddy -x -c 'Print :Entitlements' provision.plist > entitlements.plist
cp -vr $PROFILEPATH  $1/embedded.mobileprovision
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/XCUIAutomation.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/WebDriverAgentLib.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/XCTest.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/XCTAutomationSupport.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/XCTestCore.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/*/*/*
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/PlugIns/*
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/XCUnit.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1

