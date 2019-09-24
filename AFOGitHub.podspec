Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AFOGitHub"
  s.version      = "0.0.9"
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
  s.source_files  = "AFOGitHub/AFOGitHub.h"

  s.subspec 'Aspects' do |as|
    as.source_files = 'AFOGitHub/Aspects/*.{h,m}' 
  end
  
  s.subspec 'GCDMulticastDelegate' do |gcd|
    gcd.source_files = 'AFOGitHub/GCDMulticastDelegate/*.{h,m}' 
    end

  s.subspec 'GCDMulticastDelegate' do |gcd|
    gcd.source_files = 'AFOGitHub/GCDMulticastDelegate/*.{h,m}' 
    end

  s.subspec 'INTUAutoRemoveObserver' do |intu|
    intu.source_files = 'AFOGitHub/INTUAutoRemoveObserver/*.{h,m}' 
    end

  s.subspec 'UIScrollView' do |ui|
    ui.source_files = 'AFOGitHub/UIScrollView/*.{h,m}' 
    end

  s.subspec 'Masonry' do |ma|
    ma.source_files = 'AFOGitHub/Masonry/*.{h,m}' 
    end

  s.subspec 'SDWebImage' do |sd|
    sd.subspec 'include' do |clude|
      clude.source_files = 'AFOGitHub/SDWebImage/include/*.h' 
      end
    sd.subspec 'lib' do |lib|
      lib.vendored_libraries = "AFOGitHub/SDWebImage/lib/libSDWebImage.a"
      end
    end

  s.public_header_files = "AFOGitHub/**/*.h","AFOGitHub/AFOGitHub/**/*.h"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
   s.requires_arc = true
   s.xcconfig = { 
                  'HEADER_SEARCH_PATHS'=> '"$(SDKROOT)/AFOGitHub/**/*.h"',

                  'LIBRARY_SEARCH_PATHS'=> '"$(SDKROOT)/AFOGitHub/SDWebimage/lib"'
  }
end
