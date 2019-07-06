//
//  ViewController.swift
//  ZoomInLabel
//
//  Created by Kondya on 06/07/19.
//  Copyright © 2019 Fortune4. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var zoomInLabel: UILabel!
    @IBOutlet weak var viewToZoom: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 3.0
        scrollView.zoomScale = 1.0
        // Do any additional setup after loading the view.
    }


    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return viewToZoom
    }
}

