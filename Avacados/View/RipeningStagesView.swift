//
//  RipeningStagesView.swift
//  Avacados
//
//  Created by Maxim Mitin on 4.11.21.
//

import SwiftUI

struct RipeningStagesView: View {
    var ripeningStages = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 25){
                    ForEach(ripeningStages) { ripening in
                        RipeningView(ripening: ripening)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
