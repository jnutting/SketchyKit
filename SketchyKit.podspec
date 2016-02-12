Pod::Spec.new do |spec|
  spec.name         = "SketchyKit"
  spec.version      = "0.3.2"
  spec.summary      = "A framework for making sketchy iOS designs."
  spec.homepage     = "https://github.com/thoughtbot/SketchyKit"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = {
    "Jack Nutting" => "jack@thoughtbot.com",
    "thoughtbot" => nil
  }
  spec.social_media_url = "https://twitter.com/thoughtbot"
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/thoughtbot/SketchyKit.git", :tag => spec.version }
  spec.source_files  = "SketchyUIKit", "SketchyUIKit/**/*.{h,m,swift}"
  spec.requires_arc = true
end
