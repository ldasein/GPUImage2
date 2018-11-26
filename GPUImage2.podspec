@version = "1.0"

Pod::Spec.new do |s|
  s.name     = 'GPUImage2'
  s.version  = @version
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/ldasein/GPUImage2.git'
  s.author   = { 'Brad Larson' => 'contact@sunsetlakesoftware.com' }

  # This commit on that fork of GPUImage should contain just upgrades needed for Swift 4 compatibility. See https://github.com/BradLarson/GPUImage2/pull/212
  # Replace with https://github.com/ldasein/GPUImage2.git when merged
  # into BradLarson's repository.
  s.source   = { :git => 'https://github.com/ldasein/GPUImage2.git', :tag => "v#{s.version}" }

  s.source_files = 'framework/Source/**/*.{swift}'
  s.resources = 'framework/Source/Operations/Shaders/*.{fsh}'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_SWIFT_FLAGS' => "$(inherited) -DGLES"}

  s.ios.deployment_target = '10.0'
  s.ios.exclude_files = 'framework/Source/Mac', 'framework/Source/Linux', 'framework/Source/Operations/Shaders/ConvertedShaders_GL.swift'
  s.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation']

end