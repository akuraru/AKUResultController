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

SPEC_BEGIN(EmptySpec)
describe(@"EmptySpec", ^{
    __block AKUResultController *controller;
    beforeEach(^{
        controller = [[AKUResultController alloc] initWithArray:@[] groupedBy:nil withPredicate:nil sortedBy:nil ascending:YES ];
    });
    it(@"non nil", ^{
        [[controller shouldNot] beNil];
    });
    it(@"0 array init", ^{
        [[controller.fetchedObjects should] equal:@[]];
    });
    it(@"sortKey is nil", ^{
        [[controller.sortKeys should] beNil];
    });
    it(@"sectionNameKeyPath is nil", ^{
        [[controller.sectionNameKeyPath should] beNil];
    });
});
SPEC_END