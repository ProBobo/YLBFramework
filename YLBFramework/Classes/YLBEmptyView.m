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
//        [self setupSubviews];
//        [self setupSubviews2];
        [self setupSubviews3];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _imageView.frame = self.bounds;
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
    
    UIImage *image = [UIImage imageNamed:@"icon_grid_emptyView" inBundle:bundle compatibleWithTraitCollection:nil];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView = imageView;
    imageView.image = image;
    [self addSubview:imageView];
}

- (void)setupSubviews2 {
    NSString *imgPath = @"YLBFramework.bundle/icon_grid_emptyView";
    UIImage *image = [UIImage imageNamed:imgPath
                          inBundle: [NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView = imageView;
    imageView.image = image;
    [self addSubview:imageView];
}

- (void)setupSubviews3 {
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Frameworks/YLBFramework.framework/YLBFramework.bundle" ofType:nil];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    imageView.image = [UIImage imageNamed:@"icon_grid_emptyView" inBundle:bundle compatibleWithTraitCollection:nil];
    [self addSubview:imageView];
}
@end
