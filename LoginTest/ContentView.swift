//
//  ContentView.swift
//  LoginTest
//
//  Created by zp on 2022/11/26.
//

import SwiftUI

struct ContentView: View {
    @State var phone:String = ""
    @State var password:String = ""
    @State var agree:Bool = false
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("账号")
                    TextField("酷狗ID/邮箱/用户名",text:$phone)
                }
                .padding()
                .background(Color(red: 0.979, green: 0.989, blue: 0.993))
                .padding(.top,20)
                
                HStack {
                    Text("密码")
                    SecureField("请输入密码",text:$password)
                }
                .padding()
                .background(Color(red: 0.979, green: 0.989, blue: 0.993))
                .padding(.bottom,50)
                
                
                
                Button(action:login) {
                    HStack {
                        Spacer()
                        Text("登录")
                            .foregroundColor(Color.white)
                            .font(.system(size:20))
                        Spacer()
                        
                        
                    }
                }.padding()
                    .background(Color(red: 0.026, green: 0.729, blue: 1.001))
                    .cornerRadius(24)
                
                HStack{
                    Button(action:findPassword) {
                        Text("找回密码")
                    }
                    
                    Text("|")
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                    
                    Button(action:lostPassword){
                        Text("忘记密码")
                        
                    }
                }
                .padding()
                .padding(.top,10)
    
                Spacer()
                HStack(alignment: .center, spacing: 0.0){
                    CheckBoxView(checked: $agree)
                        .padding(.trailing,6)
                    Text("同意")
                      
                    Button (action:goProtocal){
                        Text("《用户协议》")
                    }
                    Text("和")
                    Button (action:goPrivacy){
                        Text("《隐私政策》")
                    }
                } .font(.system(size:15))
                    
                    
                
            }
            .padding()
            .navigationBarTitle(
                Text("账号密码登录"),displayMode: .inline
            )
            .navigationBarBackButtonHidden(false)
     
        }
        
        
    }
    
    func goProtocal() {
        
    }
    func goPrivacy() {
        
    }
    func login() {
        
    }
    
    func findPassword() {
        
    }
    
    func lostPassword() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
