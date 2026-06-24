Pod::Spec.new do |s|
  s.name             = 'CrimsonMac'
  s.version          = '2.0.0'
  s.summary          = 'Crimson SDK for Mac.'

  s.description      = <<-DESC
    Crimson SDK for Mac .
                       DESC

  s.homepage         = 'https://www.brainco.cn'
  s.license          = { :type => 'Copyright', :text => 'LICENSE Copyright 2015 - 2023 BrainCo, Inc. All rights reserved.' }
  s.author           = { 'BrainCo' => 'support@brainco.cn' }
  s.source           = { :http => "https://focus-resource.oss-cn-beijing.aliyuncs.com/universal/crimson-sdk-prebuild/#{s.version}/macos/#{s.name}.xcframework.zip"}
  s.platform         = :osx, '10.15'

  s.vendored_framework = "#{s.name}.xcframework"
  s.dependency 'TensorFlowLiteC', '0.0.6'
  s.frameworks = 'Accelerate'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end
