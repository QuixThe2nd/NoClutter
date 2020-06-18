#include "NoClutterPRootListController.h"
#import <spawn.h>

@implementation NoClutterPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)respring {
    pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

- (id)readPreferenceValue:(PSSpecifier*)specifier {
    NSString *path = [NSString stringWithFormat:@"/User/Library/Preferences/%@.plist", specifier.properties[@"defaults"]];
    NSMutableDictionary *settings = [NSMutableDictionary dictionary];
    [settings addEntriesFromDictionary:[NSDictionary dictionaryWithContentsOfFile:path]];
    return (settings[specifier.properties[@"key"]]) ?: specifier.properties[@"default"];
}

- (void)setPreferenceValue:(id)value specifier:(PSSpecifier*)specifier {
    NSString *path = [NSString stringWithFormat:@"/User/Library/Preferences/%@.plist", specifier.properties[@"defaults"]];
    NSMutableDictionary *settings = [NSMutableDictionary dictionary];
    [settings addEntriesFromDictionary:[NSDictionary dictionaryWithContentsOfFile:path]];
    [settings setObject:value forKey:specifier.properties[@"key"]];
    [settings writeToFile:path atomically:YES];
    CFStringRef notificationName = (CFStringRef)specifier.properties[@"PostNotification"];
    if (notificationName) {
        CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), notificationName, NULL, NULL, YES);
    }
}

-(void) twitter {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:@"https://twitter.com/QuixThe2nd"];
    [application openURL:URL options:@{} completionHandler:nil];
}

-(void) discord {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:@"https://discord.gg/AktWxEn"];
    [application openURL:URL options:@{} completionHandler:nil];
}

-(void) paypal {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:@"https://paypal.me/Quix2nd"];
    [application openURL:URL options:@{} completionHandler:nil];
}

-(void) github {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:@"https://github.com/QuixThe2nd/NoClutter"];
    [application openURL:URL options:@{} completionHandler:nil];
}

@end

@implementation BannerCell
- (id)initWithSpecifier:(PSSpecifier *)specifier {
	self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
	if (self) {
		UIImage* img = [UIImage imageNamed:@"banner" inBundle:[NSBundle bundleForClass:[self class]]];
		imgView = [[UIImageView alloc] init];
		imgView.frame = CGRectMake(0, -self.frame.origin.y, screenWidth, screenWidth * (img.size.height / img.size.width));
		imgView.image = img;
		imgView.backgroundColor = [UIColor redColor];
		[self addSubview:imgView];
	}
	return self;
}
- (void)didMoveToWindow {
	[super didMoveToWindow];
	imgView.frame = CGRectMake(0, -self.frame.origin.y, screenWidth, imgView.frame.size.height);
}
- (CGFloat)preferredHeightForWidth:(CGFloat)arg1 {
	return imgView.frame.size.height - 35;
}
@end