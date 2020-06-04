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

%group Hooks
// NoPadlock
%hook BSUICAPackageView
-(void)didMoveToWindow{
	%orig;
	self.hidden = padlock_hide;
}
%end

// NoCCBar
%hook CSTeachableMomentsContainerView
-(void)didMoveToWindow{
	%orig;
	if(ccbar_hide){
		self.controlCenterGrabberContainerView.hidden = YES;
	}
}
%end

// NoScrollBar
%hook _UIScrollViewScrollIndicator
-(void)didMoveToWindow{
	%orig;
	self.hidden = scrollbar_hide;
}
%end

// NoDock
%hook SBDockView
-(void)layoutSubviews{
	%orig;
	self.hidden = dock_hide;
}
%end

// NoSBTime
// NoSBCellular
%hook _UIStatusBarStringView
-(void)didMoveToWindow{
	%orig;
	if([self.text containsString:@"LTE"] || [self.text containsString:@"5G"] || [self.text containsString:@"4G"] || [self.text containsString:@"3G"] || [self.text containsString:@"SOS"]){
		self.hidden = sbcellular_hide;
	}else{
		self.hidden = sbtime_hide;
	}
}
%end

// NoSBSignal
%hook _UIStatusBarCellularSignalView
-(void)didMoveToWindow{
	%orig;
	if(sbsignal_hide){
		self.hidden = YES;
	}
}
%end

// NoSBWifi
%hook _UIStatusBarWifiSignalView
-(void)didMoveToWindow{
	%orig;
	if(sbwifi_hide){
		self.hidden = YES;
	}
}
%end

// NoSBBattery
%hook _UIBatteryView
-(void)didMoveToWindow{
	%orig;
	if(sbbattery_hide){
		self.hidden = YES;
	}
}
%end

// NoQuickActionToggles
%hook CSQuickActionsView
-(void)didMoveToWindow{
	%orig;
	self.hidden = quickactiontoggles_hide;
}
%end

// NoNotificationCenterText
%hook NCNotificationListHeaderTitleView
-(void)didMoveToWindow{
	%orig;
	if(notificationcentertext_hide){
		self.hidden = YES;
	}
}
%end

// NoHomeBar
%hook MTLumaDodgePillSettings
- (void)setHeight:(double)arg1{
    if (homebar_hide){
        arg1 = 0;
    }
    %orig;
}
- (void)setMinWidth:(double)arg1{
    if (homebar_hide){
        arg1 = 0;
    }
    %orig;
}
%end

// NoDockBackground
%hook SBDockView
-(void)didMoveToWindow{
	%orig;
	self.subviews[0].hidden = dockbackground_hide;
}
%end

// NoSafarisSarchBG
%hook _SFNavigationBarURLButton
-(void)didMoveToWindow{
	%orig;
	self.subviews[0].hidden = safarisearchbg_hide;
}
%end

// NoSafariCloseTabButton
%hook _SFDimmingButton
-(void)didMoveToWindow{
	%orig;
	self.hidden = safariclosetabbutton_hide;
}
%end

// NoSettingsArrow
%hook _UITableCellAccessoryButton
-(void)layoutSubviews{
	%orig;
	self.subviews[0].hidden = settingsarrow_hide;
}
%end

// NoBreadcrumbs
%hook SBDeviceApplicationSceneStatusBarBreadcrumbProvider
+ (_Bool)_shouldAddBreadcrumbToActivatingSceneEntity:(id)arg1 sceneHandle:(id)arg2 withTransitionContext:(id)arg3{
    return !breadcrumb_hide;
}
%end

// NoAppSwitcherHeader
%hook SBFluidSwitcherItemContainerHeaderView
-(void)didMoveToWindow{
	%orig;
	self.hidden = appswitcherheader_hide;
}
%end

// NoAppSwitcherIcons
%hook SBFluidSwitcherIconImageContainerView
-(void)didMoveToWindow{
	%orig;
	self.hidden = appswitchericons_hide;
}
%end

// NoCCStatusBar
%hook CCUIStatusBar
-(void)didMoveToWindow{
	%orig;
	self.hidden = ccstatusbar_hide;
}
%end

// NoFolderTitle
%hook SBFolderTitleTextField
-(void)didMoveToWindow{
	%orig;
	self.hidden = foldertitle_hide;
}
%end

// NoFolderBackground
%hook SBFolderBackgroundView
-(void)didMoveToWindow{
	%orig;
	self.hidden = folderbackground_hide;
}
%end

// NoFolderBlur
%hook SBFolderControllerBackgroundView
-(void)didMoveToWindow{
	%orig;
	self.hidden = folderblur_hide;
}
%end

// NoIconBadge
%hook SBIconBadgeView
-(void)didMoveToWindow{
	%orig;
	if(iconbadge_hide){
		self.hidden = YES;
	}
}
%end

// NoEditingDoneButton
%hook SBHEditingDoneButton
-(void)didMoveToWindow{
	%orig;
	self.hidden = editingdonebutton_hide;
}
%end

// NoFavicon
%hook TabIconAndTitleView
-(void)didMoveToWindow{
	%orig;
	self.subviews[0].hidden = safarifavicon_hide;
}
%end

// NoXDeleteButton
%hook SBXCloseBoxView
-(void)didMoveToWindow{
	%orig;
	self.hidden = xdeletebutton_hide;
}
%end

// NoSeparator
%hook _UIInterfaceActionVibrantSeparatorView
-(void)didMoveToWindow{
	%orig;
	self.hidden = separator_hide;
}
%end
%hook _UITableViewCellSeparatorView
-(void)didMoveToWindow{
	%orig;
	self.hidden = separator_hide;
}
%end

// NoVPNIcon
%hook _UIStatusBarImageView
-(void)didMoveToWindow{
	%orig;
	self.hidden = sbvpn_hide;
}
%end

// NoStatusBar
%hook _UIStatusBar
-(void)didMoveToWindow{
	%orig;
	self.hidden = statusbar_hide;
}
%end

// NoWidgetFooter
%hook WGWidgetListFooterView
-(void)didMoveToWindow{
	%orig;
	self.hidden = widgetfooter_hide;
}
%end

// NoStatusBarPill
%hook _UIStatusBarPillView
-(void)didMoveToWindow{
	%orig;
	self.hidden = sbpill_hide;
}
%end

// NoNoOlderNotification
%hook NCNotificationListSectionRevealHintView
-(void)didMoveToWindow{
	%orig;
	SBUILegibilityLabel* label = MSHookIvar<SBUILegibilityLabel *>(self, "_revealHintTitle");
	if (nooldernotifications_hide)
		label.hidden = YES;
}
%end

// NoFaceIDGlyph
%hook SBUIProudLockIconView
-(void)layoutSubviews{
	%orig;
	if(nofaceidglyph_hide)
		self.hidden = YES;
}
%end

// NoDNDBanner
%hook DNDNotificationsService
-(void)_queue_postOrRemoveNotificationWithUpdatedBehavior:(BOOL)arg1 significantTimeChange:(BOOL)arg2{
	if(dnd_hide)
		return;
	else
		%orig;
}
%end

// NoTabLabel
%hook UITabBarButtonLabel
-(void)didMoveToWindow{
	%orig;
	if(tablabel_hide)
		self.hidden = YES;
}
%end

// NoBetaDots
%hook SBIconBetaLabelAccessoryView
-(void)didMoveToWindow{
	%orig;
	if(betadots_hide)
		self.hidden = YES;
}
%end

// NoUpdateDots
%hook SBIconRecentlyUpdatedLabelAccessoryView
-(void)didMoveToWindow{
	%orig;
	if(updatedots_hide)
		self.hidden = YES;
}
%end

// NoPageDots
%hook SBIconListPageControl
-(id)initWithFrame:(CGRect)arg1{
    if(pagedots_hide){
        return nil;
	}
	return %orig;
}
%end
%end

static void loadPrefs(){
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.iamparsa.noclutterprefs.plist"];
    if(prefs){
		enabled = ([prefs objectForKey:@"enabled"] ? [[prefs objectForKey:@"enabled"] boolValue] : enabled);
        padlock_hide = ([prefs objectForKey:@"padlock_hide"] ? [[prefs objectForKey:@"padlock_hide"] boolValue] : padlock_hide);
        ccbar_hide = ([prefs objectForKey:@"ccbar_hide"] ? [[prefs objectForKey:@"ccbar_hide"] boolValue] : ccbar_hide);
        pagedots_hide = ([prefs objectForKey:@"pagedots_hide"] ? [[prefs objectForKey:@"pagedots_hide"] boolValue] : pagedots_hide);
        scrollbar_hide = ([prefs objectForKey:@"scrollbar_hide"] ? [[prefs objectForKey:@"scrollbar_hide"] boolValue] : scrollbar_hide);
        dock_hide = ([prefs objectForKey:@"dock_hide"] ? [[prefs objectForKey:@"dock_hide"] boolValue] : dock_hide);
        dockbackground_hide = ([prefs objectForKey:@"dockbackground_hide"] ? [[prefs objectForKey:@"dockbackground_hide"] boolValue] : dockbackground_hide);
        sbbattery_hide = ([prefs objectForKey:@"sbbattery_hide"] ? [[prefs objectForKey:@"sbbattery_hide"] boolValue] : sbbattery_hide);
        sbwifi_hide = ([prefs objectForKey:@"sbwifi_hide"] ? [[prefs objectForKey:@"sbwifi_hide"] boolValue] : sbwifi_hide);
        sbsignal_hide = ([prefs objectForKey:@"sbsignal_hide"] ? [[prefs objectForKey:@"sbsignal_hide"] boolValue] : sbsignal_hide);
        sbtime_hide = ([prefs objectForKey:@"sbtime_hide"] ? [[prefs objectForKey:@"sbtime_hide"] boolValue] : sbtime_hide);
        homebar_hide = ([prefs objectForKey:@"homebar_hide"] ? [[prefs objectForKey:@"homebar_hide"] boolValue] : homebar_hide);
		safarisearchbg_hide = ([prefs objectForKey:@"safarisearchbg_hide"] ? [[prefs objectForKey:@"safarisearchbg_hide"] boolValue] : safarisearchbg_hide);
		safariclosetabbutton_hide = ([prefs objectForKey:@"safariclosetabbutton_hide"] ? [[prefs objectForKey:@"safariclosetabbutton_hide"] boolValue] : safariclosetabbutton_hide);
		settingsarrow_hide = ([prefs objectForKey:@"settingsarrow_hide"] ? [[prefs objectForKey:@"settingsarrow_hide"] boolValue] : settingsarrow_hide);
		quickactiontoggles_hide = ([prefs objectForKey:@"quickactiontoggles_hide"] ? [[prefs objectForKey:@"quickactiontoggles_hide"] boolValue] : quickactiontoggles_hide);
		notificationcentertext_hide = ([prefs objectForKey:@"notificationcentertext_hide"] ? [[prefs objectForKey:@"notificationcentertext_hide"] boolValue] : notificationcentertext_hide);
		breadcrumb_hide = ([prefs objectForKey:@"breadcrumb_hide"] ? [[prefs objectForKey:@"breadcrumb_hide"] boolValue] : breadcrumb_hide);
		appswitchericons_hide = ([prefs objectForKey:@"appswitchericons_hide"] ? [[prefs objectForKey:@"appswitchericons_hide"] boolValue] : appswitchericons_hide);
		appswitcherlabels_hide = ([prefs objectForKey:@"appswitcherlabels_hide"] ? [[prefs objectForKey:@"appswitcherlabels_hide"] boolValue] : appswitcherlabels_hide);
		ccstatusbar_hide = ([prefs objectForKey:@"ccstatusbar_hide"] ? [[prefs objectForKey:@"ccstatusbar_hide"] boolValue] : ccstatusbar_hide);
		foldertitle_hide = ([prefs objectForKey:@"foldertitle_hide"] ? [[prefs objectForKey:@"foldertitle_hide"] boolValue] : foldertitle_hide);
		folderbackground_hide = ([prefs objectForKey:@"folderbackground_hide"] ? [[prefs objectForKey:@"folderbackground_hide"] boolValue] : folderbackground_hide);
		folderblur_hide = ([prefs objectForKey:@"folderblur_hide"] ? [[prefs objectForKey:@"folderblur_hide"] boolValue] : folderblur_hide);
		iconbadge_hide = ([prefs objectForKey:@"iconbadge_hide"] ? [[prefs objectForKey:@"iconbadge_hide"] boolValue] : iconbadge_hide);
		editingdonebutton_hide = ([prefs objectForKey:@"editingdonebutton_hide"] ? [[prefs objectForKey:@"editingdonebutton_hide"] boolValue] : editingdonebutton_hide);
		safarifavicon_hide = ([prefs objectForKey:@"safarifavicon_hide"] ? [[prefs objectForKey:@"safarifavicon_hide"] boolValue] : safarifavicon_hide);
		xdeletebutton_hide = ([prefs objectForKey:@"xdeletebutton_hide"] ? [[prefs objectForKey:@"xdeletebutton_hide"] boolValue] : xdeletebutton_hide);
		separator_hide = ([prefs objectForKey:@"separator_hide"] ? [[prefs objectForKey:@"separator_hide"] boolValue] : separator_hide);
		sbvpn_hide = ([prefs objectForKey:@"sbvpn_hide"] ? [[prefs objectForKey:@"sbvpn_hide"] boolValue] : sbvpn_hide);
		appswitcherheader_hide = ([prefs objectForKey:@"appswitcherheader_hide"] ? [[prefs objectForKey:@"appswitcherheader_hide"] boolValue] : appswitcherheader_hide);
		statusbar_hide = ([prefs objectForKey:@"statusbar_hide"] ? [[prefs objectForKey:@"statusbar_hide"] boolValue] : statusbar_hide);
		sbcellular_hide = ([prefs objectForKey:@"sbcellular_hide"] ? [[prefs objectForKey:@"sbcellular_hide"] boolValue] : sbcellular_hide);
		widgetfooter_hide = ([prefs objectForKey:@"widgetfooter_hide"] ? [[prefs objectForKey:@"widgetfooter_hide"] boolValue] : widgetfooter_hide);
		sbpill_hide = ([prefs objectForKey:@"sbpill_hide"] ? [[prefs objectForKey:@"sbpill_hide"] boolValue] : sbpill_hide);
		nooldernotifications_hide = ([prefs objectForKey:@"nooldernotifications_hide"] ? [[prefs objectForKey:@"nooldernotifications_hide"] boolValue] : nooldernotifications_hide);
		nofaceidglyph_hide = ([prefs objectForKey:@"nofaceidglyph_hide"] ? [[prefs objectForKey:@"nofaceidglyph_hide"] boolValue] : nofaceidglyph_hide);
		dnd_hide = ([prefs objectForKey:@"dnd_hide"] ? [[prefs objectForKey:@"dnd_hide"] boolValue] : dnd_hide);
		tablabel_hide = ([prefs objectForKey:@"tablabel_hide"] ? [[prefs objectForKey:@"tablabel_hide"] boolValue] : tablabel_hide);
		betadots_hide = ([prefs objectForKey:@"betadots_hide" ] ? [[prefs objectForKey:@"betadots_hide"] boolValue] : betadots_hide);
		updatedots_hide = ([prefs objectForKey:@"updatedots_hide" ] ? [[prefs objectForKey:@"updatedots_hide"] boolValue] : updatedots_hide);
	}
    [prefs release];
}

%ctor{
    	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.iamparsa.noclutter/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    	loadPrefs();
		if(!enabled){
			return;
		}
		%init(Hooks);
}