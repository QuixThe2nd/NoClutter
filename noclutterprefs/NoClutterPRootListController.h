#import <Preferences/PSListController.h>
#import <Foundation/Foundation.h>
#import <Preferences/PSSpecifier.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBAppearanceSettings.h>
#import <Cephei/HBPreferences.h>

#define screenWidth [[UIScreen mainScreen] bounds].size.width

@interface NoClutterPRootListController : HBListController
@end

@interface
 BannerCell : UITableViewCell { UIImageView* imgView; }
@end

@interface
 UIImage (Internal)
+ (id)imageNamed:(id)arg1 inBundle:(id)arg2;
@end