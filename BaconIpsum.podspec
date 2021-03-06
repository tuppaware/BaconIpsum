#
# Be sure to run `pod lib lint BaconIpsum.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BaconIpsum'
  s.version          = '1.1.0'
  s.summary          = 'Fill your app and life with Pork! This library generates pork related text for use as placeholder text. Also now includes vegetarian option! '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A Swift library to create awesome pork flavoured placeholder text in your IOS apps. Fill your app and life with Pork! This library generates pork related text for use as placeholder text. Also now includes vegetarian option!
                       DESC

  s.homepage         = 'https://github.com/tuppaware/baconipsum'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Adam Ware' => 'tuppaware@gmail.com' }
  s.source           = { :git => 'https://github.com/tuppaware/BaconIpsum.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tuppaware'

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'
  s.source_files = 'BaconIpsum/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BaconIpsum' => ['BaconIpsum/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
