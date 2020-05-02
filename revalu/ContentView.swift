//
//  ContentView.swift
//  revalu
//
//  Created by hasan çiftçi on 30.04.2020.
//  Copyright © 2020 hasan çiftçi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 1
    init() {
        UITabBar.appearance().barTintColor = UIColor.darkGray
    }
    
    var body: some View {
        
        
        TabView(selection: $selected) {
            home()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.fill")
            }.tag(1)
            
            search()
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
            }.tag(2)
            profile()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house.fill")
            }.tag(3)
        }.accentColor(.white)
    }
}

struct home:View {
    
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
            Text("₺ Revalu")
                .font(.system(size: 40))
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 238 / 255, green: 255 / 255, blue: 65 / 255))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,5)
                .padding(.bottom,-15)
            
            
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
}

struct search:View {
    @State private var showDetails = false
    @State private var name: String = ""
    @State private var fop:Double = 1
    @State private var sop:Double = 0
    @State private var wd:CGFloat = 365
    @State private var hg:CGFloat = 50
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(Color.init(red: 68/255, green: 68/255, blue: 68/255))
                    
                    .frame(height: 60)
                
                ZStack {
                    Rectangle()
                        .frame(width:wd,height: hg)
                        .foregroundColor(Color.gray)
                        .cornerRadius(10)
                    Button(action: {
                        withAnimation {
                            self.showDetails.toggle()
                            self.fop=0
                            self.sop=1
                            self.wd = 450
                            self.hg=60
                            
                        }
                    }) {
                        Text("Search")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .opacity(fop)
                            .foregroundColor(Color.white)
                        
                    }
                    
                    if showDetails {
                        
                        HStack{
                            Image(systemName: "arrow.left")
                                
                                
                                .foregroundColor(Color.white)
                                .onTapGesture {
                                    withAnimation {
                                        self.showDetails.toggle()
                                        self.fop=1
                                        self.sop=0
                                        self.wd=365
                                        self.hg=50
                                    }
                            }
                            TextField("Movie,Tv-shows,artists..", text: $name)
                                .foregroundColor(Color.white)
                            
                            
                        }  .padding(.leading,50)
                            .transition(.asymmetric(insertion: .scale, removal: .opacity))
                            .foregroundColor(Color.white)
                            .opacity(sop)
                    }
                }
            }
      
        ScrollView(.vertical){
            VStack{
                Text("TODO")
                    .foregroundColor(Color.white)
            }.frame(maxWidth:.infinity,maxHeight: .infinity)
              
        
        }
            
        }
          .background(Color.black)
    }
}


struct profile:View {
    var body: some View{
        ScrollView(.vertical){
            
            VStack{
                Text("Profile")
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                HStack{
                    VStack{
                        //Username Stack
                        VStack{
                            Text("Username")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading,15)
                                .padding(.bottom,5)
                            
                            Text("hasan")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                //for move the text away from the beginning of the background
                                .padding(.leading,10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color.clear, lineWidth: 1)
                            ).background(RoundedRectangle(cornerRadius: 40).fill( Color.init(red: 68/255, green: 68/255, blue: 68/255)))
                                .padding(.leading,15)
                        }
                        
                        //Email Stack
                        VStack{
                            Text("Email")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading,15)
                                .padding(.bottom,5)
                            Text("hasan@gmail.com")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                //for move the text away from the beginning of the background
                                .padding(.leading,10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color.clear, lineWidth: 1)
                            ).background(RoundedRectangle(cornerRadius: 40).fill( Color.init(red: 68/255, green: 68/255, blue: 68/255)))
                                .padding(.leading,15)
                        }
                        .padding(.top,10)
                    }
                        
                        //silinecek
                        .foregroundColor(Color.white)
                    //ProfilePhoto Stack
                    VStack{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.trailing,15)
                            //for lining image with personal inf stack
                            .padding(.top,15)
                            .foregroundColor(Color.gray)
                        
                        //Edit Button
                        HStack{
                            Text("Edit")
                                .padding(.leading,15)
                            
                            
                            Image(systemName: "pencil")
                                .padding(.trailing,15)
                        }
                            
                        .padding(.top,2)
                        .padding(.bottom,2)
                        .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.gray, lineWidth: 1))
                            
                            .padding(.trailing,15)
                    }
                }
                    //for bring the stack closer to the title.
                    .padding(.top,-20)
            }
            Divider()
                .background(Color.init(red: 68/255, green: 68/255, blue: 68/255))
            VStack{
                
                Text("Your stats")
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,15)
                
                
                VStack{
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 6, height: 6)
                            .foregroundColor(Color.init(red: 41/255, green: 182/255, blue: 246/255))
                        Text("Comments: ")
                        Text("233")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,15)
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 6, height: 6)
                            .foregroundColor(Color.init(red: 139/255, green: 195/255, blue: 74/255))
                        Text("Likes: ")
                        Text("67")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,15)
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 6, height: 6)
                            .foregroundColor(Color.init(red: 211/255, green: 47/255, blue: 47/255))
                        Text("Dislikes: ")
                        Text("25")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,15)
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 6, height: 6)
                            .foregroundColor(Color.init(red: 205/255, green: 220/255, blue: 57/255))
                        Text("Favorites: ")
                        Text("35")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,15)
                }
            }
            .foregroundColor(Color.white)
            
            Divider()
                .background(Color.init(red: 68/255, green: 68/255, blue: 68/255))
            VStack{
                Text("Settings")
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Text("Selected Language")
                    
                    
                    HStack{
                        Text("English")
                        Image(systemName: "chevron.down")
                    }           .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                
            }
            .foregroundColor(Color.white)
            .padding(.leading,15)
        }
        .padding(.top,30)
        .background(Color.black)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
