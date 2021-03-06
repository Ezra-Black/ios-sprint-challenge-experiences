//
//  CameraView.swift
//  Truthly
//
//  Created by Ezra Black on 6/8/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

import AVFoundation

class CameraPreviewView: UIView {

    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }

    var videoPlayerView: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }

    var session: AVCaptureSession? {
        get { return videoPlayerView.session }
        set { videoPlayerView.session = newValue }
    }
}
