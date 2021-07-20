Pod::Spec.new do |spec|

  spec.name         = "MarsLogger"
  spec.version      = "0.0.1"
  spec.summary      = "MarsLogger: 独立日志仓库"

  spec.description  = <<-DESC
			腾讯开源库 Mars 日志：
                   DESC

  spec.homepage     = "https://github.com/zhu410289616/MarsLogger"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  #spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "zhu410289616" => "zhu410289616@163.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/zhu410289616/MarsLogger.git", :tag => "#{spec.version}" }
  
  spec.subspec "MarsLogger" do |cs|
    cs.source_files = "Pod/Classes/**/*"
    cs.vendored_frameworks = [
      "Pod/Framework/mars.framework"
    ]
    cs.frameworks = "SystemConfiguration", "CoreTelephony"
    cs.libraries = "z", "resolv.9", "stdc++"
  end
  
end
