//
//  MainContentView.swift
//  test-sap-viewrouter-sui
//
//  Created by Tommie Carter on 9/5/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct MainContentView: View {
    @Environment(\.presentationMode) var presentation

    let alarm = #imageLiteral(resourceName: "Alarm")
    @EnvironmentObject var router:ViewRouter
    var body: some View {
        VStack {
            Button(action: {
                self.router.currentPage = 2
                //debugPrint(self.presentation.wrappedValue.isPresented)
            }) {
                Image(uiImage: alarm)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            
        }
        
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
