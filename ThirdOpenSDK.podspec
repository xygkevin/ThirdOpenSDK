
Pod::Spec.new do |spec|

spec.name         = 'ThirdOpenSDK'
spec.version      = '2.0.0'
spec.summary      = '包含:微信,腾讯QQ,支付宝,新浪微博,小红书,钉钉,抖音,阿里云存储,阿里云一键登录,阿里云人机验证,友盟统计,极光推送,讯飞语音'
spec.description  = <<-DESC

微信SDK: OpenSDK.xcframework 2.0.4
腾讯QQ: ThirdOpenSDK.framework 3.5.15.353
支付宝:
微博: libWeiboSDK.a 3.3.5
小红书:
钉钉: 暂无
抖音: 暂无
阿里云存储: 暂无
阿里云一键登录:
阿里云人机验证:
友盟统计: 暂无
极光推送: 暂无
讯飞语音:
DESC

spec.homepage     = 'https://github.com/xygkevin/ThirdOpenSDK'
spec.license      = { :type => 'MIT', :file => 'LICENSE' }
spec.author       = { '许亚光' => 'xu_yaguang@163.com' }
spec.platform     = :ios, '13.0'
spec.source       = { :git => 'https://github.com/xygkevin/ThirdOpenSDK.git', :tag => spec.version }
spec.swift_version = ['5.0']
spec.requires_arc = true
spec.pod_target_xcconfig = { 'VALID_ARCHS': 'arm64 armv7 x86_64', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
spec.user_target_xcconfig  = { 'VALID_ARCHS': 'arm64 armv7 x86_64', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

spec.default_subspec = 'Core'

spec.subspec 'Core' do |spec|
spec.source_files = 'ThirdOpenSDK/Sources/*.{h,m}'
end

spec.subspec 'Alipay' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.vendored_frameworks = 'Framework/Alipay/*.framework'
subspec.source_files        = 'Framework/Alipay/*.h'
subspec.vendored_libraries  = 'Framework/Alipay/*.a'
end

spec.subspec 'ATAuth' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.vendored_frameworks = 'Framework/ATAuth/*.framework'
end

spec.subspec 'AlicomCaptcha4' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.vendored_frameworks = 'Framework/AlicomCaptcha4/*.xcframework'
subspec.resource_bundles = {
    'AlicomCaptchaBundle' => ['Framework/AlicomCaptcha4/AlicomCaptcha4.bundle']
}
end

spec.subspec 'AliyunOSSiOS' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.dependency 'AliyunOSSiOS'
end

spec.subspec 'TencentOpenAPI' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.vendored_frameworks = 'Framework/TencentOpenAPI/*.framework'
subspec.frameworks   = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
subspec.libraries    = 'iconv', 'sqlite3', 'stdc++', 'z'
end

spec.subspec 'WeChat' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.vendored_frameworks = 'Framework/WeChat/*.xcframework'
subspec.frameworks   = 'UIKit', 'Security', 'CoreGraphics', 'WebKit'
subspec.libraries    = 'sqlite3', 'stdc++', 'z'
end

spec.subspec 'WeiBo' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.source_files        = 'Framework/WeiBo/*.h'
subspec.vendored_libraries  = 'Framework/WeiBo/*.a'
subspec.frameworks   = 'Security', 'Photos', 'ImageIO', 'SystemConfiguration', 'CoreText', 'QuartzCore', 'UIKit', 'Foundation', 'CoreGraphics', 'CoreTelephony', 'WebKit'
subspec.libraries    = 'sqlite3', 'z'
subspec.resource_bundles = {
    'WeiboSDKBundle' => ['Framework/WeiBo/WeiboSDK.bundle']
}
end

spec.subspec 'XiaoHongShu' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.vendored_frameworks = 'Framework/XiaoHongShu/*.xcframework'
end

# spec.subspec 'DingDing' do |subspec|
# subspec.dependency 'ThirdOpenSDK/Core'
# subspec.vendored_frameworks = 'Framework/DingDing/*.xcframework'
# end
#
# spec.subspec 'DouYin' do |subspec|
# subspec.dependency 'ThirdOpenSDK/Core'
# subspec.vendored_frameworks = 'Framework/DouYin/*.xcframework'
# end

spec.subspec 'XunFei' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.vendored_frameworks = 'Framework/XunFei/*.framework'
subspec.frameworks   = 'AVFoundation', 'SystemConfiguration', 'Foundation', 'CoreTelephony', 'AudioToolbox', 'CoreLocation', 'UIKit', 'Contacts', 'AddressBook', 'QuartzCore', 'CoreGraphics'
subspec.libraries    = 'z', 'stdc++'
end

spec.subspec 'UMeng' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.dependency 'UMCommon'
end

spec.subspec 'JPush' do |subspec|
subspec.dependency 'ThirdOpenSDK/Core'
subspec.dependency 'JPush'
end

end
