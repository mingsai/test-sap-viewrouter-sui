//
//  ListContentView.swift
//  test-sap-viewrouter-sui
//
//  Created by Tommie Carter on 9/5/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct ListContentView: View {
    @EnvironmentObject private var router:ViewRouter
    let musician = #imageLiteral(resourceName: "Musician")
    var body: some View {
        VStack {
            Button(action: {
                self.router.currentPage = 1
            }) {
                Image(uiImage: musician)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct ListContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListContentView()
    }
}
