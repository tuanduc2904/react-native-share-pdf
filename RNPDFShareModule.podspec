Pod::Spec.new do |s|
  s.name             = 'RNPDFShareModule'
  s.version          = '1.0.0'
  s.summary          = 'A native module for sharing PDF files from base64 in React Native.'
  s.description      = 'A native module for sharing PDF files from base64 in React Native.'
  s.homepage         = 'https://github.com/your-username/react-native-pdf-base64-share'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your-email@example.com' }
  s.source           = { :git => 'https://github.com/react-native-community/react-native-share.git', :tag => s.version.to_s }

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'ios/*.{h,m}'
  s.header_dir = 'ios'

  # Replace 'YourProjectName' with your actual project name in React Native
  s.dependency 'React'

  # Add other dependencies if your native module uses them

end
