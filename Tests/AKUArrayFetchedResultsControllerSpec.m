#import "Kiwi.h"
#import "AKUResultsController.h"

@interface AKUResultsController ()
@property (nonatomic) NSString *sectionNameKeyPath;
@property (nonatomic) NSString *sectionNameKey;
@property (nonatomic) id sortKeys;
@property (nonatomic) id sectionsByName;
@property (nonatomic) id sectionIndexTitlesSections;
@property (nonatomic) NSArray *sortDescriptors;
@end

SPEC_BEGIN(AKUResultControllerSpec)
describe(@"AKUResultControllerc", ^{
    __block AKUResultsController *controller;
    beforeEach(^{
        controller = [[AKUResultsController alloc] initWithArray:@[] groupedBy:nil withPredicate:nil sortedBy:nil ascending:YES ];
    });
});
SPEC_END