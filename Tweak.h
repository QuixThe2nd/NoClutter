#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>

@interface BSUICAPackageView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface CSTeachableMomentsContainerView : UIView
@property(nonatomic, strong, readwrite)UIView* controlCenterGrabberContainerView;
@end

@interface _UIScrollViewScrollIndicator
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface MTMaterialView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _UIStatusBarCellularSignalView : UIView
@end

@interface _UIStatusBarWifiSignalView : UIView
@end

@interface _UIBatteryView : UIView
@end

@interface SparkBatteryView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface NCNotificationListHeaderTitleView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface MTLumaDodgePillSettings
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBFluidSwitcherIconImageContainerView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface CCUIStatusBar
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBFolderTitleTextField
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBFolderBackgroundView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBFolderControllerBackgroundView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBIconBadgeView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBHEditingDoneButton
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _SFDimmingButton
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBXCloseBoxView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _UIInterfaceActionVibrantSeparatorView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _UITableViewCellSeparatorView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBFluidSwitcherItemContainerHeaderView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _UIStatusBar
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface WGWidgetListFooterView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _UIStatusBarPillView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBDockView : UIView {
	UIView *_backgroundView;
}
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBFloatingDockPlatterView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface UITabBarButtonLabel
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBIconBetaLabelAccessoryView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBIconRecentlyUpdatedLabelAccessoryView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBHomeScreenBackdropView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _UIStatusBarImageView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBIconCloudLabelAccessoryView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _UIStatusBarStringView : UILabel
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface WGWidgetWrapperView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBSearchBar : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface CSQuickActionsView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _SFNavigationBarURLButton : UIView
@end

@interface _UITableCellAccessoryButton : UIImageView
@end

@interface TabIconAndTitleView : UIImageView
@end

@interface NCNotificationListSectionRevealHintView : UIView
@end

@interface SBUILegibilityLabel : UIView
@property(nonatomic, assign, readwrite)NSString* string;
@property (assign,nonatomic) long long textAlignment;
- (void)setFont:(UIFont *)arg1;
- (id)_viewControllerForAncestor;
@end

@interface SBUIProudLockIconView : UIView
@end

@interface SBIconListPageControl
@end

@interface SBMutableIconLabelImageParameters
@end

@interface TFNItemsDataViewController : NSObject
- (id)itemAtIndexPath:(id)arg1;
@end

@interface Post : NSObject
@end

static BOOL enabled = YES;
static BOOL padlock = NO;
static BOOL ccbar = NO;
static BOOL pagedots = NO;
static BOOL scrollbar = NO;
static BOOL dock = NO;
static BOOL dockbackground = NO;
static BOOL sbtime = NO;
static BOOL sbsignal = NO;
static BOOL sbwifi = NO;
static BOOL sbbattery = NO;
static BOOL homebar = NO;
static BOOL safarisearchbg = NO;
static BOOL safariclosetabbutton = NO;
static BOOL settingsarrow = NO;
static BOOL quickactiontoggles = NO;
static BOOL notificationcentertext = NO;
static BOOL breadcrumb = NO;
static BOOL appswitchericons = NO;
static BOOL appswitcherlabels = NO;
static BOOL ccstatusbar = NO;
static BOOL foldertitle = NO;
static BOOL folderblur = NO;
static BOOL iconbadge = NO;
static BOOL editingdonebutton = NO;
static BOOL folderbackground = NO;
static BOOL safarifavicon = NO;
static BOOL xdeletebutton = NO;
static BOOL separator = NO;
static BOOL appswitcherheader = NO;
static BOOL statusbar = NO;
static BOOL sbcellular = NO;
static BOOL widgetfooter = NO;
static BOOL sbpill = NO;
static BOOL nooldernotifications = NO;
static BOOL nofaceidglyph = NO;
static BOOL dnd = NO;
static BOOL tablabel = NO;
static BOOL betadots = NO;
static BOOL updatedots = NO;
static BOOL sbcellulartext = NO;
static BOOL swipetext = NO;
static BOOL hsbackdrop = NO;
static BOOL applabels = NO;
static BOOL sbicons = NO;
static BOOL todayview = NO;
static BOOL offloadedicon = NO;
static BOOL dock_disable = NO;
static BOOL twitterads = NO;
static BOOL redditads = NO;
static BOOL shuttersound = NO;
static BOOL cameraquickactiontoggles = NO;
static BOOL torchquickactiontoggles = NO;
static BOOL videoshuttersound = NO;
static BOOL chargesound = NO;
static BOOL endvideoshuttersound = NO;
static BOOL NoKeyPressSound = NO;
static BOOL endlocksound = NO;

BOOL hidesbtime = NO;