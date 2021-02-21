import UIKit

class InputValViewController: UIViewController {
    
    // Initialize some UI components
    let myHours = UITextField()
    let myButton = UIButton()
    let orgForm = UITextField()
    let myDescriptions = UITextField()
    let theDate = UITextField()
    let myImage = UIImageView()
    
    override func viewDidLoad() {
        
        // Add subviews to view of UIViewController
        self.view.addSubview(orgForm)
        self.view.addSubview(myHours)
        self.view.addSubview(myDescriptions)
        self.view.addSubview(theDate)
        self.view.addSubview(myButton)
        self.view.addSubview(myImage)
        
        // We can only apply constraints AFTER we place them in the view.
        
        /* Anchor rundowns */
        /*
         topAnchor: top
         bottomAnchor: bottom
         leadingAnchor: left
         trailingAnchor: right
         centerXAnchor: horizontal center
         centerYAnchor: vertical center
         heightAnchor: height (can't use with BOTH top/bottom at once)
         widthAnchor: width (can't use with BOTH leading/trailing at once)
         
         constant (param): -x (move left x), +x (move right x)
         
         Very useful anchor: self.view.safeAreaLayoutGuide (defines where view is actually seen)
        */
        
        
        orgForm.backgroundColor = .systemTeal
        orgForm.layer.borderColor = UIColor.blue.cgColor
        orgForm.layer.borderWidth = 1.0
        orgForm.borderStyle = .roundedRect
        orgForm.placeholder = "Organization Name here"
        orgForm.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orgForm.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            orgForm.heightAnchor.constraint(equalToConstant: 50),
            orgForm.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            orgForm.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        ])
        // Assign a response to an action on the button
        orgForm.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .allEditingEvents)
        
        myHours.placeholder = "Number of Hours"
        myHours.backgroundColor = .systemTeal
        myHours.layer.borderColor = UIColor.blue.cgColor
        myHours.layer.borderWidth = 1.0
        myHours.translatesAutoresizingMaskIntoConstraints = false
        //myHours.numberOfLines = 3
        //myHours.textAlignment = .center
        NSLayoutConstraint.activate([
            myHours.topAnchor.constraint(equalTo: orgForm.bottomAnchor),
            myHours.heightAnchor.constraint(equalToConstant: 50),
            myHours.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            myHours.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        ])
        
        myHours.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .allEditingEvents)
        
        myDescriptions.backgroundColor = .systemTeal
        myDescriptions.layer.borderColor = UIColor.blue.cgColor
        myDescriptions.layer.borderWidth = 1.0
        myDescriptions.borderStyle = .roundedRect
        myDescriptions.placeholder = "Description"
        myDescriptions.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myDescriptions.topAnchor.constraint(equalTo: myHours.bottomAnchor),
            myDescriptions.heightAnchor.constraint(equalToConstant: 50),
            myDescriptions.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            myDescriptions.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        ])
        // Assign a response to an action on the button
        myDescriptions.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .allEditingEvents)
        
        theDate.placeholder = "Date of Service"
        theDate.backgroundColor = .systemTeal
        theDate.layer.borderColor = UIColor.blue.cgColor
        theDate.layer.borderWidth = 1.0
        theDate.translatesAutoresizingMaskIntoConstraints = false
        //myHours.numberOfLines = 3
        //theDate.textAlignment = .center
        NSLayoutConstraint.activate([
            theDate.topAnchor.constraint(equalTo: myDescriptions.bottomAnchor),
            theDate.heightAnchor.constraint(equalToConstant: 50),
            theDate.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            theDate.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        ])
        
        theDate.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .allEditingEvents)
        
        // MARK: - Bottom View
        
        myButton.setTitle("Submit", for: .normal)
        myButton.setTitle("Submitted!", for: .highlighted)
        myButton.backgroundColor = .systemTeal
        myButton.layer.borderColor = UIColor.blue.cgColor
        myButton.layer.borderWidth = 1.0
        myButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myButton.topAnchor.constraint(equalTo: theDate.bottomAnchor),
            myButton.heightAnchor.constraint(equalToConstant: 50),
            myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            myButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        ])
        myButton.addTarget(self, action: #selector(changeText(_:)), for: .allTouchEvents)
        
        // Add images to your Assets.xcassets folder. Images that are displayed on screen are known as UIImages.
        myImage.image = UIImage(named: "late_sunset_1")
        myImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myImage.topAnchor.constraint(equalTo: myButton.bottomAnchor, constant: 20),
            myImage.heightAnchor.constraint(equalToConstant: 200),
            myImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25),
            myImage.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25)
        ])
        
    }
    
    /* @objc means this is an Objective-C function. Objective-C was an earlier programming language used for iOS apps before Swift. Basically all target functions need @objc as a description.
     
        _ is used before a parameter if you don't want to name the parameter in a function call. In this case, changeText() could just be called like that instead of changeText(sender: myButton). Target functions all use (_ sender: ) in their parameter calls. Senders may vary (could be UISlider, UISwitch, etc.)
     
    */
    @objc func changeText(_ sender: UIButton!) {
        
        // Part 1: Button changes text on label
        /* if myLabel.text == "Hello World!" {
            myLabel.text = "Welcome to Blueprint 2021!"
        } else {
            myLabel.text = "Hello World!"
        } */
        
        // Part 2: Button changes label text to value of text field
        myHours.text = orgForm.text
        
    }
    
    @objc func textFieldDidChange(_ sender: UITextField!) {
        myHours.text = orgForm.text
    }
    
}


import SwiftUI
// This struct from SwiftUI shows us the content preview in the canvas page.
struct ValPreview: PreviewProvider {
    static var previews: some View {
        ValContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ValContainerView: UIViewControllerRepresentable {
        

            func makeUIViewController(context: UIViewControllerRepresentableContext<ValPreview.ValContainerView>) -> UIViewController {
                return UINavigationController(rootViewController: InputValViewController())
            }

            func updateUIViewController(_ uiViewController: ValPreview.ValContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ValPreview.ValContainerView>) {

            }

        }
}

