// MyContainer.m file
#import "MyContainer.h"

@implementation MyContainer

- (instancetype)init {
    self = [super init];
    if (self) {
        self.isNewYear = [[ROXFlag alloc] init];
        self.greetingValue = [[ROXConfigurationString alloc] initWithDefaultValue:@"Hello, World!"];
    }
    NSLog(@"Initializing container %p", self.isNewYear);
    return self;
}

@end
