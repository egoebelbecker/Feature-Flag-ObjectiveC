// MyContainer.m file
#import "MyContainer.h"

@implementation MyContainer

- (instancetype)init {
    self = [super init];
    if (self) {
        self.isNewYear = [[ROXFlag alloc] init];
    }
    return self;
}

@end
