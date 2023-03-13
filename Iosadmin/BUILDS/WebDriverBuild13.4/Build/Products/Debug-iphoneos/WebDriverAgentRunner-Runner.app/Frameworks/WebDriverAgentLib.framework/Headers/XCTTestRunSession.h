//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "NSObject.h"

@class XCTestConfiguration;

@interface XCTTestRunSession : NSObject
{
    XCTestConfiguration *_testConfiguration;
    id <XCTTestRunSessionDelegate> _delegate;
}
@property id <XCTTestRunSessionDelegate> delegate; // @synthesize delegate=_delegate;
@property(retain) XCTestConfiguration *testConfiguration; // @synthesize testConfiguration=_testConfiguration;

- (BOOL)runTestsAndReturnError:(id *)arg1;
- (BOOL)_preTestingInitialization;
- (void)resumeAppSleep:(id)arg1;
- (id)suspendAppSleep;
- (id)initWithTestConfiguration:(id)arg1 delegate:(id)arg2;

@end
