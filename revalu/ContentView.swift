//
//  ContentView.swift
//  revalu
//
//  Created by hasan çiftçi on 30.04.2020.
//  Copyright © 2020 hasan çiftçi. All rights reserved.
//

import SwiftUI

struct storyBox {
    var id: Int
    let title, imageUrl : String
}
struct suggestionBox {
    var id: Int
    let title, imageUrl : String
}

struct mostViewedBox {
    var id: Int
    let title, imageUrl : String
}

struct trendingBox {
    var id: Int
    let title, imageUrl : String
}



struct ContentView: View {
    
    let storyBoxes:[storyBox] = [
        storyBox(id: 0, title: "bir", imageUrl: "0"),
        storyBox(id: 1, title: "iki", imageUrl: "1"),
        storyBox(id: 2, title: "uc", imageUrl: "2"),
        storyBox(id: 3, title: "dort", imageUrl: "3"),
        storyBox(id: 4, title: "bes", imageUrl: "4")
        
    ]
    
    let suggestionBoxes:[suggestionBox] = [
        suggestionBox(id: 0, title: "bir", imageUrl: "0"),
        suggestionBox(id: 1, title: "iki", imageUrl: "1"),
        suggestionBox(id: 2, title: "uc", imageUrl: "2"),
        suggestionBox(id: 3, title: "dort", imageUrl: "3"),
        suggestionBox(id: 4, title: "bes", imageUrl: "4")
        
    ]
    
    let mostViewedBoxes:[mostViewedBox] = [
        mostViewedBox(id: 0, title: "bir", imageUrl: "0"),
        mostViewedBox(id: 1, title: "iki", imageUrl: "1"),
        mostViewedBox(id: 2, title: "uc", imageUrl: "2"),
        mostViewedBox(id: 3, title: "dort", imageUrl: "3"),
        mostViewedBox(id: 4, title: "bes", imageUrl: "4")
        
    ]
    
    let trendingBoxes:[trendingBox] = [
        trendingBox(id: 0, title: "bir", imageUrl: "0"),
        trendingBox(id: 1, title: "iki", imageUrl: "1"),
        trendingBox(id: 2, title: "uc", imageUrl: "2"),
        trendingBox(id: 3, title: "dort", imageUrl: "3"),
        trendingBox(id: 4, title: "bes", imageUrl: "4")
        
    ]
    
    
    var body: some View {
        
        ScrollView(.vertical){
            
            //story pages
            ScrollView(.horizontal){
                
                HStack{
                    
                    ForEach(storyBoxes, id: \.id) {
                        box in
                        storyBoxView(box: box)
                    }
                }
            }
            Text("Tavsiye edilenler")
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,15)
                .padding(.bottom,-20)
                .font(.system(size: 25))
            
            //sugestion pages
            ScrollView(.horizontal){
                
                HStack{
                    
                    ForEach(suggestionBoxes, id: \.id) {
                        box in
                        suggestionBoxView(box: box)
                    }
                }
            }
            Text("En çok izlenenler")
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,15)
                .padding(.bottom,-20)
                .font(.system(size: 25))
            //mostViewed pages
            ScrollView(.horizontal){
                
                HStack{
                    
                    ForEach(mostViewedBoxes, id: \.id) {
                        box in
                        mostViewedBoxView(box: box)
                    }
                }
            }
            Text("Gündemdekiler")
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,15)
                .padding(.bottom,-20)
                .font(.system(size: 25))
            ScrollView(.horizontal){
                
                HStack{
                    
                    ForEach(trendingBoxes, id: \.id) {
                        box in
                        trendingBoxView(box: box)
                    }
                }
            }
        }
        .padding(.top,30)
        .background(Color.black)
        
    }
    
}

//storyBox style
struct storyBoxView: View {
    let box : storyBox
    var body: some View{
        VStack{
            Image(box.imageUrl)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay( Circle().stroke(Color.white, lineWidth: 1))
            Text(box.title)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.white)
            
        }
        .frame(height:130)
        .padding(.leading,10)
        
    }
}
//suggestionBox style
struct suggestionBoxView: View {
    let box : suggestionBox
    var body: some View{
        VStack(){
            Image(box.imageUrl)
                .resizable()
                .frame(width: 100, height: 150)
            Text(box.title)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .frame(height:200)
        .padding(.leading,10)
        
        
    }
}

//mostViewedBox style
struct mostViewedBoxView: View {
    let box : mostViewedBox
    var body: some View{
        VStack(){
            Image(box.imageUrl)
                .resizable()
                .frame(width: 100, height: 150)
            Text(box.title)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .frame(height:200)
        .padding(.leading,10)
        
        
    }
}
//trendingBox style
struct trendingBoxView: View {
    let box : trendingBox
    var body: some View{
        VStack(){
            Image(box.imageUrl)
                .resizable()
                .frame(width: 100, height: 150)
            Text(box.title)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .frame(height:200)
        .padding(.leading,10)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
