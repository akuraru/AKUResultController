//
// Created by akuraru on 2014/06/19.
// Copyright (c) 2014 azu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/NSFetchedResultsController.h>

@protocol NSFetchedResultsControllerDelegate;
@protocol NSFetchedResultsSectionInfo;

@interface AKUResultsController : NSObject {
@private
    NSString *_sectionNameKeyPath;
    NSString *_sectionNameKey;
    id _sortKeys;
    id _fetchedObjects;
    id _sections;
    id _sectionsByName;
    id _sectionIndexTitles;
    id _sectionIndexTitlesSections;
}

- (id)initWithArray:(NSArray *)array groupedBy:(NSString *)groupedTerm withPredicate:(NSPredicate *)searchTerm sortedBy:(NSString *)sortTerm ascending:(BOOL)ascending;

@property(nonatomic, readonly) NSString *sectionNameKeyPath;

@property(weak, nonatomic) id <NSFetchedResultsControllerDelegate, NSObject> delegate;

@property(nonatomic, readonly) NSMutableArray *fetchedObjects;

- (id)objectAtIndexPath:(NSIndexPath *)indexPath;

- (NSIndexPath *)indexPathForObject:(id)object;

@property(nonatomic, readonly) NSArray *sections;


- (void)addObject:(id)object;

- (void)updateObject:(id)object;

- (void)updateObjects:(NSArray *)object;

- (void)removeObject:(id)object;

- (void)removeAll;

- (void)addObjects:(NSArray *)array;
@end
