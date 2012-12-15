class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = MagicViewController.alloc.init
    @window.makeKeyAndVisible #to keep it as the top most window and fixed
    true
  end
end
