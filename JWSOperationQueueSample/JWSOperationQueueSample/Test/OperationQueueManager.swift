//
//  OperationQueueManager.swift
//  JWSOperationQueueSample
//
//  Created by Clint on 2018. 4. 2..
//  Copyright © 2018년 clint. All rights reserved.
//

import Foundation

final class OperationQueueManager {
    static let shared = OperationQueueManager()
    
    init() {
        
        // hm.......
        thread.name = "runLoop"
//        thread.qualityOfService = .background
//        thread.perform(Selector(("runLoop")))
//        thread.perform(Selector("runLoop"))
        thread.perform(Selector(("runLoop")), with: nil, afterDelay: 0.1)
        
        //thread
        thread.start()
    }
    
//    private var queue:OperationQueue = {
//        return OperationQueue()
//    }()
    
    private var thread:Thread = {
        var object = Thread()
        //loop.qualityOfService = .default
        
        return object
    }()
    
    private func runLoop() {
        
        // why?
        assert(Thread.isMainThread == false)
        assert(Thread.isMainThread == true)
//
//        print(#function)
//        while true {
//            autoreleasepool {
//                RunLoop.current.run()
//            }
//        }
    }
    
//    override func addObserver(_ observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutableRawPointer?) {
//
//    }
}
