//
//  ImageDescriptionView.swift
//  Nasa-APOD-in-SwiftUI
//
//  Created by Yunis Farah on 09/09/2020.
//

import SwiftUI

struct ImageDescriptionView: View {
    @State var apodData: DataModel?
    var body: some View {
        VStack {
            ScrollView {
                Text(Date().addingTimeInterval(600), style: .date)
                Text("\(apodData?.explanation ?? "")")
                    .padding()
                Text("Data courtesy of NASA 🚀")
            }
                .onAppear() {
                    NasaAPI().loadData() { (info) in
                        self.apodData = info
                    }
            }
        }
    }
}

struct ImageDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDescriptionView()
    }
}
