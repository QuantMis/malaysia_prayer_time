#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint malaysia_prayer_time.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'malaysia_prayer_time'
  s.version          = '0.0.1'
  s.summary          = 'JAKIM e-Solat API wrapper package for Flutter (IOS, Android)'
  s.description      = <<-DESC
JAKIM e-Solat API wrapper package for Flutter (IOS, Android)
                       DESC
  s.homepage         = 'https://github.com/QuantMis/malaysia_prayer_time'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Israa Saifullah' => 'israasaifullah@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
