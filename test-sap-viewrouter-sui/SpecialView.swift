//
//  SpecialView.swift
//  test-sap-viewrouter-sui
//
//  Created by Tommie Carter on 9/5/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct SpecialView: View {
    @EnvironmentObject private var router:ViewRouter
    let tablet = #imageLiteral(resourceName: "Tablet")
    var body: some View {
        VStack {
            Button(action: {
                self.router.currentPage = 0
            }) {
                Image(uiImage: tablet)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
//        .transition(.move(edge: .trailing))
    }
}

struct SpecialView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialView()
    }
}
