Pod::Spec.new do |s|
  s.name             = 'ClearSDK'
  s.version          = '1.0.0'
  s.summary          = 'Clear SDK for iOS.'

  s.description      = <<-DESC
    Clear SDK for iOS .
                       DESC

  s.homepage         = 'https://www.brainco.cn'
  s.license          = { :type => 'Copyright', :text => 'LICENSE Copyright 2015 - 2023 BrainCo, Inc. All rights reserved.' }
  s.author           = { 'BrainCo' => 'support@brainco.cn' }
  s.source           = { :http => "https://app.brainco.cn/universal/clear-sdk-prebuild/#{s.version}/ios/#{s.name}.xcframework.zip"}
  s.platform = :ios, '12.0'

  s.vendored_framework = "#{s.name}.xcframework"
  s.dependency 'TensorFlowLiteC'
  s.frameworks = 'Accelerate'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386, arm64',
    'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7'
  }
end
