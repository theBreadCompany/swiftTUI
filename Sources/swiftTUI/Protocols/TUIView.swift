//
//  TUIView.swift
//  
//
//  Created by Fabio Mauersberger on 12.12.21.
//

import Foundation

public protocol View {
    
    var body: View { get }
}

public protocol RootView: View {
    func terminate()
}
