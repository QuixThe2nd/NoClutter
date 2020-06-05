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

@interface _UIStatusBarCellularSignalView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _UIStatusBarWifiSignalView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface _UIBatteryView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface CSQuickActionsView
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

@interface _UIStatusBarImageView
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

@interface SBDockView : UIView
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

@interface _SFNavigationBarURLButton : UIView
@end

@interface _UITableCellAccessoryButton : UIImageView
@end

@interface TabIconAndTitleView : UIImageView
@end

@interface _UIStatusBarStringView : UILabel
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
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

static BOOL enabled = YES;
static BOOL padlock_hide = NO;
static BOOL ccbar_hide = NO;
static BOOL pagedots_hide = NO;
static BOOL scrollbar_hide = NO;
static BOOL dock_hide = NO;
static BOOL dockbackground_hide = NO;
static BOOL sbtime_hide = NO;
static BOOL sbsignal_hide = NO;
static BOOL sbwifi_hide = NO;
static BOOL sbbattery_hide = NO;
static BOOL homebar_hide = NO;
static BOOL safarisearchbg_hide = NO;
static BOOL safariclosetabbutton_hide = NO;
static BOOL settingsarrow_hide = NO;
static BOOL quickactiontoggles_hide = NO;
static BOOL notificationcentertext_hide = NO;
static BOOL breadcrumb_hide = NO;
static BOOL appswitchericons_hide = NO;
static BOOL appswitcherlabels_hide = NO;
static BOOL ccstatusbar_hide = NO;
static BOOL foldertitle_hide = NO;
static BOOL folderblur_hide = NO;
static BOOL iconbadge_hide = NO;
static BOOL editingdonebutton_hide = NO;
static BOOL folderbackground_hide = NO;
static BOOL safarifavicon_hide = NO;
static BOOL xdeletebutton_hide = NO;
static BOOL separator_hide = NO;
static BOOL sbvpn_hide = NO;
static BOOL appswitcherheader_hide = NO;
static BOOL statusbar_hide = NO;
static BOOL sbcellular_hide = NO;
static BOOL widgetfooter_hide = NO;
static BOOL sbpill_hide = NO;
static BOOL nooldernotifications_hide = NO;
static BOOL nofaceidglyph_hide = NO;
static BOOL dnd_hide = NO;
static BOOL tablabel_hide = NO;
static BOOL betadots_hide = NO;
static BOOL updatedots_hide = NO;
static BOOL sbcellulartext_hide = NO;


BOOL hidesbtime = NO;