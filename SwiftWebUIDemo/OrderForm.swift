//
//  OrderForm.swift
//  SwiftWebUIDemo
//
//  Created by admin on 2019/11/1.
//  Copyright © 2019 历山大亚. All rights reserved.
//

import SwiftWebUI

struct OrderForm: View {
    
    @State private var order = Order()
    
    func submitOrder()  {
        
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Avocado Toast").font(.title)
            
            Toggle(isOn: $order.includeSalt) {
                Text("Include Salt")
            }
            Toggle(isOn: $order.includeRedRepperFlakes) {
                Text("Include Red Repper Flakes")
            }
            Stepper(value: $order.quantity, in: 1...10) {
                Text("Quantity: \(order.quantity)")
            }
            Button(action: submitOrder) {
                Text("Order")
            }
            HTML("<blink>Blinken Lights</blink>")
            HTML("<b ><i><font size='9'>历山大亚</font></i></b>")
        }
    }
}

