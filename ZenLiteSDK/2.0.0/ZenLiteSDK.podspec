Pod::Spec.new do |s|
  s.name             = 'ZenLiteSDK'
  s.version          = '2.0.0'
  s.summary          = 'ZenLite SDK for iOS.'

  s.description      = <<-DESC
    ZenLite SDK for iOS .
                       DESC

  s.homepage         = 'https://www.brainco.cn'
  s.license          = { :type => 'Copyright', :text => 'LICENSE Copyright 2015 - 2024 BrainCo, Inc. All rights reserved.' }
  s.author           = { 'BrainCo' => 'support@brainco.cn' }
  s.source           = { :http => "https://focus-resource.oss-cn-beijing.aliyuncs.com/universal/zenlite-sdk-prebuild/#{s.version}/ios/#{s.name}.xcframework.zip"}
  s.platform = :ios, '12.0'

  s.vendored_framework = "#{s.name}.xcframework"

  s.prepare_command = <<-CMD
    install_name_tool -change '@rpath/libtensorflowlite_c.so' '@rpath/TensorFlowLiteC.framework/TensorFlowLiteC' #{s.name}.xcframework/ios-arm64/#{s.name}.framework/#{s.name} 2>/dev/null || true
    install_name_tool -change '@rpath/libtensorflowlite_c.so' '@rpath/TensorFlowLiteC.framework/TensorFlowLiteC' #{s.name}.xcframework/ios-arm64_x86_64-simulator/#{s.name}.framework/#{s.name} 2>/dev/null || true
  CMD

  s.dependency 'TensorFlowLiteC', '0.0.5'
  s.frameworks = 'Accelerate'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386, arm64',
    'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7'
  }
end
