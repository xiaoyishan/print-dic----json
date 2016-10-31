//
//  ViewController.m
//  转json
//
//  Created by sundeariOS on 16/8/17.
//  Copyright © 2016年 谢鑫. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}




- (IBAction)begainAC:(id)sender {
    

    
    _textview.stringValue= [_textview.stringValue stringByReplacingOccurrencesOfString:@" =" withString:@"\" :"];
    _textview.stringValue= [_textview.stringValue stringByReplacingOccurrencesOfString:@";" withString:@","];
    
    _textview.stringValue= [_textview.stringValue stringByReplacingOccurrencesOfString:@"} " withString:@"},"];
    _textview.stringValue= [_textview.stringValue stringByReplacingOccurrencesOfString:@"] " withString:@"],"];
    _textview.stringValue= [_textview.stringValue stringByReplacingOccurrencesOfString:@") " withString:@"),"];
    

    NSArray *letters=@[@" a",@" b",@" c",@" d",@" e",@" f",@" g",@" h",@" i",@" j",@" k",@" l",@" m",@" n",@" o",@" p",@" q",@" r",@" s",@" t",@" u",@" v",@" w",@" x",@" y",@" z"];
    NSArray *Letters=@[@" A",@" B",@" C",@" D",@" E",@" F",@" G",@" H",@" I",@" J",@" K",@" L",@" M",@" N",@" O",@" P",@" Q",@" R",@" S",@" T",@" U",@" V",@" W",@" X",@" Y",@" Z"];
    for (int k=0; k<letters.count; k++) {
        _textview.stringValue= [_textview.stringValue stringByReplacingOccurrencesOfString:letters[k] withString:[NSString stringWithFormat:@"\"%@",letters[k]]];
    }
    for (int k=0; k<Letters.count; k++) {
        _textview.stringValue= [_textview.stringValue stringByReplacingOccurrencesOfString:Letters[k] withString:[NSString stringWithFormat:@"\"%@",Letters[k]]];
    }
    

}



- (void)textDidChange:(NSNotification *)notification{
    NSLog(@"-----------------");
}


- (IBAction)copytoSelf:(id)sender {
    
    
    
    
}



- (IBAction)seeONweb:(id)sender {
    //http://www.bejson.com/jsonviewernew/
    
    
}



-(NSString *) DicToJsonStr:(NSDictionary *)dic
{
    //防止dic为nil时的崩溃
    if (!dic) return nil;
    
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    
    NSString *str = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    if ([str length] > 0 && error == nil){
        return str;
    }else{
        return nil;
    }
}



@end
