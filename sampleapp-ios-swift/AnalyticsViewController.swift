
import UIKit
import AppCenterAnalytics

class AnalyticsViewController: UIViewController {

    @IBOutlet weak var customEventButton: UIButton!
    @IBOutlet weak var customColorButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        customColorButton.layer.cornerRadius = 10.0
        customEventButton.layer.cornerRadius = 10.0

        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.isTranslucent = false
    }

    @IBAction func analyticsButtonTapped(_ sender: UIButton) {
        switch sender {
        case customEventButton:
            print("send a custom alert via Cocoapods")
            presentCustomEventAlert()

        case customColorButton:
            print("custom color property button pressed")
            presentColorPropertyAlert()

        default:
            break
        }
    }

    // - MARK: Alert Functions

    func presentCustomEventAlert() {
        let alert = UIAlertController(title: "Event sent",
                                      message: "",
                                      preferredStyle: .alert)

        // OK Button
        alert.addAction(UIAlertAction(title: "OK",
                                      style: .default,
                                      handler: { _ in
                                        MSAnalytics.trackEvent("Custom event")
                                        alert.dismiss(animated: true, completion: nil)
        }))
        present(alert, animated: true, completion: nil)
    }

    func presentColorPropertyAlert() {
        let alert = UIAlertController(title: "Choose a color",
                                      message: "",
                                      preferredStyle: .alert)
        alert.view.tintColor = UIColor.black

        // Yellow button
        alert.addAction(UIAlertAction(title: "💛 Yellow",
                                      style: .default,
                                      handler: { _ in
                                        MSAnalytics.trackEvent("Color picked", withProperties: ["color": "💛 Yellow"])
                                        alert.dismiss(animated: true, completion: nil)
        }))

        // Blue button
        alert.addAction(UIAlertAction(title: "💙 Blue",
                                      style: .default,
                                      handler: { _ in
                                        MSAnalytics.trackEvent("Color picked", withProperties: ["color": "💙 Blue"])
                                        alert.dismiss(animated: true, completion: nil)
        }))

        // Red button
        alert.addAction(UIAlertAction(title: "❤️ Red",
                                      style: .default,
                                      handler: { _ in
                                        MSAnalytics.trackEvent("Color picked", withProperties: ["color": "❤️ Red"])
                                        alert.dismiss(animated: true, completion: nil)
        }))

        present(alert, animated: true, completion: nil)
    }
}
