//
//  ViewController.h
//  novel
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    // 背景画像
    IBOutlet UIImageView *haikei_gazou;
    
    // テキスト
    IBOutlet UILabel *tekisuto;
    
    
    // テキスト原稿
    NSArray *arrTekisuto;
    
    // 原稿のidx
    int tekisuto_idx;
    
    
}

// ボタンを押した時の処理
-(IBAction)pushButton:(id)sender;



@end
