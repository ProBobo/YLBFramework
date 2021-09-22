//
//  YLBEmptyView.m
//  YLBFramework-YLBFramework
//
//  Created by yulibo on 2021/9/18.
//

#import "YLBEmptyView.h"

@interface YLBEmptyView ()
@property(nonatomic, strong) UIImageView *imageView;
@end

@implementation YLBEmptyView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubviews];
    }
    return self;
}

- (void)setupSubviews {
    NSBundle *bundle;
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath stringByAppendingPathComponent:@"YLBFramework.bundle"];
    bundle = [NSBundle bundleWithPath:bundlePath];
    
    NSError *error = nil;
    if ([bundle loadAndReturnError:&error]) {
        NSLog(@"bundle load framework success.");
    }
    else {
        NSLog(@"bundle load framework err:%@",error);
    }
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView = imageView;
    UIImage *image = [UIImage imageNamed:@"icon_grid_emptyView" inBundle:bundle compatibleWithTraitCollection:nil];
    imageView.image = image;
    [self addSubview:imageView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _imageView.frame = self.bounds;
}

@end
