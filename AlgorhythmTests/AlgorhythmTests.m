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

//testing musicLibrary class and playlist class

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

- (void)testPlaylistDictionaryNotNil {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        XCTAssertNotNil(playlistDictionary, @"playlistDictionary was nil");
    }
}

- (void)testPlaylistDictionaryIsDictionary {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        id playlistDictionary = self.musicLibrary.library[i];
        XCTAssertTrue([playlistDictionary isKindOfClass:[NSDictionary class]], @"playlistDictionary is of class'%@'", [playlistDictionary class]);
    }
}

- (void)testPlaylistTitleNotNil {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSString *playlistTitle = [playlistDictionary objectForKey:kTitle];
        XCTAssertNotNil(playlistTitle, @"playlistTitle was nil");
    }
}

- (void)testPlaylistTitleIsString {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        id playlistTitle = [playlistDictionary objectForKey:kTitle];
        XCTAssertTrue([playlistTitle isKindOfClass:[NSString class]], @"playlistTitle is of class'%@'", [playlistTitle class]);
    }
}

- (void)testPlaylistDescriptionNotNil {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSString *playlistDescription = [playlistDictionary objectForKey:kDescription];
        XCTAssertNotNil(playlistDescription, @"playlistDescription was nil");
    }
}

- (void)testPlaylistDescriptionIsString {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        id playlistDescription = [playlistDictionary objectForKey:kDescription];
        XCTAssertTrue([playlistDescription isKindOfClass:[NSString class]], @"playlistDescription is of class'%@'", [playlistDescription class]);
    }
}

- (void)testPlaylistIconNotNil {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSString *playlistIcon = [playlistDictionary objectForKey:kIcon];
        XCTAssertNotNil(playlistIcon, @"playlistIcon was nil");
    }
}

- (void)testPlaylistIconIsString {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        id playlistIcon = [playlistDictionary objectForKey:kIcon];
        XCTAssertTrue([playlistIcon isKindOfClass:[NSString class]], @"playlistIcon is of class'%@'", [playlistIcon class]);
    }
}

- (void)testPlaylistIconReturnsImage {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSString *playlistIcon = [playlistDictionary objectForKey:kIcon];
        id playlistIconImage = [UIImage imageNamed:playlistIcon];
        XCTAssertTrue([playlistIconImage isKindOfClass:[UIImage class]], @"playlistIconImage is of class'%@'", [playlistIconImage class]);
    }
}

- (void)testPlaylistIconLargeNotNil {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSString *playlistIconLarge = [playlistDictionary objectForKey:kLargeIcon];
        XCTAssertNotNil(playlistIconLarge, @"playlistIconLarge was nil");
    }
}

- (void)testPlaylistIconLargeIsString {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        id playlistIconLarge = [playlistDictionary objectForKey:kLargeIcon];
        XCTAssertTrue([playlistIconLarge isKindOfClass:[NSString class]], @"playlistIconLarge is of class'%@'", [playlistIconLarge class]);
    }
}

- (void)testPlaylistIconLargeReturnsImage {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSString *playlistIconLarge = [playlistDictionary objectForKey:kLargeIcon];
        id playlistIconLargeImage = [UIImage imageNamed:playlistIconLarge];
        XCTAssertTrue([playlistIconLargeImage isKindOfClass:[UIImage class]], @"playlistIconLargeImage is of class'%@'", [playlistIconLargeImage class]);
    }
}

- (void)testPlaylistColorDictionaryNotNil {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        XCTAssertNotNil(colorDictionary, @"colorDictionary was nil");
    }
}

- (void)testPlaylistColorDictionaryIsDictionary {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        id playlistDictionary = self.musicLibrary.library[i];
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        XCTAssertTrue([colorDictionary isKindOfClass:[NSDictionary class]], @"colorDictionary is of class'%@'", [colorDictionary class]);
    }
}

- (void)testPlaylistColorDictionaryValuesNotNil {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        id playlistDictionary = self.musicLibrary.library[i];
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        for (NSString *key in colorDictionary) {
            id color = [colorDictionary objectForKey:key];
            XCTAssertNotNil(color, @"color was nil");
        }
    }
}

- (void)testPlaylistArtistsArrayNotNil {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSArray *playlistArtistsArray = [playlistDictionary objectForKey:kArtists];
        XCTAssertNotNil(playlistArtistsArray, @"playlistArtists was nil");
    }
}

- (void)testPlaylistArtistsArrayIsArray {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        id playlistArtistsArray = [playlistDictionary objectForKey:kArtists];
        XCTAssertTrue([playlistArtistsArray isKindOfClass:[NSArray class]], @"playlistArtistsArray is of class'%@'", [playlistArtistsArray class]);
    }
}

- (void)testPlaylistArtistsNotNil {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSArray *playlistArtistsArray = [playlistDictionary objectForKey:kArtists];
        for (int i = 0; i < [playlistArtistsArray count]; i++) {
            XCTAssertNotNil(playlistArtistsArray[i], @"playlistArtist was nil");
        }
    }
}

- (void)testPlaylistArtistsAreStrings {
    for (NSUInteger i = 0; i < [self.musicLibrary.library count]; i++) {
        NSDictionary *playlistDictionary = self.musicLibrary.library[i];
        NSArray *playlistArtistsArray = [playlistDictionary objectForKey:kArtists];
        for (int i = 0; i < [playlistArtistsArray count]; i++) {
            XCTAssertTrue([playlistArtistsArray[i] isKindOfClass:[NSString class]], @"playlistArtist is of class'%@'", [playlistArtistsArray[i] class]);
        }
    }
}



@end
