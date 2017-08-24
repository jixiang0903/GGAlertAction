# GGAlertAction
cell实现Alert效果，可随意自定义选择视图

![image](https://github.com/jixiang0903/GGAlertAction/blob/master/2017-08-24%2014_59_06.gif)
导入头文件
#import "AlertAction.h"
#import "AlertView.h"

- (void)viewDidLoad {
    [super viewDidLoad];
    _actionImgShowRow = 0;
}
//图片固定不变
- (IBAction)AlertClick:(id)sender {
    AlertView *alertView = [AlertView popoverView];
    alertView.backgroundColor=[UIColor clearColor];
    alertView.showShade = YES; // 显示阴影背景
    [alertView showWithActions:[self QQActions]];
}
//显示选择行数
- (IBAction)selectAlertClick:(id)sender {
    AlertView *alertView = [AlertView popoverView];
    alertView.backgroundColor=[UIColor clearColor];
    alertView.showShade = YES; // 显示阴影背景
    [alertView showWithActions:[self selectActions]];

}

//图片不会被隐藏
- (NSMutableArray<AlertAction *> *)QQActions {
    // 发起多人聊天 action
    AlertAction *multichatAction = [AlertAction actionWithImage:[UIImage imageNamed:@"right_menu_multichat"] title:@"发起多人聊天" handler:^(AlertAction *action) {
        _textLabel.text = @"发起多人聊天";
    }];
    // 加好友 action
    AlertAction *addFriAction = [AlertAction actionWithImage:[UIImage imageNamed:@"right_menu_addFri"] title:@"加好友" handler:^(AlertAction *action) {
        _textLabel.text = @"加好友";
    }];
    // 扫一扫 action
    AlertAction *QRAction = [AlertAction actionWithImage:[UIImage imageNamed:@"right_menu_QR"] title:@"扫一扫" handler:^(AlertAction *action) {
        _textLabel.text = @"扫一扫";
    }];
    // 面对面快传 action
    AlertAction *facetofaceAction = [AlertAction actionWithImage:[UIImage imageNamed:@"right_menu_facetoface"] title:@"面对面快传" handler:^(AlertAction *action) {
        _textLabel.text = @"面对面快传";
    }];
    // 付款 action
    AlertAction *payMoneyAction = [AlertAction actionWithImage:[UIImage imageNamed:@"right_menu_payMoney"] title:@"付款" handler:^(AlertAction *action) {
        _textLabel.text = @"付款";
    }];
    // 取消
    AlertAction *cancelAction = [AlertAction actionWithTitle:@"取消" handler:^(AlertAction *action) {
        _textLabel.text = @"取消";
    }];
    NSArray *section1 =@[multichatAction, addFriAction, QRAction, facetofaceAction, payMoneyAction];
    NSArray *section2 =@[cancelAction];
    NSMutableArray *actionArr=[NSMutableArray arrayWithObjects:section1, section2, nil];
    return actionArr;
}

//图片默认隐藏，选择后对应行数图片显示
- (NSMutableArray<AlertAction *> *)selectActions {
    // 全部支付 action
    AlertAction *allPayAction = [AlertAction actionWithImage:[UIImage imageNamed:@"selcetShape"] title:@"全部支付" handler:^(AlertAction *action) {
        _textLabel.text = @"全部支付";
        _actionImgShowRow = 0;
    }];
    // 快捷支付 action
    AlertAction *fastAction = [AlertAction actionWithImage:[UIImage imageNamed:@"selcetShape"] title:@"快捷支付" handler:^(AlertAction *action) {
        _textLabel.text = @"快捷支付";
        _actionImgShowRow = 1;
    }];
    // 银行划账 action
    AlertAction *bankAction = [AlertAction actionWithImage:[UIImage imageNamed:@"selcetShape"] title:@"银行划账" handler:^(AlertAction *action) {
        _textLabel.text = @"银行划账";
        _actionImgShowRow = 2;
    }];
    // 微信支付 action
    AlertAction *weixinAction = [AlertAction actionWithImage:[UIImage imageNamed:@"selcetShape"] title:@"微信支付" handler:^(AlertAction *action) {
        _textLabel.text = @"微信支付";
        _actionImgShowRow = 3;
    }];
    // 支付宝支付 action
    AlertAction *zhifubaoAction = [AlertAction actionWithImage:[UIImage imageNamed:@"selcetShape"] title:@"支付宝支付" handler:^(AlertAction *action) {
        _textLabel.text = @"支付宝支付";
        _actionImgShowRow = 4;
    }];
    // 取消
    AlertAction *cancelAction = [AlertAction actionWithTitle:@"取消" handler:^(AlertAction *action) {
        _textLabel.text = @"取消";
    }];
    
    NSArray *section1 =@[allPayAction, fastAction, bankAction, weixinAction, zhifubaoAction];
    NSArray *section2 =@[cancelAction];
    AlertAction *alert=[[AlertAction alloc]init];
    alert.selectRow = _actionImgShowRow;
    NSMutableArray *actionArr=[NSMutableArray arrayWithObjects:section1, section2, alert, nil];
    return actionArr;
}
