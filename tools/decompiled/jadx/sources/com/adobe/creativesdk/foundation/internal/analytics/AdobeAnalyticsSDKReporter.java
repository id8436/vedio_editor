package com.adobe.creativesdk.foundation.internal.analytics;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsSDKReporter {
    public static final String AdobeAnalyticsAssetBrowserAction = "Asset Browser Action";
    public static final String AdobeAnalyticsAuthReportExpiredAuthToken = "Expired Authentication Token";
    public static final String AdobeAnalyticsAuthReportLoginAttempt = "Login Attempt";
    public static final String AdobeAnalyticsAuthReportLoginCancel = "Login Cancel";
    public static final String AdobeAnalyticsAuthReportLoginFailure = "Login Failure";
    public static final String AdobeAnalyticsAuthReportLoginStart = "Login Start";
    public static final String AdobeAnalyticsAuthReportLoginSuccess = "Login Success";
    public static final String AdobeAnalyticsAuthReportLogoutAttempt = "Logout Attempt";
    public static final String AdobeAnalyticsAuthReportLogoutCancel = "Logout Cancel";
    public static final String AdobeAnalyticsAuthReportLogoutFailure = "Logout Failure";
    public static final String AdobeAnalyticsAuthReportLogoutStart = "Logout Start";
    public static final String AdobeAnalyticsAuthReportLogoutSuccess = "Logout Success";
    public static final String AdobeAnalyticsAuthReportMissingAuthToken = "Missing Authentication Token";
    public static final String AdobeAnalyticsAuthReportValidAuthToken = "Valid Authentication Token";
    public static final String AdobeAnalyticsEventNameAuthStep = "Auth Step";
    public static final String AdobeAnalyticsEventNamePenConnect = "Pen Connect";
    public static final String AdobeAnalyticsEventNameRegStep = "Registration Step";
    public static final String AdobeAnalyticsEventNameSharingAction = "Sharing Action";
    public static final String AdobeAnalyticsKeyADB_EventAction = "adb.event.eventInfo.eventAction";
    public static final String AdobeAnalyticsKeyADB_EventName = "adb.event.eventInfo.eventName";
    public static final String AdobeAnalyticsKeyADB_EventType = "adb.event.eventInfo.type";
    public static final String AdobeAnalyticsKeyADB_PageName = "adb.page.pageInfo.pageName=";
    public static final String AdobeAnalyticsKeyADB_RegStatus = "adb.user.profile.attributes.regStatus";
    public static final String AdobeAnalyticsRegReportSignupCancel = "Signup Cancel";
    public static final String AdobeAnalyticsRegReportSignupFailure = "Signup Failure";
    public static final String AdobeAnalyticsRegReportSignupStart = "Signup Start";
    public static final String AdobeAnalyticsRegReportSignupSuccess = "Signup Success";
    public static final String AdobeAnalyticsRegStatusAdobeAccountFree = "Adobe Account (Free)";
    public static final String AdobeAnalyticsRegStatusAdobeAccountPaid = "Adobe Account (Paid)";
    public static final String AdobeAnalyticsRegStatusGuestAccount = "Guest Account";
    public static final String AdobeAnalyticsRegStatusNotRegistered = "Not Registered";
    public static final String AdobeAnalyticsSearchButtonTapped = "Search Button Tapped";
    public static final String AdobeAnalyticsShareTargetBehanceProject = "Behance-Project";
    public static final String AdobeAnalyticsShareTargetCCV = "CCV";
    public static final String AdobeAnalyticsShareTargetCameraRoll = "CameraRoll";
    public static final String AdobeAnalyticsShareTargetCopyUrlToClipboard = "Copy URL to Clipboard";
    public static final String AdobeAnalyticsShareTargetCreativeCloud = "Creative Cloud";
    public static final String AdobeAnalyticsShareTargetEmail = "Email";
    public static final String AdobeAnalyticsShareTargetFacebook = "Facebook";
    public static final String AdobeAnalyticsShareTargetIllustrator = "Illustrator";
    public static final String AdobeAnalyticsShareTargetInDesign = "InDesign";
    public static final String AdobeAnalyticsShareTargetInstagram = "Instagram";
    public static final String AdobeAnalyticsShareTargetLightroom = "Lightroom";
    public static final String AdobeAnalyticsShareTargetMessage = "Message";
    public static final String AdobeAnalyticsShareTargetPhotoshop = "Photoshop";
    public static final String AdobeAnalyticsShareTargetPinterest = "Pinterest";
    public static final String AdobeAnalyticsShareTargetPremierePro = "Premiere Pro";
    public static final String AdobeAnalyticsShareTargetPrint = "Print";
    public static final String AdobeAnalyticsShareTargetTwitter = "Twitter";
    public static final String AdobeAnalyticsShareTargetYouTube = "YouTube";
    public static final String AdobeAnalyticsShareTypeComments = "Comments";
    public static final String AdobeAnalyticsShareTypeContentDownloads = "Content Downloads";
    public static final String AdobeAnalyticsShareTypeContentPublishes = "Content Publishes";
    public static final String AdobeAnalyticsShareTypeProductSaves = "Product Saves";
    public static final String AdobeAnalyticsShareTypeProductShares = "Product Shares";
    public static final String AdobeAnalyticsShareTypeProjectURLShares = "Project URL Shares";
    public static final String AdobeAnalyticsShareTypePublishFailure = "Publish Failure";
    public static final String AdobeAnalyticsShareTypePublishSuccess = "Publish Success";
    public static final String AdobeAnalyticsShareTypePublishUXCancel = "Publish UX Cancel";
    public static final String AdobeAnalyticsShareTypePublishUXStart = "Publish UX Start";
    public static final String AdobeAnalyticsShareTypeSocialShares = "Social Shares";
    public static final String AdobeAnalyticsShowInfo = "Show File Info";
    public static final String AdobeAnalyticsSortByAlpha = "Sort Alphabetically";
    public static final String AdobeAnalyticsSortByDate = "Sort By Date";
    public static final String AdobeAnalyticsValueNo = "N";
    public static final String AdobeAnalyticsValueYes = "Y";
    public static final String AdobeAnalyticsViewAsGrid = "View As Grid";
    public static final String AdobeAnalyticsViewAsList = "View As List";
    public static final String AnalyticAction = "action";
    public static final String AnalyticArchiveFile = "mobile.ccmobile.archiveFile";
    public static final String AnalyticArchiveFolder = "mobile.ccmobile.archiveFolder";
    public static final String AnalyticArea = "area";
    public static final String AnalyticAssetCount = "assetCount";
    public static final String AnalyticAssetId = "assetID";
    public static final String AnalyticAssetName = "assetName";
    public static final String AnalyticCopyFile = "mobile.ccmobile.copyFile";
    public static final String AnalyticCopyFolder = "mobile.ccmobile.copyFolder";
    public static final String AnalyticCreateNewFolder = "mobile.ccmobile.createNewFolder";
    public static final String AnalyticCreateNewLibrary = "mobile.ccmobile.createNewLibrary";
    public static final String AnalyticCreateNewPhotoCollection = "mobile.ccmobile.createNewPhotoCollection";
    public static final String AnalyticDeleteFile = "mobile.ccmobile.deleteFile";
    public static final String AnalyticDeleteFolder = "mobile.ccmobile.deleteFolder";
    public static final String AnalyticErrorLog = "mobile.ccmobile.errorLog";
    public static final String AnalyticLibraryDelete = "mobile.ccmobile.operations.libraryDelete";
    public static final String AnalyticLibraryRename = "mobile.ccmobile.operations.libraryRename";
    public static final String AnalyticMoveFile = "mobile.ccmobile.moveFile";
    public static final String AnalyticMoveFolder = "mobile.ccmobile.moveFolder";
    public static final String AnalyticNativeShare = "mobile.ccmobile.nativeShare";
    public static final String AnalyticPlayVideo = "mobile.ccmobile.playVideo";
    public static final String AnalyticPullToRefresh = "mobile.ccmobile.pullToRefresh";
    public static final String AnalyticRenameFile = "mobile.ccmobile.renameFile";
    public static final String AnalyticRenameFolder = "mobile.ccmobile.renameFolder";
    public static final String AnalyticSearchBarTapped = "mobile.ccmobile.searchBarTapped";
    public static final String AnalyticSearchExecuted = "mobile.ccmobile.searchExecuted";
    public static final String AnalyticSortByAlpha = "mobile.ccmobile.sortby.alpha";
    public static final String AnalyticSortByDate = "mobile.ccmobile.sortby.date";
    public static final String AnalyticType = "type";
    public static final String AnalyticViewAsGrid = "mobile.ccmobile.viewas.grid";
    public static final String AnalyticViewAsList = "mobile.ccmobile.viewas.list";
    public static final String AnalyticViewComp = "mobile.ccmobile.viewComp";
    public static final String AnalyticViewDraw = "mobile.ccmobile.viewDraw";
    public static final String AnalyticViewFiles = "mobile.ccmobile.viewFiles";
    public static final String AnalyticViewLibraries = "mobile.ccmobile.viewLibraries";
    public static final String AnalyticViewLine = "mobile.ccmobile.viewLine";
    public static final String AnalyticViewMix = "mobile.ccmobile.viewMix";
    public static final String AnalyticViewMyAssets = "mobile.ccmobile.viewMyAssets";
    public static final String AnalyticViewPhotos = "mobile.ccmobile.viewPhotos";
    public static final String AnalyticViewSketch = "mobile.ccmobile.viewSketch";
    public static final String adobeAnalyticsProfileIdUnknown = "Unknown";

    private AdobeAnalyticsSDKReporter() {
    }

    public static synchronized void trackAuthStep(String str, String str2) {
        HashMap map = new HashMap(20);
        map.put(AdobeAnalyticsKeyADB_EventAction, str);
        trackAction(AdobeAnalyticsEventNameAuthStep, null, map);
    }

    public static synchronized void trackRegStep(String str, String str2) {
        HashMap map = new HashMap(20);
        map.put(AdobeAnalyticsKeyADB_EventAction, str);
        trackAction(AdobeAnalyticsEventNameRegStep, null, map);
    }

    public static synchronized void trackSharingAction(String str, String str2) {
        HashMap map = new HashMap(20);
        map.put(AdobeAnalyticsKeyADB_EventAction, str);
        map.put(AdobeAnalyticsKeyADB_EventType, str2);
        trackAction(AdobeAnalyticsEventNameSharingAction, null, map);
    }

    public static synchronized void trackAssetBrowserAction(String str) {
        HashMap map = new HashMap(20);
        map.put(AdobeAnalyticsKeyADB_EventAction, str);
        trackAction(AdobeAnalyticsAssetBrowserAction, null, map);
    }

    public static synchronized void trackState(String str, Map<String, Object> map) {
        if (map == null) {
            map = new HashMap<>(20);
            map.put(AdobeAnalyticsKeyADB_PageName, str);
            AdobeAnalyticsGlobalData.addCommonData(map);
            AdobeAnalyticsSession.getSharedInstance().trackState(str, map);
        } else {
            map.put(AdobeAnalyticsKeyADB_PageName, str);
            AdobeAnalyticsGlobalData.addCommonData(map);
            AdobeAnalyticsSession.getSharedInstance().trackState(str, map);
        }
    }

    public static synchronized void trackAction(String str, Map<String, String> map, Map<String, Object> map2) {
        if (map2 == null) {
            map2 = new HashMap<>(20);
            map2.put(AdobeAnalyticsKeyADB_EventName, str);
            AdobeAnalyticsGlobalData.addActionData(str, map, map2);
            AdobeAnalyticsSession.getSharedInstance().trackAction(str, map2);
        } else {
            map2.put(AdobeAnalyticsKeyADB_EventName, str);
            AdobeAnalyticsGlobalData.addActionData(str, map, map2);
            AdobeAnalyticsSession.getSharedInstance().trackAction(str, map2);
        }
    }
}
