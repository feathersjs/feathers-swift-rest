Pod::Spec.new do |s|
  s.name         = "FeathersSwiftRest"
  # Version goes here and will be used to access the git tag later on, once we have a first release.
  s.version      = "1.0.0"
  s.summary      = "REST transprot provider for FeathersSwift"
  s.description  = <<-DESC
                   REST provider for FeathersSwift for making HTTP connections to a
                   FeathersJS backend.
                   DESC
  s.homepage     = "https://github.com/startupthekid/feathers-swift-rest"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "startupthekid"

  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/startupthekid/feathers-swift-rest.git", :tag => "#{s.version}" }

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files = "FeathersSwiftRest/Core/*.{swift}"
    ss.framework = "Foundation"
    ss.dependency 'Result'
    ss.dependency 'Feathers'
    ss.dependency 'Alamofire'
  end

  s.pod_target_xcconfig = {"OTHER_SWIFT_FLAGS[config=Release]" => "-suppress-warnings" }
end
