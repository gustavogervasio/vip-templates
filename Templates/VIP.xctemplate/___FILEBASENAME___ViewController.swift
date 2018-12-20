import UIKit

protocol ___VARIABLE_sceneName___ViewControllerInput: ___VARIABLE_sceneName___PresenterOutput {

}

protocol ___VARIABLE_sceneName___ViewControllerOutput {
    func doSomething()
}

class ___VARIABLE_sceneName___ViewController: UIViewController {

    var output: ___VARIABLE_sceneName___ViewControllerOutput?

    // MARK: - Initializers
    init(configurator: ___VARIABLE_sceneName___Configurator = ___VARIABLE_sceneName___Configurator.sharedInstance) {
        super.init(nibName: nil, bundle: nil)
        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }

    // MARK: - Configurator
    private func configure(configurator: ___VARIABLE_sceneName___Configurator = ___VARIABLE_sceneName___Configurator.sharedInstance) {
        configurator.configure(viewController: self)
    }

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        doSomething()
    }

    // MARK: - Load data
    func doSomething() {
        // TODO: Ask the Interactor to do some work
        output?.doSomething()
    }
}

// MARK: - ___VARIABLE_sceneName___PresenterOutput
extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewControllerInput {

    // MARK: - Display logic
    func displaySomething(viewModel: ___VARIABLE_sceneName___ViewModel) {
        // TODO: Update UI
    }
}

