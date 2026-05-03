Pod::Spec.new do |s|
  s.name             = 'TensorFlowLiteC'
  s.version          = '0.0.3'
  s.summary          = 'TensorFlowLiteC for Mac and iOS.'

  s.description      = <<-DESC
    TensorFlowLiteC for Mac and iOS.
                       DESC

  s.homepage         = 'https://www.brainco.cn'
  s.license          = { :type => 'Copyright', :text => 'LICENSE Copyright 2015 - 2026 BrainCo, Inc. All rights reserved.' }
  s.author           = { 'BrainCo' => 'support@brainco.cn' }
  s.source           = { :http => "https://focus-resource.oss-cn-beijing.aliyuncs.com/universal/zenlite-sdk-prebuild/universal/libtensorflowlite_c/TensorFlowLiteC.xcframework.zip"}
  
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'

  s.vendored_framework = "TensorFlowLiteC.xcframework"

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end
