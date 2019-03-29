//
//  ViewController.swift
//  SnapkitDemo
//
//  Created by MacOS on 2019/3/29.
//  Copyright © 2019 MacOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let back:UIView = UIView()
    
    let view1:UIView = UIView()
    
    let view2:UIView = UIView()
    
    let view3:UIView = UIView()
    
    let view4:UIView = UIView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //示例1
        //demo1()
        
        //示例2
        //demo2()
        
        //示例3
        //demo3()
        
        //示例4
        //demo4()
        
        //示例5
        demo5()
        
    }
    
    //示例1 根据父类布局
    func demo1(){
        
        self.view.addSubview(back)
        back.backgroundColor = .black
        
        back.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(40)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-40)
        }
        
        
        view1.backgroundColor = .red
        
        back.addSubview(view1)
        
        view1.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-10)
        }
        
        view2.backgroundColor = .blue
        
        view1.addSubview(view2)
        
        view2.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-10)
        }
        
        view3.backgroundColor = .orange
        
        view2.addSubview(view3)
        
        view3.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-10)
        }
    }
    
    //示例2 三垂直
    func demo2(){
        
        self.view.addSubview(back)
        back.backgroundColor = .black
        
        back.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(40)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-40)
        }
        
        
        view1.backgroundColor = .red
        
        back.addSubview(view1)
        
        view1.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(100)
        }
        
        view2.backgroundColor = .blue
        
        back.addSubview(view2)
        
        view2.snp.makeConstraints { (make) in
            make.top.equalTo(view1.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(view1.snp_height)
        }
        
        view3.backgroundColor = .orange
        
        back.addSubview(view3)
        
        view3.snp.makeConstraints { (make) in
            make.top.equalTo(view2.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(view1.snp_height)
        }
    }
    
    //示例3。设置各自固定宽度
    func demo3(){
        
        self.view.addSubview(back)
        back.backgroundColor = .black
        
        back.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(40)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-40)
        }
        
        
        view1.backgroundColor = .red
        
        back.addSubview(view1)
        
        view1.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            make.width.equalTo(150)
            make.height.equalTo(100)
        }
        
        view2.backgroundColor = .blue
        
        back.addSubview(view2)
        
        view2.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(view1.snp.right).offset(10)
            make.width.equalTo(30)
            make.height.equalTo(view1.snp_height)
        }
        
        view3.backgroundColor = .orange
        
        back.addSubview(view3)
        
        view3.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(view2.snp.right).offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(view1.snp_height)
        }
    }
    
    //示例4  自动根据屏幕平分宽度
    func demo4(){
        
        self.view.addSubview(back)
        back.backgroundColor = .black
        
        back.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(40)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-40)
        }
        
        
        view1.backgroundColor = .red
        
        back.addSubview(view1)
        
        view1.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            make.height.equalTo(100)
        }
        
        view2.backgroundColor = .blue
        
        back.addSubview(view2)
        
        view2.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(view1.snp.right).offset(10)
            make.width.equalTo(view1.snp.width)
            make.height.equalTo(view1.snp_height)
        }
        
        
        view3.backgroundColor = .yellow
        
        back.addSubview(view3)
        
        view3.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(view2.snp.right).offset(10)
            make.width.equalTo(view2.snp.width)
            make.height.equalTo(view2.snp_height)
        }
        
        view4.backgroundColor = .orange
        
        back.addSubview(view4)
        
        view4.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(view3.snp.right).offset(10)
            make.right.equalToSuperview().offset(-10)
            make.width.equalTo(view3.snp.width)
            make.height.equalTo(view3.snp_height)
        }
    }
    
    //示例5  自动根据屏幕平分宽度 等高 只需修改一句代码
    func demo5(){
        
        self.view.addSubview(back)
        back.backgroundColor = .black
        
        back.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(40)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-40)
        }
        
        
        view1.backgroundColor = .red
        
        back.addSubview(view1)
        
        view1.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            //make.height.equalTo(100)
            make.height.equalTo(view1.snp_width)
        }
        
        view2.backgroundColor = .blue
        
        back.addSubview(view2)
        
        view2.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(view1.snp.right).offset(10)
            make.width.equalTo(view1.snp.width)
            make.height.equalTo(view1.snp_height)
        }
        
        
        view3.backgroundColor = .yellow
        
        back.addSubview(view3)
        
        view3.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(view2.snp.right).offset(10)
            make.width.equalTo(view2.snp.width)
            make.height.equalTo(view2.snp_height)
        }
        
        view4.backgroundColor = .orange
        
        back.addSubview(view4)
        
        view4.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(view3.snp.right).offset(10)
            make.right.equalToSuperview().offset(-10)
            make.width.equalTo(view3.snp.width)
            make.height.equalTo(view3.snp_height)
        }
    }

}

