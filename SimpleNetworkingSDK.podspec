Pod::Spec.new do |s|
    s.name             = 'SimpleNetworkingSDK'
    s.version          = '1.0.0'
    s.summary          = 'SimpleNetworkingSDK...'
    s.description      = <<-DESC
    Introducing to the SimpleNetworking SDK, it is a helper for requesting to API
    DESC

    s.homepage         = 'https://github.com/edward-nguon/SimpleNetworkingSDK'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Edward Nguon' => 'nguonsotheavuth1@gmail.com' }
    s.source           = { :git => 'https://github.com/edward-nguon/SimpleNetworkingSDK.git', :tag => s.version.to_s }
    s.ios.deployment_target = '11.0'
    s.swift_version = '5.8.1'
    s.ios.vendored_frameworks = 'Sources/SimpleNetworkingSDK/SimpleNetworkingSDK.xcframework'
  end
