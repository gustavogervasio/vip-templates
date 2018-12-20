import UIKit

class ___VARIABLE_sceneName___Configurator {

    // MARK: - Singleton
    static let sharedInstance: ___VARIABLE_sceneName___Configurator = ___VARIABLE_sceneName___Configurator()

    // MARK: - Configuration
    func configure(viewController: ___VARIABLE_sceneName___ViewController) {

        let presenter = ___VARIABLE_sceneName___Presenter(output: viewController)
        let interactor = ___VARIABLE_sceneName___Interactor(output: presenter)
        viewController.output = interactor
    }
}
