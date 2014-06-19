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

SPEC_BEGIN(SortedSpec)
describe(@"SortedSpec", ^{
    __block AKUResultsController *controller;
    __block NSDictionary *first;
    __block NSDictionary *second;
    beforeEach(^{
        first = @{ @"identification" : @1 };
        second = @{ @"identification" : @2 };
        controller = [[AKUResultsController alloc] initWithArray:@[second, first] groupedBy:nil withPredicate:nil sortedBy:@"identification" ascending:YES];
    });
    describe(@"sorted array", ^{
        __block NSArray *fetchedObjects;
        beforeEach(^{
            fetchedObjects = controller.fetchedObjects;
        });
        it(@"2 array init", ^{
            [[theValue(fetchedObjects.count) should] equal:theValue(2)];
        });
        it(@"sorted id", ^{
            [[fetchedObjects should] equal:@[first, second]];
        });
    });
});
SPEC_END