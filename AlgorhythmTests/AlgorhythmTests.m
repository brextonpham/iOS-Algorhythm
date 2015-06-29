//
//  AlgorhythmTests.m
//  AlgorhythmTests
//
//  Created by Brexton Pham on 6/15/15.
//  Copyright (c) 2015 Brexton Pham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MusicLibrary.h"

@interface AlgorhythmTests : XCTestCase

@property (nonatomic) MusicLibrary *musicLibrary;

@end

@implementation AlgorhythmTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.musicLibrary = [[MusicLibrary alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.musicLibrary = nil;
    [super tearDown];
}

- (void)testMusicLibraryNotNil {
    XCTAssertNotNil(self.musicLibrary, @"music library model was nil");
}

- (void)testLibraryArrayNotNil {
    XCTAssertNotNil(self.musicLibrary.library, @"library array was nil");
}

- (void)testMusicLibraryArrayIsArray {
    id library = self.musicLibrary.library;
    XCTAssertTrue([library isKindOfClass:[NSArray class]], @"library is of class: '%@'", [library class]);
}

@end
