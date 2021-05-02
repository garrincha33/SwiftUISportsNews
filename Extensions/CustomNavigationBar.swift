//
//  CustomNavigationBar.swift
//  SportsNewApp
//
//  Created by Richard Price on 01/05/2021.
//

import UIKit
import SwiftUI

struct CustomNavigationBar: UIViewControllerRepresentable {

    var build: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<CustomNavigationBar>) -> UIViewController {
        UIViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CustomNavigationBar>) {

        if let navigationController = uiViewController.navigationController {
            self.build(navigationController)
        }
    }
}
