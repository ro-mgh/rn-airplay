//
//  RNAirplayButton.swift
//  RNAirplay
//
//  Created by Mantas Kaveckas on 23/08/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import MediaPlayer

@objc(RNAirplayButton)
class RNAirplayButton: RCTViewManager {
    func methodQueue() -> DispatchQueue {
        return DispatchQueue.main
    }
    
    override func view() -> UIView! {
    let volumeView = MPVolumeView()
    volumeView.showsVolumeSlider = false
    if let routeButton = volumeView.subviews.last as? UIButton,
      let routeButtonTemplateImage  = routeButton.currentImage?.withRenderingMode(.alwaysTemplate)
    {
      volumeView.setRouteButtonImage(routeButtonTemplateImage, for: [])
    }

    return volumeView
  }
}
