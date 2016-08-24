//
//  MainViewController.swift
//  SkylieRecettes
//
//  Created by Laurent Nicolas (141 - LILLE TOURCOING) on 31/05/2016.
//  Copyright © 2016 LaurentNicolas. All rights reserved.
//

import UIKit

class MainViewController: LGSideMenuController {

    static var sharedInstance: MainViewController? = nil

    var controllerMenuLateral: MenuLateral = StoryboardScene.Main.instantiateMenuLateral()

    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidAppear(animated: Bool) {


        self.setup()

    }


    func setup() {

        MainViewController.sharedInstance = self

        let navigationController: UITabBarController = StoryboardScene.Main.instantiateNavigationController()

        self.rootViewController = navigationController

        navigationController.tabBar.hidden = true


        self.setLeftViewEnabledWithWidth(250.0, presentationStyle: .SlideAbove, alwaysVisibleOptions: .OnNone )

        self.leftViewStatusBarStyle = .Default
        self.leftViewStatusBarVisibleOptions = .OnAll


        self.leftView().addSubview( self.controllerMenuLateral.view )



    }



    override func leftViewWillLayoutSubviewsWithSize(size: CGSize) {

        super.leftViewWillLayoutSubviewsWithSize(size)

        self.controllerMenuLateral.varIB_tableView.frame = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)


    }




}
