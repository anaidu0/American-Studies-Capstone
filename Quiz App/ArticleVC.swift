//
//  ArticleVC.swift
//  Industrial Revolution Quiz
//
//  Created by Anirudh Naidu on 11/26/19.
//

import UIKit
import PDFKit

class ArticleVC: UIViewController {
    var window: UIWindow?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Learn"
        self.view.backgroundColor=UIColor.white
        
        
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
        
        // Fit content in PDFView.
        pdfView.autoScales = true
        
        // Load Sample.pdf file from app bundle.
        let fileURL = Bundle.main.url(forResource: "Capstone Project Writeup", withExtension: "pdf")
        pdfView.document = PDFDocument(url: fileURL!)
        
    }
    
    
    
    
    
}
