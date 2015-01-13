//
//  SKPhysicsBody.swift
//  AirTartan
//
//  Created by Tian Zheng on 9/27/14.
//  Copyright (c) 2014 Air Crew. All rights reserved.
//

import SpriteKit

extension SKPhysicsBody {

    typealias BodyBuilderClosure = (SKPhysicsBody) -> ()
    
    // Add physical attributes base on texture
    class func textureSize(size: CGSize, inTexture: SKTexture!, builderClosure: BodyBuilderClosure) -> SKPhysicsBody {
        let body = SKPhysicsBody(texture: inTexture, size: size)
        builderClosure(body)
        return body
    }
    
    // Create rectangle physical body
    class func rectSize(size: CGSize, builderClosure: BodyBuilderClosure) -> SKPhysicsBody {
        let body = SKPhysicsBody(rectangleOfSize: size)
        builderClosure(body)
        return body
    }
}
