Pod::Spec.new do |s|
  s.name         = 'SharePDF'
  s.version      = '1.0.0'
  s.summary      = 'A React Native module for sharing PDF files from base64.'
  s.homepage     = 'https://github.com/tuanduc2904/react-native-share-pdf'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Duc Nguyen' => 'tuanduc2904@gmail.com.com' }
  s.source       = { :git => 'https://github.com/tuanduc2904/react-native-share-pdf.git', :tag => s.version.to_s } # Thay đổi URL repository của bạn
  s.platform     = :ios, '9.0'
  s.source_files = 'ios/**/*.{h,m}'
  s.dependency "React"
end