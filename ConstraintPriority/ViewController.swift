//
//  ViewController.swift
//  ConstraintPriority
//
//  Created by lumanxi on 15/10/23.
//  Copyright © 2015年 fanfan. All rights reserved.
//

import UIKit



/**
 每个约束都会具有优先级（Priority），对应NSLayoutConstraint对象的priority属性：
 
具有优先级1000（UILayoutPriorityRequired）的约束为强制约束（Required Constraint），也就是必须要满足的约束；优先级小于1000的约束为可选约束（Optional Constraint）。默认创建的是强制约束。
 
 在使用自动布局后，某个视图的具体位置和尺寸可能由多个约束来共同决定。这些约束会按照优先级从高到低的顺序来对视图进行布局，也就是视图会优先满足优先级高的约束，然后满足优先级低的约束。
 
 If a constraint's priority level is less than UILayoutPriorityRequired, then it is optional.  Higher priority constraints are met before lower priority constraints.
 Constraint satisfaction is not all or nothing.  If a constraint 'a == b' is optional, that means we will attempt to minimize 'abs(a-b)'.
 This property may only be modified as part of initial set up.  An exception will be thrown if it is set after a constraint has been added to a view
 
 
 如果一个约束的优先级小于UILayoutPriorityRequired,那么它是可选的。更高的优先级约束是见过低优先级约束。约束满足不是全有或全无。如果一个约束的= = b”是可选的,这意味着我们将试图最小化的abs(a - b)。这个属性可能只是修改初始设置的一部分。会抛出一个异常,如果它被设置在一个约束添加到一个视图
 
 
 
 
 需要注意的是，只能修改可选约束的优先级，也就是说：
 
 不允许将优先级由小于1000的值改为1000
 不允许将优先级由1000修改为小于1000的值
 例如，如果将优先级由250修改为1000，则会抛出异常：
 
 *** Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'Mutating a priority from required to not on an installed constraint (or vice-versa) is not supported.  You passed priority 1000 and the existing priority was 250.'
 
 
 */

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var toVipLeft: NSLayoutConstraint! //999
    
    
    @IBOutlet weak var toNameLeft: NSLayoutConstraint! //749
    
    
    var flag = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        

        
        if flag {
            toVipLeft.priority = 749
            toNameLeft.priority = 999
        }else{
            toVipLeft.priority = 999
            toNameLeft.priority = 749
        }
        
        
        
        UIView.animateWithDuration(1) {
            
            self.view.layoutIfNeeded()
        }
        
        flag = !flag;
        
       
    }


}

