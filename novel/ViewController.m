//
//  ViewController.m
//  novel
//
//  Created by moksoft on 2013/12/08.
//  Copyright (c) 2013年 vip. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // テキスト原稿初期化
    arrTekisuto = @[
                    @"ある日の暮方の事である。一人の下人げにんが、羅生門らしょうもんの下で雨やみを待っていた。",
                    @"広い門の下には、この男のほかに誰もいない。ただ、所々丹塗にぬりの剥はげた、大きな円柱まるばしらに、蟋蟀きりぎりすが一匹とまっている。",
                    @"朱雀大路すざくおおじにある以上は、この男のほかにも、雨やみをする市女笠いちめがさや揉烏帽子もみえぼしが、もう二三人はありそうなものである。それが、この男のほかには誰もいない。",
                    @"何故かと云うと、この二三年、京都には、地震とか辻風つじかぜとか火事とか饑饉とか云う災わざわいがつづいて起った。そこで洛中らくちゅうのさびれ方は一通りではない。",
                    @"旧記によると、仏像や仏具を打砕いて、その丹にがついたり、金銀の箔はくがついたりした木を、路ばたにつみ重ねて、薪たきぎの料しろに売っていたと云う事である。",
                    @"洛中がその始末であるから、羅生門の修理などは、元より誰も捨てて顧る者がなかった。するとその荒れ果てたのをよい事にして、狐狸こりが棲すむ。",
                    @"盗人ぬすびとが棲む。とうとうしまいには、引取り手のない死人を、この門へ持って来て、棄てて行くと云う習慣さえ出来た。そこで、日の目が見えなくなると、誰でも気味を悪るがって、この門の近所へは足ぶみをしない事になってしまったのである。",
                    
                    ];
    
    tekisuto_idx = 0;
    
    // UILabelを空にする
    [tekisuto setText:@""];
    
    
    // 背景画像を表示する
    NSData *imgdata = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://white-knight.blog.so-net.ne.jp/blog/_images/blog/_f26/white-knight/6348107.jpg"]];
    UIImage *img = [UIImage imageWithData:imgdata];
    haikei_gazou.image = img;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// 文字をUILabelへセットする
- (void)setGenko
{
    [tekisuto setText:[arrTekisuto objectAtIndex:tekisuto_idx]];
}

// ボタンが押された時
- (IBAction)pushButton:(id)sender
{
    
    tekisuto_idx++;
    if ( tekisuto_idx >= [arrTekisuto count] ) return;
    
    [self setGenko];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self setGenko];
}

@end
