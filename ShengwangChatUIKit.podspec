#
# Be sure to run `pod lib lint ShengwangChatUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ShengwangChatUIKit'
    s.version          = '2.0.1'
    s.summary          = 'A short description of ShengwangChatUIKit.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/Shengwang-Community/ShengwangChat-UIKit-ios'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'zjc19891106' => '984065974@qq.com' }
    s.source           = { :git => 'https://github.com/Shengwang-Community/ShengwangChat-UIKit-ios.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '13.0'
    
    s.xcconfig = {'ENABLE_BITCODE' => 'NO'}
    #  s.public_header_files = ['Sources/EaseChatUIKit/Classes/*/*.h']
    
    s.source_files = [ 'Sources/EaseChatUIKit/Classes/**/*.{h,swift}' ]
    #  s.private_header_files = ['Sources/EaseChatUIKit/Classes/UI/Core/Foundation/third-party/**/*']
    s.resources = ['Sources/EaseChatUIKit/Classes/UI/**/*.bundle','Sources/EaseChatUIKit/Classes/UI/**/*.xcprivacy']
    s.dependency 'ShengwangChat_iOS','>= 1.3.2'
    s.static_framework = true
    
    s.swift_version = '5.0'
    s.prefix_header_contents = '
    # if __has_include (<ShengwangChatUIKit/ShengwangChatUIKit-Bridge.h>)
    #import <ShengwangChatUIKit/ShengwangChatUIKit-Bridge.h>
    # else
    #import "ShengwangChatUIKit-Bridge.h"
    # endif
    '
    s.public_header_files = 'Sources/EaseChatUIKit/Classes/UI/Foundation/ShengwangChatUIKit-Bridge.h'
    
    s.preserve_paths =  ['Sources/EaseChatUIKit/Classes/UI/Core/Foundation/third-party/**/*.a','Sources/EaseChatUIKit/Classes/UI/Core/Foundation/third-party/vo-amrwbenc/lib/*.a']
    
    
    s.vendored_libraries = ['Sources/EaseChatUIKit/Classes/UI/Core/Foundation/third-party/**/*.a','Sources/EaseChatUIKit/Classes/UI/Core/Foundation/third-party/vo-amrwbenc/lib/*.a']
    
    s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/Sources/EaseChatUIKit/Classes/UI/Core/Foundation/third-party/**/*' } #
    
    
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
        'VALID_ARCHS' => 'arm64 armv7 x86_64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.frameworks = 'UIKit', 'Foundation', 'Combine', 'AudioToolbox', 'AVFoundation','AVFAudio','Photos'
end

