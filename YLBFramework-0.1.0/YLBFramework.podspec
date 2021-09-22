Pod::Spec.new do |s|
  s.name = "YLBFramework"
  s.version = "0.1.0"
  s.summary = "YLBFramework."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"ProBobo"=>"564885081@qq.com"}
  s.homepage = "https://github.com/ProBobo/YLBFramework"
  s.description = "TODO: Add long description of the pod here."
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/YLBFramework.framework'
end
