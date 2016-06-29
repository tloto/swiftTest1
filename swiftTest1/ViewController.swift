//
//  ViewController.swift
//  swiftTest1
//
//  Created by TollyAlamo on 15/7/1.
//  Copyright (c) 2015年 TollyAlamo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switfToObjcBut: UIButton!
    
    @IBAction func butClickEvent(sender: UIButton) {
        
        if sender==self.switfToObjcBut{
            let My=Myobjc();
            self.presentViewController(My, animated:false, completion: nil)
        
        }
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        debugPrint("hello world");
        NSLog("Hello world")

//        常量let
//        self .ChangLiang_let()
        
//        变量var
//        self.Bianliang_var()
        
//        元组
//        self.tuples_fun()
        
//        可选
//        self.optionals_func();
        
//       断言
//        self.duanyan_assert();
        

//        运算符
//        self.operator_test();


//        数组
//        self.shuzu_array();
        
//        函数
       let hellostr = self.sayhello("雯雯");
        debugPrint("函数返回 ： \(hellostr)");
        
        
    }


//    常量  let
     func ChangLiang_let(){
        let imlicitinteger=70
        let implictint=70.0
        debugPrint("hello impliciteger =\(imlicitinteger)")
        debugPrint("hello implictint =\(implictint)")
        
        let str="hello string"
        debugPrint(str)
        
        let orangesAreOrange = true
        _ = false
        
        if orangesAreOrange{
        debugPrint("orangesAreOrange = \(orangesAreOrange)")
        }
    
    }
    
    //    变量  var
    func Bianliang_var(){
        
        var tt=32
        debugPrint("tt = \(tt)")
        tt+=4
        debugPrint("tt = \(tt)")
        
        let mystr = "====hello==="+"World===="
        debugPrint(mystr)
        debugPrint(mystr)
        
        let zhuanhua :Float = 90
        debugPrint("zhuanhua = \(zhuanhua)")
        
        let z_h_int = Int (zhuanhua)
        debugPrint("z_h_int = \(z_h_int)")
        
    }
    
    
//    元组   
    func tuples_fun(){
    
        let http404Error=(404,"Not Found","hello")
        debugPrint("http404Error = \(http404Error)\n")
    
        let (statucode,statusMessage,_)=http404Error
        
        debugPrint("statucode is : \(statucode)")
        debugPrint("http404Error.0 is : \(http404Error.0)\n")
        
        debugPrint("statusMessage is : \(statusMessage)")
        debugPrint("http404Error.1 is : \(http404Error.1)\n")
        
        let (hello1,_,_)=http404Error;
        debugPrint("hello1 is : \(hello1)\n")
        
        let (_,hello3,_)=http404Error;
        debugPrint("hello3 is: \(hello3)\n");
        
        let (_,ha2,_)=http404Error;
        debugPrint("ha2 is : \(ha2)\n");
        
        var http200Status=(Statu200Code:200,Statu200Description:"OK");
        debugPrint("http200Status.Statu200Code is :  \(http200Status.Statu200Code)");
        debugPrint("http200Status.Statu200Description is :  \(http200Status.Statu200Description)\n");
        
        http200Status.Statu200Description="changed  OK";
        debugPrint("http200Status.Statu200Description is :  \(http200Status.Statu200Description)")
        
    }
    
//    可选
    func optionals_func(){
    
        var possibleNumber:String = "123";
        let convertedNumber = Int(possibleNumber);
    
        if (convertedNumber != nil){
            debugPrint("\(possibleNumber) has an integer value of \(convertedNumber!)\n");
        }
        
        possibleNumber="hello";
        
        let conv_number=Int(possibleNumber);
        
        if (conv_number != nil){
        
            debugPrint("\(possibleNumber) has an integer value of \(convertedNumber!)\n");
        
        }else{
        
            debugPrint("\(possibleNumber) could not be converted to an integer\n");
        
        }
        
        
//        解析可选
        let surveyAnswer:String?="an optional string";
        debugPrint(surveyAnswer!);
        
//        隐式解析可选
        let assumedString:String!="an implicitly unwrapped optional string";
        debugPrint(assumedString);
    
    }
    
    
//    断言
    func duanyan_assert(){
    
        let age=3;
        assert(age>0, "断言： 条件为真 继续执行");
        
        assert(age<0, "a person's age can not be less than zero");
        debugPrint("断言：条件为假 断")
        
    
    }
    
//    运算符
    func operator_test(){
    
        let name = "world";
        let helloname="hello"+name;
        
        if (helloname == "helloworld"){
        
            debugPrint("welcome : \(helloname)")
            
        }else{
            debugPrint("sorry : \(helloname)");
        }
        
        let judge=true;
        let a = judge ? 3:4;
        debugPrint("a = \(a)\n");
        
//        for 循环
        for i in 1...3 {
            debugPrint("\(i) times 5 is \(i * 5)");
        
        }
        debugPrint("\n");
        
        for _ in 1...3 {
            debugPrint("======");
            
        }
        debugPrint("\n");
        
        let names=["Anna","Alex","Brian","Jack"];
        for name in names {
            debugPrint("hello: \(name)");
            
        }
        debugPrint("\n");
        
        let Dictnames=["Anna":2,"Alex":4,"Brian":8,"Jack":4];
        for (name,ageCount) in Dictnames {
            debugPrint("\(name) age is : \(ageCount)");
            
        }
        debugPrint("\n");
        
        for i in 6 ..< 8 {
            debugPrint("\(i) times 5 is \(i * 5)");
        }
        debugPrint("\n");
        
        
        switch 4{
        
        case 1...5:
            debugPrint("dddd");
        default:
            debugPrint("fffff")
        
        }
        
        
        let yetAnotherPoint = (1,-1);
        switch yetAnotherPoint{
        
        case let (x,y) where x==y:
            debugPrint("\(x),\(y) is on the line x==y");
        case let (x,y) where x == -y:
            debugPrint("\(x),\(y) is on the line x==-y");
        case let (x,y):
            debugPrint("\(x),\(y) is just some arbitrary point");
        
        
        }
        
        
        
        
        
    
    }
    
    
    
    
//  swift界面跳转objc界面
    func tiaozhuan(){
    
        let My=Myobjc();
        self.presentViewController(My, animated:true, completion: nil)
    
    
    }
    
    
//    数组
    func shuzu_array(){
    
        var shoppinglist: [String] = ["Eggs" , "Milk"];
        
        shoppinglist.append("flour");
        shoppinglist+=["hell","dseaa"];
        
        shoppinglist.insert("insertItem", atIndex: 0);
        debugPrint("shopping list is \(shoppinglist)");
        shoppinglist.removeAtIndex(0);
        debugPrint("shopping list is \(shoppinglist)");
        debugPrint("the shopping list contrains \(shoppinglist.count) items.");
        debugPrint("shopping list is \(shoppinglist)");
        if shoppinglist.isEmpty {
            debugPrint("shopping list is empty");
        }else{
            debugPrint("shopping list isn't  empty");
        }
    
    
        
        for item in shoppinglist{
            debugPrint(item);
        }
        
        debugPrint("=====sdgawrg====\n");
        
        
        for (index,value) in shoppinglist.enumerate(){
        
            debugPrint("Item \(index): \(value)");
        
        }
        
        
        var someInts = [Int]();
        someInts.append(3);
        
        let threedoubles = [Double](count:3,repeatedValue:0.0);
        for item in threedoubles{
        
            debugPrint(item);
            
        }
        
        
        let anotherThreeeDoubles = Array(count: 3, repeatedValue: 2.5);
        let sixDoubles = threedoubles + anotherThreeeDoubles;
        
        for (index,value) in sixDoubles.enumerate(){
        
            debugPrint("item \(index): \(value)");
        
        }
        debugPrint("\n======字典======\n");
        
        var airport:Dictionary<String,String> = ["TYO":"Tokyo","DUB":"dublin"];
        
        airport["LHR"] = "london";
        debugPrint("airport = \(airport)");
        airport["LHR"] = "london heathrow";
        debugPrint("airport = \(airport)");
        
        
        if let oldvalue = airport.updateValue("dublin value changed", forKey: "DUB")
        {
            debugPrint("the old value of DUB : \(oldvalue)");
        }
        
        
        if let airportname = airport["DUB"]{
            debugPrint("the name of the airport is \(airportname)");
        }else{
            debugPrint("that airport is not in the airports dictionary");
        }
        
        if let removedValue = airport.removeValueForKey("DUB"){
            debugPrint("The removed airport's name is \(removedValue)");
        }else{
            debugPrint("The airports dictionary does not contain a value for DUB");
        }
        debugPrint("\n");
        for (airportCode,airportName) in airport{
            debugPrint("\(airportCode) : \(airportName)");
        }
        debugPrint("\n");
        for airportNm in airport.values{
        
            debugPrint("airport value : \(airportNm)");
        
        }
        
        
        debugPrint("\n");
        for airportCode in airport.keys{
            debugPrint("airport key : \(airportCode)");
        }
        
        
        debugPrint("\n");
        let airportNames=Array(airport.values);
        debugPrint("airportNames : \(airportNames)");
        
        debugPrint("\n");
        
        var namesOfInteger = Dictionary<String,Int>();
        namesOfInteger["sixteen"]=16;
        namesOfInteger["seventeen"]=17;
        debugPrint("nameOfInteer :  \(namesOfInteger)\n");
        
        var integerOfnames = Dictionary<Int,String>();
        integerOfnames[1]="one";
        integerOfnames[2]="two";
        debugPrint("integerOfNames : \(integerOfnames)");
        
        
    }
    
    
    func sayhello(personname: String) -> String{
    
        let greeeting = "hello" + personname + "!";
        return greeeting;
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

