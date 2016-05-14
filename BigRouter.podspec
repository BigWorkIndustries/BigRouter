#
# Be sure to run `pod lib lint BigRouter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "BigRouter"
  s.version          = "1.0.0"
  s.summary          = "A short description of BigRouter."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = "https://github.com/<GITHUB_USERNAME>/BigRouter"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Vincil Bishop" => "vincil.bishop@vbishop.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/BigRouter.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  
  
  # s.resource_bundles = {
  #   'BigRouter' => ['BigRouter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  s.default_subspec = 'All'
  
  s.subspec 'All' do |all|
     all.dependency 'BigRouter/Core'
     all.dependency 'BigRouter/MMDrawerController'
     all.dependency 'BigRouter/UIViewController'
  end
  
  s.subspec 'Core' do |cs|
  	 cs.source_files = 'BigRouter/Classes/*'
     cs.dependency 'BigUtil', '~> 1.1.0'
 	 cs.dependency 'HHRouter', '~> 0.1.5'
  end
  
  s.subspec 'UIViewController' do |ui|
  	 ui.source_files = 'BigRouter/Classes/UIViewController/*'
     ui.dependency 'BigRouter/Core'
 	 ui.dependency 'KPAStoryboardConvenience', '~> 1.0'
  end
  
  s.subspec 'MMDrawerController' do |mm|
  	 mm.source_files = 'BigRouter/Classes/MMDrawerController/*'
     mm.dependency 'BigRouter/Core'
 	 mm.dependency 'MMDrawerController', '~> 0.6'
  end
 
 
end
