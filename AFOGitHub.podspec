Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AFOGitHub"
  s.version      = "0.0.13"
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
  s.source_files  = 'AFOGitHub/AFOGitHub.h'
  s.public_header_files = 'AFOGitHub/*.h'

  s.subspec 'AFNetworking' do |afnetworking|
    afnetworking.source_files = 'AFOGitHub/AFNetworking/AFNetworkingHeader.h'
    afnetworking.public_header_files = 'AFOGitHub/AFNetworking/AFNetworkingHeader.h' 
      afnetworking.subspec 'AFNetworking' do |af|
          af.source_files = 'AFOGitHub/AFNetworking/AFNetworking/*.{h,m}'
          af.public_header_files = 'AFOGitHub/AFNetworking/AFNetworking/*.h' 
        end 
      afnetworking.subspec 'UIKit+AFNetworking' do |uikit|
          uikit.source_files = 'AFOGitHub/AFNetworking/UIKit+AFNetworking/*.{h,m}'
          uikit.public_header_files = 'AFOGitHub/AFNetworking/UIKit+AFNetworking/*.h' 
        end 
    end

  s.subspec 'FBKVOController' do |fb|
      fb.source_files = 'AFOGitHub/FBKVOController/*.{h,m}' 
      fb.public_header_files = 'AFOGitHub/FBKVOController/*.h' 
    end

  s.subspec 'Aspects' do |as|
      as.source_files = 'AFOGitHub/Aspects/*.{h,m}' 
      as.public_header_files = 'AFOGitHub/Aspects/*.h' 
    end
  
  s.subspec 'GCDMulticastDelegate' do |gcd|
      gcd.source_files = 'AFOGitHub/GCDMulticastDelegate/*.{h,m}' 
      gcd.public_header_files = 'AFOGitHub/GCDMulticastDelegate/*.h' 
    end

  s.subspec 'INTUAutoRemoveObserver' do |intu|
      intu.source_files = 'AFOGitHub/INTUAutoRemoveObserver/*.{h,m}' 
      intu.public_header_files = 'AFOGitHub/INTUAutoRemoveObserver/*.h'
    end

  s.subspec 'UIScrollView' do |ui|
      ui.source_files = 'AFOGitHub/UIScrollView/*.{h,m}' 
      ui.public_header_files = 'AFOGitHub/UIScrollView/*.h'
    end

  s.subspec 'Masonry' do |ma|
      ma.source_files = 'AFOGitHub/Masonry/*.{h,m}' 
      ma.public_header_files = 'AFOGitHub/Masonry/*.h'
    end

  s.subspec 'SDWebImage' do |sd|
    sd.subspec 'include' do |clude|
        clude.source_files = 'AFOGitHub/SDWebImage/include/*.h' 
        clude.public_header_files = 'AFOGitHub/SDWebImage/include/*.h' 
      end
    sd.subspec 'lib' do |lib|
        lib.vendored_libraries = "AFOGitHub/SDWebImage/lib/libSDWebImage.a"
      end
    end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
   s.requires_arc = true
end
