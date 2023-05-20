#!/bin/bash

CLEAR='\033[0m'
RED='\033[0;31m'

function usage() {
  if [ -n "$1" ]; then
    echo -e "${RED}👉 $1${CLEAR}\n";
  fi
  echo "Usage: $0 [-t target] [-c configuration]"
  echo "  -c, --configuration      Configuration (Debug / Release)"
  echo ""
  echo "Example: $0 --target iphoneos --configuration Debug"
  exit 1
}

# parse params
while [[ "$#" > 0 ]]; do case $1 in
  -c|--configuration) CONFIGURATION="$2";shift;shift;;
  *) usage "Unknown parameter passed: $1"; shift; shift;;
esac; done

# verify params
if [ -z "$CONFIGURATION" ]; then usage "Configuration is not set."; fi;

echo -e "Build Rive Framework"
echo -e "Configuration -> ${CONFIGURATION}"

# xcodebuild -project RiveRuntime.xcodeproj \
#            -scheme RiveRuntime \
#             -destination "generic/platform=iOS" \
#            -derivedDataPath archive \
#            -configuration ${CONFIGURATION} | xcpretty

# xcodebuild -project RiveRuntime.xcodeproj \
#            -scheme RiveRuntime \
#            -destination "generic/platform=iOS Simulator" \
#            -derivedDataPath archive \
#            -configuration ${CONFIGURATION} | xcpretty

# xcodebuild clean build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO -project RiveRuntime.xcodeproj \
#            -scheme RiveRuntime \
#            -sdk macosx \
#            -derivedDataPath archive \
#            -configuration ${CONFIGURATION} | xcpretty


xcodebuild archive \
  -configuration ${CONFIGURATION} \
  -project RiveRuntime.xcodeproj \
  -scheme RiveRuntime \
  -destination generic/platform=iOS \
  -archivePath ".build/archives/RiveRuntime_iOS" \
  SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES 

xcodebuild archive -configuration ${CONFIGURATION} -project RiveRuntime.xcodeproj -scheme RiveRuntime -destination "generic/platform=iOS Simulator" -archivePath ".build/archives/RiveRuntime_iOS_Simulator" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild archive -configuration ${CONFIGURATION} -project RiveRuntime.xcodeproj -scheme RiveRuntime -destination generic/platform=macOS -archivePath ".build/archives/RiveRuntime_macOS" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild \
    -create-xcframework \
    -framework .build/archives/RiveRuntime_iOS.xcarchive/Products/Library/Frameworks/RiveRuntime.framework \
    -framework .build/archives/RiveRuntime_iOS_Simulator.xcarchive/Products/Library/Frameworks/RiveRuntime.framework \
    -framework .build/archives/RiveRuntime_macOS.xcarchive/Products/Library/Frameworks/RiveRuntime.framework \
    -output archive/RiveRuntime.xcframework

