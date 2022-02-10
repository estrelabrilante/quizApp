//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by user202406 on 2/9/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    let text:String
    let answer:String
    //custom initialiser
    init(q: String, a: String) {
        text = q;
        answer = a;
    }
}
