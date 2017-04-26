Pod::Spec.new do |s|
  s.name         = "RMPhoneFormat"
  s.version      = "0.0.1"
  s.summary      = "A simple to use class for formatting phone numbers that uses the same exact formatting as the contacts app."
  s.homepage     = "https://github.com/rmaddy/RMPhoneFormat"
  s.license      = 'BSD'
  s.author       = "Rick Maddy"
  s.source       = { :git => "https://github.com/vladislav-m/RMPhoneFormat.git" }
  s.platform     = :ios, '6.0'
  s.ios.deployment_target = "6.0"
  s.osx.deployment_target = "10.8"
  s.watchos.deployment_target = "2.0"
  s.source_files = 'RMPhoneFormat/RMPhoneFormat.{h,m}'
  s.prepare_command = <<-CMD
                        ditto /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/System/Library/PrivateFrameworks/AppSupport.framework/Default.phoneformat ./PhoneFormats.dat
                   CMD
  s.resource = 'PhoneFormats.dat'
  s.requires_arc = true
end