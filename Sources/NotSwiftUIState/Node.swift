//
//  Node.swift
//  NotSwiftUIState
//
//  Created by Chris Eidhof on 10.06.21.
//

import Foundation

final class Node {
    var children: [Node] = []
    var needsRebuild = true
    var view: BuiltinView!
    
    func rebuildIfNeeded() {
        if needsRebuild {
            view._buildNodeTree(self)
        }
    }
}
