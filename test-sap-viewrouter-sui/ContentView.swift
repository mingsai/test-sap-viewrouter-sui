//
//  ContentView.swift
//  test-sap-viewrouter-sui
//
//  Created by Tommie Carter on 9/5/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var viewRouter:ViewRouter
    
    var body: some View {
        VStack{
            if self.viewRouter.currentPage == 0 {
                withAnimation{
                    
                    ListContentView()
                    .transition(.move(edge: .trailing))
                    
                }
            
            }
            if self.viewRouter.currentPage == 1 {
                MainContentView().transition(.move(edge: .trailing))
            }
            if self.viewRouter.currentPage == 2 {
                SpecialView()
            }
            //switch doesn't work here yet
//            switch self.viewRouter.currentPage {
//            case 0:
//                ListContentView()
//            case 1:
//                MainContentView(router: self._viewRouter)
//            case 2:
//                SpecialView()
//            default:
//                Text("")
//            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
