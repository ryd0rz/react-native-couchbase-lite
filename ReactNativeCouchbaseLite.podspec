#
# Be sure to run `pod lib lint ReactNativeCouchbaseLite' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ReactNativeCouchbaseLite"
  s.version          = "0.2.2"
  s.summary          = "couchbase lite binding for react-native"
  s.license          = 'MIT'
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.authors      = "Fraser Xu <xvfeng123@gmail.com>"
  s.homepage     = "https://github.com/fraserxu/react-native-couchbase-lite.git"
  s.source       = { :git => 'https://github.com/fraserxu/react-native-couchbase-lite.git' }
  s.source_files = 'ios/**/*.{h,m}'
  # Use the SQLCipher storage subspec (NOT the default 'SQLite' subspec, which
  # links plain system sqlite3 and silently ignores encryption keys). SQLCipher
  # is required for encryption at rest (AES-256) and vendors both the
  # CouchbaseLite and CouchbaseLiteListener frameworks at 1.4.4.
  s.dependency 'couchbase-lite-ios/SQLCipher'
end
