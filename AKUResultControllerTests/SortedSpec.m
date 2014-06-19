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

SPEC_BEGIN(SortedSpec)
describe(@"SortedSpec", ^{
    __block AKUResultController *controller;
    beforeEach(^{
        controller = [[AKUResultController alloc] initWithArray:@[] groupedBy:nil withPredicate:nil sortedBy:nil ascending:YES ];
    });
    describe(@"twe object", ^{
        __block NSDictionary *first;
        __block NSDictionary *second;
        beforeAll(^{
            first = @{ @"identification" : @1 };
            second = @{ @"identification" : @2 };
            controller = [[AKUResultController alloc] initWithArray:@[first, second] groupedBy:nil withPredicate:nil sortedBy:@"identification" ascending:YES];
        });
        describe(@"array", ^{
            __block NSArray *fetchedObjects;
            beforeAll(^{
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
});
SPEC_END