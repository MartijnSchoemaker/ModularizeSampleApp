source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'
use_frameworks!

workspace 'ModularizeSampleApp'
target 'ModularizeSampleApp' do
	project 'ModularizeSampleApp'

  pod 'Swinject'
	pod 'SwinjectStoryboard'
	pod 'RxSwift'
	pod 'Moya/RxSwift'
	
end

target 'ShoppingModule' do
	project 'ShoppingModule/ShoppingModule'
	
	pod 'Swinject'
	pod 'SwinjectStoryboard'
	pod 'Moya/RxSwift'

end

target 'WishlistModule' do
	project 'WishlistModule/WishlistModule'
	
	pod 'Swinject'
	pod 'SwinjectStoryboard'
	pod 'RxSwift'
	
end

target 'DependenciesModule' do
	project 'DependenciesModule/DependenciesModule'
	
	pod 'RxSwift'
	
end
