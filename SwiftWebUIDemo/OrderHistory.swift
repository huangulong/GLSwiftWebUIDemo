//
//  OrderHistory.swift
//  SwiftWebUIDemo
//
//  Created by admin on 2019/11/2.
//  Copyright © 2019 历山大亚. All rights reserved.
//

import SwiftWebUI



struct OrderHistory: View {
    let previousOrders : [CompletedOrder]
    
    var body: some View{
        NavigationView(emptyView: OrderDetail(order: previousOrders[0])) {
            List(previousOrders) { order in
                NavigationLink(destination: OrderDetail(order: order)) {
                    OrderCell(order: order)
                }
            }
        }
    }
}

struct OrderCell: View {
    let order:CompletedOrder
    
    var body : some View{
        HStack {
            VStack(alignment: .leading) {
                Text(order.summary)
                Text(order.purchaseDate).font(.subheadline).foregroundColor(.secondary)
            }
            Spacer()
            if order.includeSalt {
                SaltIcon()
            }else{}
            if order.includeRedPepperFlakes {
                RedPepperFlakesIcon()
            }else{}
        }
    }
    
    
}

struct SaltIcon: View {
    let body = Text("🧂")
    
}

struct RedPepperFlakesIcon: View {
    let body = Text("🌶")
    
}
