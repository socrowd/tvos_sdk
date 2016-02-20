Pod::Spec.new do |s|

  s.name         = "SoCrowd"
  s.version      = "0.0"
  s.summary      = "SoCrowd video advertising"
  s.description  = <<-DESC
    SoCrowd video advertising for Apple TV
                   DESC
  s.homepage     = "http://socrowd.tv"
  s.license      = "MIT"
  s.author             = { "Aurélien Nicolas" => "aurel@socrowd.tv" }

  s.platform     = :tvos, "9.0"

  s.source       = { :git => 'https://github.com/socrowd/tvos_sdk.git', :tag => s.version }

  s.xcconfig       = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SoCrowd"' }
  s.source_files   = 'SoCrowd.framework/Headers/*.{h}'
  s.vendored_frameworks = 'SoCrowd.framework'

  s.frameworks = "Foundation", "UIKit", "AVKit", "AdSupport"
  s.requires_arc = true

end
