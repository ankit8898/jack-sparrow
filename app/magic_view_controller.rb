class MagicViewController < UIViewController
  #UI View Controller has it's own call backs
 def loadView #when view controller needs it's view
  self.view = UIImageView.alloc.init
end

  def viewDidLoad #called after above view is loaded but before display
    #labelFrame = CGRectMake(10, 30, 300, 100)
    @label = makeLabel
    add_image
    view.addSubview(@label)   
    enabling_tap
    @magic = Magic.new
  end
  
  def showAnswer
    @label.text = @magic.randomAnswers
    @label.alpha = 0
    UIView.animateWithDuration(1.0, animations: lambda { @label.alpha =1})
  end
  
  def add_image
    view.image = UIImage.imageNamed('img.png')
  end

  def enabling_tap
    view.UserInteractionEnabled = true
    recognizer = UITapGestureRecognizer.alloc.initWithTarget(self, action:'showAnswer')
    view.addGestureRecognizer(recognizer)
  end

  def makeLabel
    label = UILabel.alloc.initWithFrame([[10,60], [300,80]])
    label.backgroundColor = UIColor.whiteColor
    label.text = "Click on my Mounth!"
    label.font = UIFont.boldSystemFontOfSize(30)
    label.textColor = UIColor.darkGrayColor
    label.textAlignment = UITextAlignmentCenter
    label
  end
end