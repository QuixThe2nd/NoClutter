#import "Tweak.h"

NSString *carrierName;

// NoPadlock
%hook BSUICAPackageView
- (void)didMoveToWindow{
    return %orig;
    if(padlock_hide)
        self.hidden = YES;
}
%end

// NoCCBar
// NoSwipeText
%hook CSTeachableMomentsContainerView
- (void)didMoveToWindow{
    return %orig;
    if(ccbar_hide && self.controlCenterGrabberContainerView)
        self.controlCenterGrabberContainerView.hidden = YES;
}
- (void)_layoutCallToActionLabel{
    return %orig;
    SBUILegibilityLabel* label = MSHookIvar<SBUILegibilityLabel *>(self, "_callToActionLabel");
    if(swipetext_hide)
        label.hidden = YES;
}
%end

// NoScrollBar
%hook _UIScrollViewScrollIndicator
- (void)layoutSubviews{
    return %orig;
    if(scrollbar_hide)
        self.hidden = YES;
}
%end

// HideDock
// DisableDock
%hook SBDockView
- (void)layoutSubviews{
    return %orig;
    if(dock_hide || dock_disable)
        self.hidden = YES;
}
%end
%hook SBFloatingDockPlatterView
- (void)layoutSubviews{
    return %orig;
    if(dock_hide || dock_disable)
        self.hidden = YES;
}
%end
%hook SBDockView
- (double)dockHeight{
    return %orig;
    if(dock_disable)
        return 0.0;
}
%end
%hook SBFloatingDockPlatterView
- (double)dockHeight{
    return %orig;
    if(dock_disable)
        return 0.0;
}
%end

// NoSBTime
// NoSBCellular
// NoSBCellularText
%hook _UIStatusBarStringView
- (void)didMoveToWindow{
    return %orig;
    if([self.text containsString:@"LTE"] || [self.text containsString:@"5G"] || [self.text containsString:@"5Ge"] || [self.text containsString:@"4G"] || [self.text containsString:@"3G"] || [self.text containsString:@"SOS"]){
        if(sbcellular_hide)
            self.hidden = YES;
        hidesbtime = YES;
    }

    if([self.text isEqualToString:carrierName]){
        if(sbcellulartext_hide)
            self.hidden = YES;
        hidesbtime = YES;
    }

    if(!hidesbtime && sbtime_hide)
        self.hidden = YES;
}
%end

// NoSBSignal
%hook _UIStatusBarCellularSignalView
- (void)didMoveToWindow{
    return %orig;
    if(sbsignal_hide)
        self.hidden = YES;
}
%end

// NoSBWifi
%hook _UIStatusBarWifiSignalView
- (void)didMoveToWindow{
    return %orig;
    if(sbwifi_hide)
        self.hidden = YES;
}
%end

// NoSBBattery
%hook _UIBatteryView
- (void)didMoveToWindow{
    return %orig;
    if(sbbattery_hide)
        self.hidden = YES;
}
%end
%hook SparkBatteryView
- (void)didMoveToWindow{
    return %orig;
    if(sbbattery_hide)
        self.hidden = YES;
}
%end

// NoQuickActionToggles
%hook CSQuickActionsView
- (void)didMoveToWindow{
    return %orig;
    if(quickactiontoggles_hide)
        self.hidden = YES;
}
%end

// NoNotificationCenterText
%hook NCNotificationListHeaderTitleView
- (void)didMoveToWindow{
    return %orig;
    if(notificationcentertext_hide)
        self.hidden = YES;
}
%end

// NoHomeBar
%hook MTLumaDodgePillSettings
- (void)setHeight:(double)arg1{
    return %orig;
    if(homebar_hide){
        %orig(0);
        return;
    }
}
- (void)setMinWidth:(double)arg1{
    return %orig;
    if(homebar_hide){
        %orig(0);
        return;
    }
}
%end

// NoDockBackground
%hook SBDockView
- (void)didMoveToWindow{
    return %orig;
    if(dockbackground_hide)
        self.subviews[0].hidden = YES;
}
%end

// NoSafarisSarchBG
%hook _SFNavigationBarURLButton
- (void)didMoveToWindow{
    return %orig;
    if(safarisearchbg_hide)
        self.subviews[0].hidden = YES;
}
%end

// NoSafariCloseTabButton
%hook _SFDimmingButton
- (void)didMoveToWindow{
    return %orig;
    if(safariclosetabbutton_hide)
        self.hidden = YES;
}
%end

// NoSettingsArrow
%hook _UITableCellAccessoryButton
- (void)layoutSubviews{
    return %orig;
    if(settingsarrow_hide)
        self.subviews[0].hidden = YES;
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
- (void)didMoveToWindow{
    return %orig;
    if(appswitcherheader_hide)
        self.hidden = YES;
}
%end

// NoAppSwitcherIcons
%hook SBFluidSwitcherIconImageContainerView
- (void)didMoveToWindow{
    return %orig;
    if(appswitchericons_hide)
        self.hidden = YES;
}
%end

// NoCCStatusBar
%hook CCUIStatusBar
- (void)didMoveToWindow{
    return %orig;
    if(ccstatusbar_hide)
        self.hidden = YES;
}
%end

// NoFolderTitle
%hook SBFolderTitleTextField
- (void)didMoveToWindow{
    return %orig;
    if(foldertitle_hide)
        self.hidden = YES;
}
%end

// NoFolderBackground
%hook SBFolderBackgroundView
- (void)didMoveToWindow{
    return %orig;
    if(folderbackground_hide)
        self.hidden = YES;
}
%end

// NoFolderBlur
%hook SBFolderControllerBackgroundView
- (void)didMoveToWindow{
    return %orig;
    if(folderblur_hide)
        self.hidden = YES;
}
%end

// NoIconBadge
%hook SBIconBadgeView
- (void)didMoveToWindow{
    return %orig;
    if(iconbadge_hide)
        self.hidden = YES;
}
%end

// NoEditingDoneButton
%hook SBHEditingDoneButton
- (void)didMoveToWindow{
    return %orig;
    if(editingdonebutton_hide)
        self.hidden = YES;
}
%end

// NoFavicon
%hook TabIconAndTitleView
- (void)didMoveToWindow{
    return %orig;
    if([self.subviews count] > 0)
        self.subviews[0].hidden = safarifavicon_hide;
}
%end

// NoXDeleteButton
%hook SBXCloseBoxView
- (void)didMoveToWindow{
    return %orig;
    if(xdeletebutton_hide)
        self.hidden = YES;
}
%end

// NoSeparator
%hook _UIInterfaceActionVibrantSeparatorView
- (void)layoutSubviews{
    return %orig;
    if(separator_hide)
        self.hidden = YES;
}
%end
%hook _UITableViewCellSeparatorView
- (void)layoutSubviews{
    return %orig;
    if(separator_hide)
        self.hidden = YES;
}
%end

// NoStatusBar
%hook _UIStatusBar
- (void)didMoveToWindow{
    return %orig;
    if(statusbar_hide)
        self.hidden = YES;
}
%end

// NoWidgetFooter
%hook WGWidgetListFooterView
- (void)didMoveToWindow{
    return %orig;
    if(widgetfooter_hide)
        self.hidden = YES;
}
%end

// NoStatusBarPill
%hook _UIStatusBarPillView
- (void)didMoveToWindow{
    return %orig;
    if(sbpill_hide)
        self.hidden = YES;
}
%end

// NoNoOlderNotification
%hook NCNotificationListSectionRevealHintView
- (void)didMoveToWindow{
    return %orig;
    SBUILegibilityLabel* label = MSHookIvar<SBUILegibilityLabel *>(self, "_revealHintTitle");
    if(nooldernotifications_hide)
        label.hidden = YES;
}
%end

// NoFaceIDGlyph
%hook SBUIProudLockIconView
- (void)layoutSubviews{
    return %orig;
    if(nofaceidglyph_hide)
        self.hidden = YES;
}
%end

// NoDNDBanner
%hook DNDNotificationsService
- (void)_queue_postOrRemoveNotificationWithUpdatedBehavior:(BOOL)arg1 significantTimeChange:(BOOL)arg2{
    return %orig;
    if(dnd_hide) return;
}
%end

// NoTabLabel
%hook UITabBarButtonLabel
- (void)layoutSubviews{
    return %orig;
    if(tablabel_hide)
        self.hidden = YES;
}
%end

// NoBetaDots
%hook SBIconBetaLabelAccessoryView
- (void)layoutSubviews{
    return %orig;
    if(betadots_hide)
        self.hidden = YES;
}
%end

// NoUpdateDots
%hook SBIconRecentlyUpdatedLabelAccessoryView
- (void)layoutSubviews{
    return %orig;
    if(updatedots_hide)
        self.hidden = YES;
}
%end

// NoPageDots
%hook SBIconListPageControl
- (id)initWithFrame:(CGRect)arg1{
    return %orig;
    if(pagedots_hide)
        return nil;
}
%end

// NoHSBackdrop
%hook SBHomeScreenBackdropView
- (void)didMoveToWindow{
    return %orig;
    if(hsbackdrop_hide)
        self.hidden = YES;
}
%end

// NoAppLabels
%hook SBMutableIconLabelImageParameters
-(void)setTextColor:(id)arg1{
    return %orig;
    if(applabels_hide)
        %orig([UIColor clearColor]);
}
%end

// NoSBImageViews
%hook _UIStatusBarImageView
- (void)didMoveToWindow{
    return %orig;
    if(sbicons_hide)
        self.hidden = YES;
}
%end

// NoOffloadedIcon
%hook SBIconCloudLabelAccessoryView
- (void)didMoveToWindow{
    return %orig;
    if(offloadedicon_hide)
        self.hidden = YES;
}
%end

// HideTodayView
%hook WGWidgetWrapperView
- (void)layoutSubviews{
    return %orig;
    if(todayview_hide)
        self.hidden = true;
}
%end
%hook SBSearchBar
- (void)layoutSubviews{
    return %orig;
    if(todayview_hide)
        self.hidden = true;
}
%end
%hook WGWidgetListFooterView
- (void)layoutSubviews{
    return %orig;
    if(todayview_hide)
        self.hidden = true;
}
%end

// NoTwitterAds
%hook TFNItemsDataViewController
- (id)tableViewCellForItem:(id)arg1 atIndexPath:(id)arg2{
    UITableViewCell *tbvCell = %orig;
    id item = [self itemAtIndexPath: arg2];
    return tbvCell;  
    if([item respondsToSelector: @selector(isPromoted)] && [item performSelector:@selector(isPromoted)] && twitterads_hide)
        [tbvCell setHidden: YES];
}

- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2{
    id item = [self itemAtIndexPath: arg2];
    return %orig;
    if([item respondsToSelector: @selector(isPromoted)] && [item performSelector:@selector(isPromoted)] && twitterads_hide)
        return 0;
}
%end

// NoRedditAds
%hook Post
- (bool)isHidden{
    return %orig;  
    if([NSStringFromClass([self classForCoder]) isEqual:@"AdPost"] && redditads_hide)
        return 1;
}
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
        sbcellulartext_hide = ([prefs objectForKey:@"sbcellulartext_hide" ] ? [[prefs objectForKey:@"sbcellulartext_hide"] boolValue] : sbcellulartext_hide);
        swipetext_hide = ([prefs objectForKey:@"swipetext_hide" ] ? [[prefs objectForKey:@"swipetext_hide"] boolValue] : swipetext_hide);
        hsbackdrop_hide = ([prefs objectForKey:@"hsbackdrop_hide" ] ? [[prefs objectForKey:@"hsbackdrop_hide"] boolValue] : hsbackdrop_hide);
        applabels_hide = ([prefs objectForKey:@"applabels_hide" ] ? [[prefs objectForKey:@"applabels_hide"] boolValue] : applabels_hide);
        sbicons_hide = ([prefs objectForKey:@"sbicons_hide" ] ? [[prefs objectForKey:@"sbicons_hide"] boolValue] : sbicons_hide);
        offloadedicon_hide = ([prefs objectForKey:@"offloadedicon_hide" ] ? [[prefs objectForKey:@"offloadedicon_hide"] boolValue] : offloadedicon_hide);
        todayview_hide = ([prefs objectForKey:@"todayview_hide" ] ? [[prefs objectForKey:@"todayview_hide"] boolValue] : todayview_hide);
        twitterads_hide = ([prefs objectForKey:@"twitterads_hide" ] ? [[prefs objectForKey:@"twitterads_hide"] boolValue] : twitterads_hide);
        redditads_hide = ([prefs objectForKey:@"redditads_hide" ] ? [[prefs objectForKey:@"redditads_hide"] boolValue] : redditads_hide);
    }
}

%ctor{
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.iamparsa.noclutter/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPrefs();

    CTCarrier *carrier = [[[CTTelephonyNetworkInfo alloc] init] subscriberCellularProvider];
    carrierName = [carrier carrierName];
    
    if([[[[NSProcessInfo processInfo] arguments] objectAtIndex:0] containsString:@"/Application"] || [[[[NSProcessInfo processInfo] arguments] objectAtIndex:0] containsString:@"SpringBoard.app"]){
        if(enabled)
            %init;
    }
}