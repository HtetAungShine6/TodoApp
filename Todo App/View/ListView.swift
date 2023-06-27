//
//  ListView.swift
//  Todo App
//
//  Created by Akito Daiki on 25/5/2566 BE.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listviewmodel: ListViewModel
    
    var body: some View {
        ZStack{
            if listviewmodel.items.isEmpty {
                NoListView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else{
                List{
                    ForEach(listviewmodel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 1.1)){
                                    listviewmodel.update(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listviewmodel.deleteItems)
                    .onMove(perform: listviewmodel.moveItems)
                }
            }
        }
        .navigationTitle("Todo List 🖌")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }.environmentObject(ListViewModel())
    }
}
