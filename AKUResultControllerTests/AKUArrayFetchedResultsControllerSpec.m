#import "Kiwi.h"
#import "AKUResultController.h"

@interface AKUResultController ()
@property (nonatomic) NSString *sectionNameKeyPath;
@property (nonatomic) NSString *sectionNameKey;
@property (nonatomic) id sortKeys;
@property (nonatomic) id sectionsByName;
@property (nonatomic) id sectionIndexTitlesSections;
@property (nonatomic) NSArray *sortDescriptors;
@end

SPEC_BEGIN(AKUResultControllerSpec)
describe(@"AKUResultControllerc", ^{
    __block AKUResultController *controller;
    beforeEach(^{
        controller = [[AKUResultController alloc] initWithArray:@[] groupedBy:nil withPredicate:nil sortedBy:nil ascending:YES ];
    });
});
SPEC_END