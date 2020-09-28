
Pod::Spec.new do |s|

  s.name                     = "SwiftyTesseract"
  s.version                  = ENV["POD_VERSION"]
  s.summary                  = "A Swift wrapper around Tesseract for use in iOS applications."

  s.swift_versions           = "5.2"

  s.description              = <<-DESC
                                SwiftyTesseract is a library used to perform optical character recognition
                                in your iOS projects. SwiftyTesseract only implements the functionality of
                                Tesseract and provides no additional image processing. If you would like an
                                out-of-the-box solution that performs live OCR, please check out
                                SwiftyTesseractRTE.
                              DESC

  s.homepage                 = "https://github.com/juchampagne/SwiftyTesseract"

  s.license                  = { :type => "MIT", :file => "LICENSE.md" }

  s.author                   = { "Steven Sherry" => "steven.sherry@affinityforapps.com" }
  s.social_media_url         = "http://twitter.com/steven_0351"

  s.platform                 = :ios, "13.0"

  s.source                   = { :git => "https://github.com/juchampagne/SwiftyTesseract.git", :tag => "#{s.version}" }
  s.source_files             = "juchampagne/SwiftyTesseract/*.swift","juchampagne/SwiftyTesseract/**/*.{h,swift}"
  s.private_header_files     = "juchampagne/SwiftyTesseract/dependencies/include/**/*.h"

  s.requires_arc             = true

  s.frameworks               = "UIKit"

  s.ios.deployment_target    = "11.0"
  s.ios.vendored_library     = "juchampagne/SwiftyTesseract/dependencies/lib/*.a"
  s.pod_target_xcconfig      = {  "SWIFT_INCLUDE_PATHS" => "$(SRCROOT)/juchampagne/SwiftyTesseract/SwiftyTesseract/dependencies/include/tesseract/**",
                                  "OTHER_LDFLAGS" => "-lstdc++ -lz",
                                  "SWIFT_VERSION" => "5.2",
                                  "CLANG_CXX_LIBRARY" => "compiler-default" }

  s.preserve_paths           = "juchampagne/SwiftyTesseract/dependencies/include/tesseract/module.modulemap"

end
