Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AFOGitHub"
  s.version      = "0.0.8"
  s.summary      = "Integrated tripartite library."
  s.description  = 'Integrate common tripartite libraries.'
  s.homepage     = "https://github.com/PangDuTechnology/AFOGitHub.git"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "PangDu" => "xian312117@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/PangDuTechnology/AFOGitHub.git", :tag => s.version.to_s }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "AFOGitHub/AFOGitHub/*.h",AFOGitHub/AFOGitHub/**/*.{h,m}"
  s.public_header_files = "AFOGitHub/*.h","AFOGitHub/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
   s.requires_arc = true
   s.xcconfig = { 'HEADER_SEARCH_PATHS'=> '"$(SDKROOT)/AFOGitHub/**/*.h"',
                  'LIBRARY_SEARCH_PATHS'=> '"$(SDKROOT)/AFOGitHub/SDWebimage/lib"'
  }
end
