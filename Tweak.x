#import <UIKit/UIKit.h>

@interface YTPivotBarItemView : UIView
@property (strong, nonatomic) UIButton *navigationButton;
@end

%hook YTPivotBarView
- (void)setItemView3:(YTPivotBarItemView *)argument {
    argument.navigationButton.hidden = YES;
}

- (YTPivotBarItemView *)itemView3 {
    YTPivotBarItemView *orig = %orig;
    orig.navigationButton.hidden = YES;

    return nil;
}
%end
