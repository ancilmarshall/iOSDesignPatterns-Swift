//
//  AlbumView.swift
//  BlueLibrarySwift
//
//  Created by Ancil on 7/10/15.
//  Copyright (c) 2015 Raywenderlich. All rights reserved.
//

import UIKit

class AlbumView: UIView {

    private var coverImage: UIImageView!
    private var indicator: UIActivityIndicatorView!
    
    required init(coder aDecoder:NSCoder){
        super.init(coder: aDecoder)
        commonInit()
    }
    

    init(frame: CGRect, albumCover: String){
        super.init(frame: frame)
        commonInit()
    }
    
    
    func commonInit(){
        backgroundColor = UIColor.blackColor()
        coverImage = UIImageView(frame: CGRect(x: 5, y: 5,
            width: frame.size.width, height: frame.size.height))
        
        addSubview(coverImage)
        indicator = UIActivityIndicatorView()
        indicator.center = center
        indicator.activityIndicatorViewStyle = .WhiteLarge
        indicator.startAnimating()
        addSubview(indicator)
    }
    
    func highlightAlbum(didHighlightView: Bool) {
        if didHighlightView == true {
            backgroundColor = UIColor.whiteColor()
        } else {
            backgroundColor = UIColor.blackColor()
        }
    }
    
}
