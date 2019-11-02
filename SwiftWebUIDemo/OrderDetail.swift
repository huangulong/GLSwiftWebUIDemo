//
//  OrderDetail.swift
//  SwiftWebUIDemo
//
//  Created by admin on 2019/11/2.
//  Copyright © 2019 历山大亚. All rights reserved.
//

import SwiftWebUI

struct OrderDetail: View {
    let order: CompletedOrder
    
    
    var body: some View {
        VStack {
            Text(order.summary).font(.title)
            VStack(alignment: .leading) {
//
//            }
//            VStack {
                Text(order.purchaseDate)
                HStack {
                    if order.includeSalt {
                        SaltIcon()
                    }else{}
                    if order.includeRedPepperFlakes {
                        RedPepperFlakesIcon()
                    }else{}
                    
                }
                Spacer()
                Image.unsplash(size: UXSize(width: 480, height: 320), terms: order.summary.components(separatedBy: " ").filter({
                    $0 != "with"
                }))
            }
        }
    }
}
