//
//  CalSmoke_calUITests.m
//  CalSmoke-calUITests
//
//  Created by Teresa Peters on 3/30/16.
//  Copyright © 2016 Calabash. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface CalSmoke_calUITests : XCTestCase

@end

@implementation CalSmoke_calUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
	
	
	XCUIApplication *app = [[XCUIApplication alloc] init];
	[app.switches[@"switch"] tap];
	
	XCUIElement *slider = app.sliders[@"slider"];
	[slider tap];
	[slider tap];
	
	XCUIElement *textTextField = app.textFields[@"text"];
	[textTextField tap];
	[textTextField tap];
	[textTextField tap];
	[textTextField typeText:@"Hello"];
	[app.buttons[@"Done"] tap];
	
	XCUIElementQuery *tabBarsQuery = app.tabBars;
	[tabBarsQuery.buttons[@"Gestures"] tap];
	[app.tables[@"List of gestures"].staticTexts[@"Tapping"] tap];
	[app.buttons[@"left box"] tap];
	[app.buttons[@"right box"] tap];
	[tabBarsQuery.buttons[@"Scrolls"] tap];
	[app.tables[@"table"].staticTexts[@"Table views"] tap];
	[app.tables[@"logos"].staticTexts[@"Dropbox"] tap];
	// Failed to find matching element please file bug (bugreport.apple.com) and provide output from Console.app
	[[[[[app.tables[@"logos"].cells containingType:XCUIElementTypeStaticText identifier:@"Instagram"] childrenMatchingType:XCUIElementTypeStaticText] matchingIdentifier:@"Instagram"] elementBoundByIndex:0] swipeUp];
	// Failed to find matching element please file bug (bugreport.apple.com) and provide output from Console.app
	[tabBarsQuery.buttons[@"Special"] tap];
	
	XCUIElement *redImage = app.images[@"red"];
	[redImage tap];
	
	XCUIElement *blueImage = app.images[@"blue"];
	[blueImage tap];
	[app.images[@"green"] tap];
	
	XCUIElement *animatedViewElement = app.otherElements[@"animated view"];
	[animatedViewElement tap];
	[animatedViewElement tap];
	[blueImage tap];
	[redImage tap];
	[app.buttons[@"show sheet"] tap];
	
	XCUIElement *smokeTestSheet = app.sheets[@"Smoke Test!"];
	XCUIElement *cancelButton = smokeTestSheet.buttons[@"Cancel"];
	[cancelButton tap];
	[tabBarsQuery.buttons[@"Date Picker"] tap];
	[app.buttons[@"show time picker"] tap];
	[app.toolbars.buttons[@"done picking date"] tap];
	
}

@end
