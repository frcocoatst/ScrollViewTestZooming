//
//  MyView.swift
//  ScrollViewTest
//
//  Created by Friedrich HAEUPL on 27.09.16.
//  Copyright © 2016 Friedrich HAEUPL. All rights reserved.
//

import Cocoa


let GRID_RADIUS:Int = 150


class MyView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        NSColor.white.setFill()
        NSRectFill(self.bounds)
        //
        //
        self.drawSomething()
    }
    
    func drawSomething()
    {
        //  grid points
        let path:NSBezierPath = NSBezierPath()
        //path.removeAllPoints()
        
        let rect = NSRect(x: 100.0,
                          y: 100.0,
                          width: 3000.0 - 200.0,
                          height: 2000.0 - 200.0)
        
        path.appendRect(rect)
        
        path.stroke()
        
        for i in 1..<20 {
            for j in 1..<13 {
                
                // TRACK_RADIUS
                let x_pos = CGFloat(i * GRID_RADIUS)
                let y_pos = CGFloat(j * GRID_RADIUS)
                
                
                path.move(to: NSMakePoint(x_pos - 5,y_pos))
                path.line(to: NSMakePoint(x_pos + 5,y_pos))
                path.move(to: NSMakePoint(x_pos ,y_pos - 5))
                path.line(to: NSMakePoint(x_pos ,y_pos + 5))
                path.lineWidth = 1.0
                
                path.stroke()
                
            }
        }
    }

}
