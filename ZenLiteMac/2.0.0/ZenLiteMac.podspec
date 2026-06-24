Pod::Spec.new do |s|
  s.name             = 'ZenLiteMac'
  s.version          = '2.0.0'
  s.summary          = 'ZenLite SDK for Mac.'

  s.description      = <<-DESC
    ZenLite SDK for Mac .
                       DESC

  s.homepage         = 'https://www.brainco.cn'
  s.license          = { :type => 'Copyright', :text => 'LICENSE Copyright 2015 - 2024 BrainCo, Inc. All rights reserved.' }
  s.author           = { 'BrainCo' => 'support@brainco.cn' }
  s.source           = { :http => "https://focus-resource.oss-cn-beijing.aliyuncs.com/universal/zenlite-sdk-prebuild/#{s.version}/macos/#{s.name}.xcframework.zip"}
  s.platform         = :osx, '10.15'

  s.vendored_framework = "#{s.name}.xcframework"

  s.prepare_command = <<-CMD
    install_name_tool -change '@rpath/libtensorflowlite_c.dylib' '@rpath/TensorFlowLiteC.framework/Versions/Current/TensorFlowLiteC' #{s.name}.xcframework/macos-arm64_x86_64/#{s.name}.framework/#{s.name} 2>/dev/null || true
  CMD

  s.dependency 'TensorFlowLiteC', '0.0.5'
  s.frameworks = 'Accelerate'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end
