#
#  Be sure to run `pod spec lint IJKMediaFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "IJKMediaFramework"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of IJKMediaFramework."
  spec.homepage     = "https://github.com/Vanduza/JNFoundation"
  spec.license      = "MIT"
  spec.platform     = :ios, "10.0"
  spec.swift_versions = "4.2"

  spec.ios.deployment_target = '10.0'

  spec.author             = { "Vanduza" => "vanduza@163.com" }

  spec.framework           = [ "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "MediaPlayer", "MobileCoreServices", "OpenGLES", "QuartzCore", "UIKit", "VideoToolbox" ]
  spec.libraries           = ["bz2", "z", "c++"]
  spec.xcconfig            = { "ARCHS": "$(ARCHS_STANDARD)", "LIBRARY_SEARCH_PATHS": "\"$(PODS_ROOT)/IJKMediaFramework/**\"", "FRAMEWORK_SEARCH_PATHS": "\"$(PODS_ROOT)/IJKMediaFramework/**\"" }

  spec.source  = {:git => "https://github.com/Vanduza/JNFoundation.git", :tag => "V#{spec.version}"}
  spec.source_files  = "IJKMediaFramework.framework/**/*.{h}"
  spec.vendored_frameworks = "IJKMediaFramework.framework"
  spec.public_header_files = "IJKMediaFramework.framework/Headers/*.h"

end
