package com.adobe.premiereclip.metrics;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryAnalyticsConstants;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsGlobalData;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.mobile.Analytics;
import com.adobe.utility.ImageUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Metrics implements Analytics.TimedActionBlock<Boolean> {
    public static final String REMOTE_SOURCE_DROPBOX = "Dropbox";
    public static final String REMOTE_SOURCE_GOOGLE_DRIVE = "GoogleDrive";
    public static final String REMOTE_SOURCE_GOOGLE_PHOTOS = "GooglePhotos";
    private static Metrics instance = new Metrics();
    private String _buildVersion;
    private Boolean _analyticsOptIn = true;
    private String _currentConnectionState = null;
    private Boolean _isUserLoggedIn = false;
    private String _userIdentity = null;
    private int _myProjectsCount = -1;
    private int _myPublishedVideosCount = -1;
    private int _communityVideosCount = 0;
    private int _guidesCount = 0;
    private String _currentProjectTitle = null;
    private String _currentProjectID = null;
    private String _currentProjectExportTitle = null;
    private Boolean _fromTemplate = false;
    private int _currentProjectType = 0;
    private String _currentProjectMediaSource = null;
    private String _currentProjectOriginalTitle = null;
    private String _currentProjectOriginalProjectID = null;
    private int _numExportVideoClips = 0;
    private int _numExportStillImageClips = 0;
    private int _numExportTitleClips = 0;
    private int _numExportStorycardClips = 0;
    private int _numAudioClips = 0;
    private String _exportColorLook = null;
    private String _currentExportPrivacy = null;

    @Override // com.adobe.mobile.Analytics.TimedActionBlock
    public /* bridge */ /* synthetic */ Boolean call(long j, long j2, Map map) {
        return call(j, j2, (Map<String, Object>) map);
    }

    static void logDebug(String str) {
        if (!str.isEmpty()) {
            Log.d("Metrics", str);
        }
    }

    static void logError(String str) {
        if (!str.isEmpty()) {
            Log.e("Metrics", str);
        }
    }

    public static Metrics sharedInstance() {
        if (instance == null) {
            instance = new Metrics();
        }
        return instance;
    }

    private Metrics() {
    }

    private void setObject(Object obj, String str, Map<String, Object> map) {
        if (map != null && obj != null) {
            map.put(str, obj);
        }
    }

    private void setObject(Object obj, String str, Map<String, Object> map, Object obj2) {
        if (map != null) {
            if (obj != null) {
                map.put(str, obj);
            } else {
                map.put(str, obj2);
            }
        }
    }

    private void setError(int i, Map<String, Object> map) {
        setObject(Integer.valueOf(i), "ErrorCode", map);
    }

    private void setGeneralErrorMessage(String str, Map<String, Object> map) {
        setObject(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventError, AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventName, map);
        setObject(str, AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventAction, map);
    }

    private void setGeneralAlertMessage(String str, Map<String, Object> map) {
        setObject("General Alert", AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventName, map);
        setObject(str, AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventAction, map);
    }

    private void setStateName(String str, Map<String, Object> map) {
        setObject(str, "adb.page.pageInfo.pageName", map);
    }

    private void setActionName(String str, Map<String, Object> map) {
        setObject(str, AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventName, map);
    }

    public void setCommonStateInfoInDictionary(Map<String, Object> map) {
        setUserIDInDictionary(map);
        setLoginStateInDictionary(map);
        setProductCategoryInDictionary(map);
        setProductVersionInDictionary(map);
        setProductNamespaceInDictionary(map);
        setProductLanguageInDictionary(map);
        setProductClientIDInDictionary(map);
    }

    public void setCommonActionInfoInDictionary(Map<String, Object> map) {
        setUserIDInDictionary(map);
        setLoginStateInDictionary(map);
        setProductClientIDInDictionary(map);
    }

    private void setLoginStateInDictionary(Map<String, Object> map) {
        setObject(String.format("%s : %s", this._isUserLoggedIn.booleanValue() ? "Logged In" : "Logged Out", this._currentConnectionState), AdobeAnalyticsGlobalData.AdobeAnalyticsKeyADB_AuthStatus, map);
    }

    private void setUserIDInDictionary(Map<String, Object> map) {
        String str;
        if (this._userIdentity != null) {
            str = this._userIdentity;
        } else {
            str = "Unknown";
        }
        setObject(str, AdobeAnalyticsGlobalData.AdobeAnalyticsKeyADB_ProfileId, map);
    }

    private void setAuthStep(String str, Map<String, Object> map) {
        setObject("Auth Steps", AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventName, map);
        setObject(str, AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventAction, map);
    }

    private void setRegistrationStatusInDictionary(Map<String, Object> map) {
        setObject("", AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_RegStatus, map);
    }

    private void setProductCategoryInDictionary(Map<String, Object> map) {
        setObject("mobile", "adb.page.pageInfo.productCategory", map);
    }

    private void setProductVersionInDictionary(Map<String, Object> map) {
        setObject(this._buildVersion, "adb.page.pageInfo.productVersion", map);
    }

    private void setProductNamespaceInDictionary(Map<String, Object> map) {
        setObject("clip", "adb.page.pageInfo.namespace", map);
    }

    private void setProductLanguageInDictionary(Map<String, Object> map) {
        setObject("en-us", AdobeAnalyticsGlobalData.AdobeAnalyticsKeyPageInfoLanguage, map);
    }

    private void setProductClientIDInDictionary(Map<String, Object> map) {
        setObject("PremiereClip_app", AdobeAnalyticsGlobalData.AdobeAnalyticsKeyADB_ClientId, map);
    }

    private void setAppSection(String str, Map<String, Object> map) {
        setObject(str, "adb.page.pageInfo.category.primaryCategory", map);
    }

    private void clearUserSpecificInformation() {
        this._myProjectsCount = -1;
        this._myPublishedVideosCount = -1;
    }

    private void setCurrentProjectInfoInDictionary(Map<String, Object> map) {
        setObject(this._currentProjectTitle, "hs.project.attributes.title", map);
        setObject(this._currentProjectID, "hs.project.attributes.projectId", map);
        setObject(this._currentProjectExportTitle, "hs.project.attributes.exportTitle", map);
        setObject(Integer.valueOf(this._fromTemplate.booleanValue() ? 1 : 0), "hs.project.attributes.isFromTemplate", map);
        setObject(Integer.valueOf(this._currentProjectType), "hs.project.attributes.projectType", map);
        setObject(this._currentProjectMediaSource, "hs.project.attributes.projectMediaSource", map);
        setObject(this._currentProjectOriginalTitle, "hs.project.attributes.originalProject.title", map);
        setObject(this._currentProjectOriginalProjectID, "hs.project.attributes.originalProject.projectId", map);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", map);
    }

    private void setCurrentProjectSignatureInDictionary(Map<String, Object> map) {
        setObject(Integer.valueOf(this._numExportVideoClips), "hs.project.sequence.videos", map);
        setObject(Integer.valueOf(this._numExportStillImageClips), "hs.project.sequence.stillImages", map);
        setObject(Integer.valueOf(this._numExportTitleClips), "hs.project.sequence.titles", map);
        setObject(Integer.valueOf(this._numExportStorycardClips), "hs.project.sequence.storycards", map);
        setObject(Integer.valueOf(this._numAudioClips), "hs.project.sequence.audio", map);
        setObject(this._exportColorLook, "hs.project.sequence.colorLook", map);
    }

    public void setLoggingEnabled(Boolean bool) {
        ADBMAnalyticsHelper.setDebugLogging(bool);
    }

    public void didModifyAnalyticsCollection(Boolean bool) {
        this._analyticsOptIn = bool;
        ADBMAnalyticsHelper.setPrivacyStatus(bool);
        if (bool.booleanValue()) {
            ADBMAnalyticsHelper.trackAction("EnabledAnalyticsCollection", null);
        }
    }

    public void didStartAppWithBuildName(String str, String str2) {
        if (this._analyticsOptIn.booleanValue()) {
            this._buildVersion = String.format("%s/%s", str, str2);
            HashMap map = new HashMap();
            setActionName("App:Started", map);
            setCommonActionInfoInDictionary(map);
            setProductCategoryInDictionary(map);
            setProductVersionInDictionary(map);
            setProductNamespaceInDictionary(map);
            setProductLanguageInDictionary(map);
            setProductClientIDInDictionary(map);
            ADBMAnalyticsHelper.trackAction("App:Started", map);
        }
    }

    public void didSetApplicationInstanceID(String str) {
    }

    public void didBecomeActive() {
        HashMap map = new HashMap();
        setActionName("App:BecameActive", map);
        setCommonActionInfoInDictionary(map);
        setProductCategoryInDictionary(map);
        setProductVersionInDictionary(map);
        setProductNamespaceInDictionary(map);
        setProductLanguageInDictionary(map);
        ADBMAnalyticsHelper.trackAction("App:BecameActive", map);
    }

    public void didResignActive() {
        HashMap map = new HashMap();
        setActionName("App:ResignedActive", map);
        setCommonActionInfoInDictionary(map);
        setProductCategoryInDictionary(map);
        setProductVersionInDictionary(map);
        setProductNamespaceInDictionary(map);
        setProductLanguageInDictionary(map);
        ADBMAnalyticsHelper.trackAction("App:ResignedActive", map);
    }

    public void didRetrieveDeviceFreeSpaceBytes(long j) {
        HashMap map = new HashMap();
        setActionName("App:RetrievedDeviceFreeSpace", map);
        setCommonActionInfoInDictionary(map);
        setProductCategoryInDictionary(map);
        setProductVersionInDictionary(map);
        setObject(Long.valueOf(j), "hs.device.filesystem.freesize.bytes", map);
        ADBMAnalyticsHelper.trackAction("App:RetrievedDeviceFreeSpace", map);
    }

    public void didShowBecomeActiveView() {
        HashMap map = new HashMap();
        setStateName("AppActive", map);
        setAppSection("OS", map);
        setCommonStateInfoInDictionary(map);
        ADBMAnalyticsHelper.trackState("AppActive", map);
    }

    public void didShowResignedActiveView() {
        HashMap map = new HashMap();
        setStateName("AppNotActive", map);
        setAppSection("OS", map);
        setCommonStateInfoInDictionary(map);
        ADBMAnalyticsHelper.trackState("AppNotActive", map);
    }

    public void didShowSplashScreen() {
        HashMap map = new HashMap();
        setStateName("SplashScreen", map);
        setAppSection("Organizer", map);
        setCommonStateInfoInDictionary(map);
        ADBMAnalyticsHelper.trackState("SplashScreen", map);
    }

    public void didShowWelcomeView() {
        HashMap map = new HashMap();
        setStateName("Welcome", map);
        setAppSection("Organizer", map);
        setCommonStateInfoInDictionary(map);
        ADBMAnalyticsHelper.trackState("Welcome", map);
    }

    public static void addStorycardClipTapped(String str, String str2) {
        ADBMAnalyticsHelper.addStorycardClipTapped(str, str2);
    }

    public static void addStorycardDialogFeedbackTapped(String str, String str2) {
        ADBMAnalyticsHelper.addStorycardDialogFeedbackTapped(str, str2);
    }

    public static void dropboxImportTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.dropboxImportTapped(str, str2, str3);
    }

    public static void dropboxFeedbackTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.dropboxFeedbackTapped(str, str2, str3);
    }

    public static void googleDriveImportTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.googleDriveImportTapped(str, str2, str3);
    }

    public static void googleDriveFeedbackTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.googleDriveFeedbackTapped(str, str2, str3);
    }

    public static void creativeCloudImportTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.creativeCloudImportTapped(str, str2, str3);
    }

    public static void creativeCloudFeedbackTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.creativeCloudFeedbackTapped(str, str2, str3);
    }

    public static void cameraImportTapped(String str) {
        ADBMAnalyticsHelper.cameraImportTapped(str);
    }

    public static void goProThumbsLoaded(String str) {
        ADBMAnalyticsHelper.goProThumbsLoaded(str);
    }

    public static void goProTransferAttempted(String str, int i, Map<String, Object>[] mapArr) {
        for (int i2 = 0; i2 < i; i2++) {
            ADBMAnalyticsHelper.goProTransferAttempted(str, mapArr[i2]);
        }
    }

    public static void goProTransferSucceeded(String str, Map<String, Object> map) {
        ADBMAnalyticsHelper.goProTransferSucceeded(str, map);
    }

    public static void clipTitleMenuTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.clipTitleMenuTapped(str, str2, str3);
    }

    public static void clipTitleDialogFeedbackTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.clipTitleDialogFeedbackTapped(str, str2, str3);
    }

    public static void clipStoryCardMenuTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.clipStoryCardMenuTapped(str, str2, str3);
    }

    public static void clipVoiceoverMenuTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.clipVoiceoverMenuTapped(str, str2, str3);
    }

    public static void clipVoiceoverDialogFeedbackTapped(String str, String str2, String str3) {
        ADBMAnalyticsHelper.clipVoiceoverDialogFeedbackTapped(str, str2, str3);
    }

    public void setCurrentProjectInfoWithTitle(String str, String str2, String str3, Boolean bool, int i, String str4, String str5) {
        this._currentProjectTitle = str;
        this._currentProjectID = str2;
        this._currentProjectExportTitle = str3;
        this._fromTemplate = bool;
        this._currentProjectType = i;
        this._currentProjectOriginalTitle = str4;
        this._currentProjectOriginalProjectID = str5;
    }

    public void clearCurrentProjectInfo() {
        this._currentProjectTitle = null;
        this._currentProjectID = null;
        this._currentProjectExportTitle = null;
        this._fromTemplate = false;
        this._currentProjectType = 0;
        this._currentProjectMediaSource = null;
        this._currentProjectOriginalTitle = null;
        this._currentProjectOriginalProjectID = null;
    }

    public void setCurrentProjectSignatureWithVideoClips(int i, int i2, int i3, int i4, int i5, String str) {
        this._numExportVideoClips = i;
        this._numExportStillImageClips = i2;
        this._numExportTitleClips = i3;
        this._numExportStorycardClips = i4;
        this._numAudioClips = i5;
        this._exportColorLook = str;
    }

    public void setCurrentProjectType(int i) {
        this._currentProjectType = i;
    }

    public void setCurrentProjectMediaSource(String str) {
        this._currentProjectMediaSource = str;
    }

    public void clearCurrentProjectSignature() {
        this._numExportVideoClips = 0;
        this._numExportStillImageClips = 0;
        this._numExportTitleClips = 0;
        this._numExportStorycardClips = 0;
        this._numAudioClips = 0;
        this._exportColorLook = null;
    }

    public void setExportPrivacy(String str) {
        this._currentExportPrivacy = str;
    }

    public void clearExportInfo() {
        this._currentExportPrivacy = null;
    }

    public void setConnectionState(String str) {
        this._currentConnectionState = str;
    }

    public void didAttemptSignUp() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        setActionName(AdobeAnalyticsSDKReporter.AdobeAnalyticsEventNameRegStep, map);
        setObject(AdobeAnalyticsSDKReporter.AdobeAnalyticsRegReportSignupStart, AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventAction, map);
        ADBMAnalyticsHelper.trackAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsEventNameRegStep, map);
    }

    public void didAttemptSignIn() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        setObject("Authentication Action:Sign In:Attempted", "mobile.hs.event", map);
        ADBMAnalyticsHelper.trackAction("Attempted Sign In", map);
    }

    public void didCancelSignIn() {
        HashMap map = new HashMap();
        setObject("Authentication Action:Sign In:Cancelled", "mobile.hs.event", map);
        ADBMAnalyticsHelper.trackAction("Cancelled Sign In", map);
    }

    public void didFailSignInWithError(int i) {
        HashMap map = new HashMap();
        setObject("Authentication Action:Sign In:Failed", "mobile.hs.event", map);
        setError(i, map);
        ADBMAnalyticsHelper.trackAction("Failed Sign In", map);
    }

    public void didSignInWithAdobeID(String str) {
        this._isUserLoggedIn = true;
        HashMap map = new HashMap();
        if (this._analyticsOptIn.booleanValue()) {
            this._userIdentity = str;
            ADBMAnalyticsHelper.setUserIdentifier(this._userIdentity);
        }
        setCommonActionInfoInDictionary(map);
        setObject("Authentication Action:Sign In:Signed In", "mobile.hs.event", map);
        ADBMAnalyticsHelper.trackAction("Signed In", map);
        setObject("Authentication Action:Sign In:Successful", "mobile.hs.event", map);
        ADBMAnalyticsHelper.trackAction("signInSuccessful", map);
    }

    public void didAuthenticateUserWithAdobeID(String str) {
        this._isUserLoggedIn = true;
        ADBMAnalyticsHelper.setUserLoggedIn(true);
        if (this._analyticsOptIn.booleanValue()) {
            this._userIdentity = str;
            ADBMAnalyticsHelper.setUserIdentifier(this._userIdentity);
            HashMap map = new HashMap();
            setCommonActionInfoInDictionary(map);
            setObject("Authentication Action:Sign In:Authenticated", "mobile.hs.event", map);
            ADBMAnalyticsHelper.trackAction("Authenticated User", map);
            setObject("Authentication Action:Sign In:User Logged In", "mobile.hs.event", map);
            ADBMAnalyticsHelper.trackAction("userLoggedIn", map);
        }
    }

    public void didAttemptSignOutWithAdobeID() {
        HashMap map = new HashMap();
        setUserIDInDictionary(map);
        setObject("Authentication Action:Sign Out:Attempted", "mobile.hs.event", map);
        ADBMAnalyticsHelper.trackAction("Attempted Sign Out", map);
    }

    public void didShowOfflineSignOutConfirmation() {
        HashMap map = new HashMap();
        setObject("Authentication Action:Sign Out:Attempted:Confirmation Shown", "mobile.hs.event", map);
        ADBMAnalyticsHelper.trackAction("Offline Sign Out Confirmation Shown", map);
    }

    public void didFailSignOutWithError(int i) {
        HashMap map = new HashMap();
        setError(i, map);
        setObject("Authentication Action:Sign Out:Failed", "mobile.hs.event", map);
        ADBMAnalyticsHelper.trackAction("Failed Sign Out", map);
    }

    public void didSignOut() {
        this._isUserLoggedIn = false;
        this._userIdentity = null;
        ADBMAnalyticsHelper.setUserIdentifier(null);
        clearUserSpecificInformation();
        ADBMAnalyticsHelper.setUserLoggedIn(false);
        HashMap map = new HashMap();
        setObject("Authentication Action:Sign Out:Success", "mobile.hs.event", map);
        ADBMAnalyticsHelper.trackAction("Signed Out", map);
    }

    public Map<String, Object> contextDataForEditorAction() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        return map;
    }

    public void didPlaySequenceWithDuration(double d2, int i, int i2, Boolean bool) {
        String str = bool.booleanValue() ? "ProjectEditor:Playback:PlayedFullSequence" : "ProjectEditor:Playback:PlayedSequence";
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName(str, mapContextDataForEditorAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.duration", mapContextDataForEditorAction);
        setObject(Integer.valueOf(i2), "hs.project.sequence.videos", mapContextDataForEditorAction);
        setObject(Integer.valueOf(i), "hs.project.sequence.audio", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction(str, mapContextDataForEditorAction);
    }

    public void didCompleteAutocreateDuration(double d2, int i, int i2) {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:Autocreate", mapContextDataForEditorAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.duration", mapContextDataForEditorAction);
        setObject(Integer.valueOf(i2), "hs.project.sequence.videos", mapContextDataForEditorAction);
        setObject(Integer.valueOf(i), "hs.project.sequence.stillimages", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Autocreate", mapContextDataForEditorAction);
    }

    public void didTapProjectTitleInProjectEditor() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:TappedProjectName", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:TappedProjectName", mapContextDataForEditorAction);
    }

    public void didEditProjectTitleInProjectEditor(String str) {
        this._currentProjectTitle = str;
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:EditedProjectTitle", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:EditedProjectTitle", mapContextDataForEditorAction);
    }

    public void didTapSyncCloudInProjectEditor() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:TappedSyncCloud", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:TappedSyncCloud", mapContextDataForEditorAction);
    }

    public void didTapSyncStatusProjectResync() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:SyncStatus:TappedResync", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:SyncStatus:TappedResync", mapContextDataForEditorAction);
    }

    public void didTapSyncStatusProjectCancelSync() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:SyncStatus:TappedCancelSync", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:SyncStatus:TappedCancelSync", mapContextDataForEditorAction);
    }

    public void didTapSyncStatusProjectSyncDetail() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:SyncStatus:TappedSyncDetail", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:SyncStatus:TappedSyncDetail", mapContextDataForEditorAction);
    }

    public void didTapSyncDetailProjectResync() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:SyncStatus:SyncDetail:TappedResync", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:SyncStatus:SyncDetail:TappedResync", mapContextDataForEditorAction);
    }

    public void didTapSyncErrorDeleteSoundtrack() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:SyncStatus:Soundtrack:TappedDelete", mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:SyncStatus:Soundtrack:TappedDelete", mapContextDataForEditorAction);
    }

    public void didTapExport() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:TappedExport", mapContextDataForEditorAction);
        setCurrentProjectSignatureInDictionary(mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:TappedExport", mapContextDataForEditorAction);
    }

    public void didDenyExportDueToMissingMediaOnDevice() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:DeniedExport:MissingMediaOnDevice", mapContextDataForEditorAction);
        setCurrentProjectSignatureInDictionary(mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:DeniedExport:MissingMediaOnDevice", mapContextDataForEditorAction);
    }

    public void didTapHomeInProjectEditor() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:TappedHome", mapContextDataForEditorAction);
        setCurrentProjectSignatureInDictionary(mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:TappedHome", mapContextDataForEditorAction);
    }

    public Map<String, Object> contextDataForEditorState() {
        HashMap map = new HashMap();
        setAppSection("ProjectEditor", map);
        setCommonStateInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        return map;
    }

    public void didShowProjectEditorView() {
        Map<String, Object> mapContextDataForEditorState = contextDataForEditorState();
        setStateName("ProjectEditor", mapContextDataForEditorState);
        ADBMAnalyticsHelper.trackState("ProjectEditor", mapContextDataForEditorState);
    }

    public void didConvertProjectToFreeform() {
        Map<String, Object> mapContextDataForEditorAction = contextDataForEditorAction();
        setActionName("ProjectEditor:ConvertToFreeform", mapContextDataForEditorAction);
        setCurrentProjectSignatureInDictionary(mapContextDataForEditorAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:ConvertToFreeform", mapContextDataForEditorAction);
    }

    public void didShowCameraCaptureView() {
        Map<String, Object> mapContextDataForEditorState = contextDataForEditorState();
        setStateName("CameraCapture", mapContextDataForEditorState);
        ADBMAnalyticsHelper.trackState("CameraCapture", mapContextDataForEditorState);
    }

    public Map<String, Object> contextDataForMyProjectsActions() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        return map;
    }

    public void didScrollOrganizerToMyProjects() {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:ScrolledToCenter", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:ScrolledToCenter", mapContextDataForMyProjectsActions);
    }

    public void didTapNewProject() {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:TappedNewProject", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:TappedNewProject", mapContextDataForMyProjectsActions);
    }

    public void didTapGetStartedForNewProject(String str) {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:NewProject:TappedGetStarted", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        setObject(str, "hs.project.attributes.title", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:NewProject:TappedGetStarted", mapContextDataForMyProjectsActions);
    }

    public void didTapTryAGuide() {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:NewProject:TappedTryAGuide", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:NewProject:TappedTryAGuide", mapContextDataForMyProjectsActions);
    }

    public void didCreateNewProject() {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:NewProject:CreatedProject", mapContextDataForMyProjectsActions);
        setCurrentProjectInfoInDictionary(mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:NewProject:CreatedProject", mapContextDataForMyProjectsActions);
    }

    public void didRefreshMyProjects() {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:Refreshed", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:Refreshed", mapContextDataForMyProjectsActions);
    }

    public void didTapPosterFrameForMyProject(String str) {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:TappedProject", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        setObject(str, "hs.user.projects.project.attributes.projectId", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:TappedProject", mapContextDataForMyProjectsActions);
    }

    public void didStartProjectOpenForMyProject(String str) {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:OpenedProject", mapContextDataForMyProjectsActions);
        setObject(str, "hs.user.projects.project.attributes.projectId", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackTimedActionStart("MyProjects:OpenedProject", mapContextDataForMyProjectsActions);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.adobe.mobile.Analytics.TimedActionBlock
    public Boolean call(long j, long j2, Map<String, Object> map) {
        setActionName("MyProjects:OpenedProject", map);
        setCurrentProjectInfoInDictionary(map);
        setObject(Long.valueOf(j), "hs.project.openDuration.inApp", map);
        setObject(Long.valueOf(j2), "hs.project.openDuration.total", map);
        logDebug("ADBMobile trackTimedActionEnd: MyProjects:OpenedProject data: " + map);
        return true;
    }

    public void didFinishProjectOpenForMyProject(String str) {
        ADBMAnalyticsHelper.trackTimedActionEnd("MyProjects:OpenedProject", this);
    }

    public void didTapDuplicateForMyProject(String str) {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:TappedDuplicate", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        setObject(str, "hs.user.projects.project.attributes.projectId", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:TappedDuplicate", mapContextDataForMyProjectsActions);
    }

    public void didTapDeleteForMyProject(String str) {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:TappedDelete", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        setObject(str, "hs.user.projects.project.attributes.projectId", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:TappedDelete", mapContextDataForMyProjectsActions);
    }

    public void didDeleteMyProject(String str) {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:DeletedProject", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        setObject(str, "hs.user.projects.project.attributes.projectId", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:DeletedProject", mapContextDataForMyProjectsActions);
    }

    public void didTapTitleForMyProject(String str) {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:TappedProjectName", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        setObject(str, "hs.user.projects.project.attributes.projectId", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:TappedProjectName", mapContextDataForMyProjectsActions);
    }

    public void didEditTitleForMyProject(String str) {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:EditedProjectTitle", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        setObject(str, "hs.user.projects.project.attributes.projectId", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:EditedProjectTitle", mapContextDataForMyProjectsActions);
    }

    public void didOpenClipProjectsCreateURL(String str) {
        setCurrentProjectMediaSource(str);
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:ClipScheme:ProjectsHost:CreateProject", mapContextDataForMyProjectsActions);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", mapContextDataForMyProjectsActions);
        setObject(str, "hs.project.attributes.originalsource", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:ClipScheme:ProjectsHost:CreateProject", mapContextDataForMyProjectsActions);
    }

    public void didCompletedUpgradeForCurrentCBLProject(String str) {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:UpgradeCBLProjectToDCX", mapContextDataForMyProjectsActions);
        setObject(str, "hs.project.attributes.projectId", mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:UpgradeCBLProjectToDCX", mapContextDataForMyProjectsActions);
    }

    public void didCreateNewFreeformProject() {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:NewProject:CreatedFreeformProject", mapContextDataForMyProjectsActions);
        setCurrentProjectInfoInDictionary(mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:NewProject:CreatedFreeformProject", mapContextDataForMyProjectsActions);
    }

    public void didCreateNewAutomaticProject() {
        Map<String, Object> mapContextDataForMyProjectsActions = contextDataForMyProjectsActions();
        setActionName("MyProjects:NewProject:CreatedAutomaticProject", mapContextDataForMyProjectsActions);
        setCurrentProjectInfoInDictionary(mapContextDataForMyProjectsActions);
        ADBMAnalyticsHelper.trackAction("MyProjects:NewProject:CreatedAutomaticProject", mapContextDataForMyProjectsActions);
    }

    public Map<String, Object> contextDataForMyProjectsState() {
        HashMap map = new HashMap();
        setAppSection("Organizer", map);
        setCommonStateInfoInDictionary(map);
        setObject(Integer.valueOf(this._myProjectsCount), "hs.user.projects.count", map);
        return map;
    }

    public void didShowMyProjectsView() {
        Map<String, Object> mapContextDataForMyProjectsState = contextDataForMyProjectsState();
        setStateName("MyProjects", mapContextDataForMyProjectsState);
        ADBMAnalyticsHelper.trackState("MyProjects", mapContextDataForMyProjectsState);
    }

    public void setMyProjectsCount(int i) {
        this._myProjectsCount = i;
    }

    public Map<String, Object> contextDataForEditorClipAction() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        return map;
    }

    public void didTapClipBrightnessMenuForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:TappedBrightnessMenu", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:TappedBrightnessMenu", mapContextDataForEditorClipAction);
    }

    public void didChangeClipShadowsSlider(float f2, String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:BrightnessMenu:ChangedShadowsSlider", mapContextDataForEditorClipAction);
        setObject(Float.valueOf(f2), "hs.project.sequence.clip.shadows", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:BrightnessMenu:ChangedShadowsSlider", mapContextDataForEditorClipAction);
    }

    public void didDoubleTapClipShadowsSliderForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:BrightnessMenu:DoubleTappedShadowsSlider", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:BrightnessMenu:DoubleTappedShadowsSlider", mapContextDataForEditorClipAction);
    }

    public void didChangeClipHighlightsSlider(float f2, String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:BrightnessMenu:ChangedHighlightsSlider", mapContextDataForEditorClipAction);
        setObject(Float.valueOf(f2), "hs.project.sequence.clip.highlights", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:BrightnessMenu:ChangedHighlightsSlider", mapContextDataForEditorClipAction);
    }

    public void didDoubleTapClipHighlightsSliderForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:BrightnessMenu:DoubleTappedHighlightsSlider", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:BrightnessMenu:DoubleTappedHighlightsSlider", mapContextDataForEditorClipAction);
    }

    public void didChangeClipExposureSlider(float f2, String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:BrightnessMenu:ChangedExposureSlider", mapContextDataForEditorClipAction);
        setObject(Float.valueOf(f2), "hs.project.sequence.clip.exposure", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:BrightnessMenu:ChangedExposureSlider", mapContextDataForEditorClipAction);
    }

    public void didDoubleTapClipExposureSliderForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:BrightnessMenu:DoubleTappedExposureSlider", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:BrightnessMenu:DoubleTappedExposureSlider", mapContextDataForEditorClipAction);
    }

    public void didTapClipMoreMenuForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:TappedMoreMenu", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:TappedMoreMenu", mapContextDataForEditorClipAction);
    }

    public void didTapClipTextMenuForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:TappedTextMenu", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:TappedTextMenu", mapContextDataForEditorClipAction);
    }

    public void didTapClipAudioMenuForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:TappedAudioMenu", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:TappedAudioMenu", mapContextDataForEditorClipAction);
    }

    public void didToggleClipPlayAudio(Boolean bool, String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:AudioMenu:ToggledPlayAudio", mapContextDataForEditorClipAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.clip.playAudio", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:AudioMenu:ToggledPlayAudio", mapContextDataForEditorClipAction);
    }

    public void didChangeClipVolumeSlider(float f2, String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:AudioMenu:ChangedVolumeSlider", mapContextDataForEditorClipAction);
        setObject(Float.valueOf(f2), "hs.project.sequence.clip.volume", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:AudioMenu:ChangedVolumeSlider", mapContextDataForEditorClipAction);
    }

    public void didDoubleTapClipVolumeSliderForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:AudioMenu:DoubleTappedVolumeSlider", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:AudioMenu:DoubleTappedVolumeSlider", mapContextDataForEditorClipAction);
    }

    public void didToggleClipSmartVolume(Boolean bool, String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:AudioMenu:ToggledSmartVolume", mapContextDataForEditorClipAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.clip.smartVolume", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:AudioMenu:ToggledSmartVolume", mapContextDataForEditorClipAction);
    }

    public void didToggleClipAudioFadeIn(Boolean bool, String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:AudioMenu:ToggledFadeIn", mapContextDataForEditorClipAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.clip.audioFadeIn", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:AudioMenu:ToggledFadeIn", mapContextDataForEditorClipAction);
    }

    public void didToggleClipAudioFadeOut(Boolean bool, String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:AudioMenu:ToggledFadeOut", mapContextDataForEditorClipAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.clip.audioFadeOut", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:AudioMenu:ToggledFadeOut", mapContextDataForEditorClipAction);
    }

    public void didTapClipSpeedMenuForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:TappedSpeedMenu", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:TappedSpeedMenu", mapContextDataForEditorClipAction);
    }

    public void didChangeClipSpeedSlider(float f2, String str, double d2) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:SpeedMenu:ChangedSpeedSlider", mapContextDataForEditorClipAction);
        setObject(Float.valueOf(f2), "hs.project.sequence.clip.speed", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.clip.duration", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:SpeedMenu:ChangedSpeedSlider", mapContextDataForEditorClipAction);
    }

    public void didDoubleTapClipSpeedSliderForClipType(String str, double d2) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:SpeedMenu:DoubleTappedSpeedSlider", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.clip.duration", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:SpeedMenu:DoubleTappedSpeedSlider", mapContextDataForEditorClipAction);
    }

    public void didTapClipDuplicateMenuForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:TappedDuplicateMenu", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:TappedDuplicateMenu", mapContextDataForEditorClipAction);
    }

    public void didTapSplitClipForClipType(String str, double d2, double d3) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:DuplicateMenu:TappedSplitClip", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.clip.cti", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d3), "hs.project.sequence.clip.duration", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:DuplicateMenu:TappedSplitClip", mapContextDataForEditorClipAction);
    }

    public void didTapDuplicateClipForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:DuplicateMenu:TappedDuplicateClip", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:DuplicateMenu:TappedDuplicateClip", mapContextDataForEditorClipAction);
    }

    public void didTapClipStorycardMenuForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:TappedStorycardMenu", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:TappedStorycardMenu", mapContextDataForEditorClipAction);
    }

    public void didTapTurnIntoStorycardForClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:StorycardMenu:TappedTurnIntoStorycard", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:StorycardMenu:TappedTurnIntoStorycard", mapContextDataForEditorClipAction);
    }

    public void didCreateStorycardFromClipType(String str) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:StorycardMenu:CreatedStorycard", mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:StorycardMenu:CreatedStorycard", mapContextDataForEditorClipAction);
    }

    public void didTrimClipForClipType(String str, Boolean bool, double d2, double d3, double d4) {
        String str2 = bool.booleanValue() ? "ClipEditor:TrimmedClipInPoint" : "ClipEditor:TrimmedClipOutPoint";
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName(str2, mapContextDataForEditorClipAction);
        setObject(str, "hs.project.sequence.clip.attributes.type", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.clip.inPoint", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d3), "hs.project.sequence.clip.duration", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d3), "hs.project.sequence.clip.mediaDuration", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForEditorClipAction);
    }

    public Map<String, Object> contextDataForEditorClipState() {
        HashMap map = new HashMap();
        setAppSection("ProjectEditor", map);
        setCommonStateInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        return map;
    }

    public void didTwoFingerPan(double d2, double d3, double d4) {
        Map<String, Object> mapContextDataForEditorClipAction = contextDataForEditorClipAction();
        setActionName("ClipEditor:TwoFingerPan", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.clip.inPoint", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d3), "hs.project.sequence.clip.duration", mapContextDataForEditorClipAction);
        setObject(Double.valueOf(d3), "hs.project.sequence.clip.mediaDuration", mapContextDataForEditorClipAction);
        ADBMAnalyticsHelper.trackAction("ClipEditor:TwoFingerPan", mapContextDataForEditorClipAction);
    }

    public Map<String, Object> contextDataForEditorSequenceAction() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        return map;
    }

    public void didTapMediaPickerForSequenceWithDuration(double d2, int i, int i2) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:TappedMediaPicker", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i2), "hs.project.sequence.videos", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i), "hs.project.sequence.audio", mapContextDataForEditorSequenceAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.duration", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:TappedMediaPicker", mapContextDataForEditorSequenceAction);
    }

    public void didTapMediaPickerOnMyDevice() {
        setCurrentProjectMediaSource("MyDevice");
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:TappedOnMyDevice", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:TappedOnMyDevice", mapContextDataForEditorSequenceAction);
    }

    public void didImportMyDeviceAssetInMediaPicker() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:OnMyDevice:ImportedAsset", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:OnMyDevice:ImportedAsset", mapContextDataForEditorSequenceAction);
    }

    public void didFailImportOfMyDeviceICloudAssetInMediaPicker() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:OnMyDevice:FailedAssetImport:iCloud", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:OnMyDevice:FailedAssetImport:iCloud", mapContextDataForEditorSequenceAction);
    }

    public void didAddVideoClipWithHeight(int i, int i2, double d2, float f2) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:AddedVideoClip", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i), "hs.project.sequence.videos.attributes.height", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i2), "hs.project.sequence.videos.attributes.width", mapContextDataForEditorSequenceAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.videos.attributes.frameRate", mapContextDataForEditorSequenceAction);
        setObject(Float.valueOf(f2), "hs.project.sequence.videos.attributes.speed", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:AddedVideoClip", mapContextDataForEditorSequenceAction);
    }

    public void didToggleMediaPickerType(String str) {
        String str2 = "ProjectEditor:MediaPicker:OnMyDevice:SwitchTo" + str;
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName(str2, mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForEditorSequenceAction);
    }

    public void didTapMediaPickerCreativeCloud() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:TappedCreativeCloud", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:TappedCreativeCloud", mapContextDataForEditorSequenceAction);
    }

    public void didAttemptImportOfCreativeCloudFileAssetInMediaPicker() {
        setCurrentProjectMediaSource("MyFiles");
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:AttemptedImport", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:AttemptedImport", mapContextDataForEditorSequenceAction);
    }

    public void didDownloadCreativeCloudFileAssetInMediaPicker() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:DownloadedAsset", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:DownloadedAsset", mapContextDataForEditorSequenceAction);
    }

    public void didFailDownloadOfCreativeCloudFileAssetInMediaPicker() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:FailedAssetDownload", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:FailedAssetDownload", mapContextDataForEditorSequenceAction);
    }

    public void didCancelDownloadOfCreativeCloudFileAssetInMediaPicker() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:CancelledAssetDownload", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:CancelledAssetDownload", mapContextDataForEditorSequenceAction);
    }

    public void didAttemptImportOfCreativeCloudPhotoAssetInMediaPicker() {
        setCurrentProjectMediaSource(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetLightroom);
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:Lightroom:AttemptedImport", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:Lightroom:AttemptedImport", mapContextDataForEditorSequenceAction);
    }

    public void didDownloadCreativeCloudPhotoAssetInMediaPicker() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:Lightroom:DownloadedAsset", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:Lightroom:DownloadedAsset", mapContextDataForEditorSequenceAction);
    }

    public void didFailDownloadOfCreativeCloudPhotoAssetInMediaPicker() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:Lightroom:FailedAssetDownload", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:Lightroom:FailedAssetDownload", mapContextDataForEditorSequenceAction);
    }

    public void didCancelDownloadOfCreativeCloudPhotoAssetInMediaPicker() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:Lightroom:CancelledAssetDownload", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:Lightroom:CancelledAssetDownload", mapContextDataForEditorSequenceAction);
    }

    public void didDenyDownloadOfUnsupportedCreativeCloudAssetInMediaPicker() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:DenyUnsupportedAsset", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:DenyUnsupportedAsset", mapContextDataForEditorSequenceAction);
    }

    public void didTapMediaPickerTitle() {
        setCurrentProjectMediaSource("Title");
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:TappedTitle", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:TappedTitle", mapContextDataForEditorSequenceAction);
    }

    public void didTapMediaPickerUseCamera() {
        setCurrentProjectMediaSource(ImageUtils.SOURCE_TYPE_CAMERA);
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:TappedUseCamera", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:TappedUseCamera", mapContextDataForEditorSequenceAction);
    }

    public void didSelectCreativeCloudAssetInMediaPickerWithAssetCount(int i) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:MediaPicker:CreativeCloud:SelectedAssets", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i), "hs.project.sequence.import.cc.assets.count", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:MediaPicker:CreativeCloud:SelectedAssets", mapContextDataForEditorSequenceAction);
    }

    public void didTapMediaPickerRemoteSource(String str) {
        String str2 = "ProjectEditor:MediaPicker:Tapped" + str;
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName(str2, mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForEditorSequenceAction);
    }

    public void didAttemptImportOfRemoteSourceAssetInMediaPicker(String str) {
        String str2 = "ProjectEditor:MediaPicker:" + str + ":AttemptedImport";
        setCurrentProjectMediaSource("MyFiles");
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName(str2, mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForEditorSequenceAction);
    }

    public void didDownloadRemoteSourceAssetInMediaPicker(String str) {
        String str2 = "ProjectEditor:MediaPicker:" + str + ":DownloadedAsset";
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName(str2, mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForEditorSequenceAction);
    }

    public void didFailDownloadOfRemoteSourceAssetInMediaPicker(String str) {
        String str2 = "ProjectEditor:MediaPicker:" + str + ":FailedAssetDownload";
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName(str2, mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForEditorSequenceAction);
    }

    public void didCancelDownloadOfRemoteSourceAssetInMediaPicker(String str) {
        String str2 = "ProjectEditor:MediaPicker:" + str + ":CancelledAssetDownload";
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName(str2, mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForEditorSequenceAction);
    }

    public void didAttemptExternalLaunch(boolean z) {
        String str = "TourView:" + (z ? "ClipNotification" : "OtherApps") + ":AttemptedExternalLaunch";
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName(str, mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction(str, mapContextDataForEditorSequenceAction);
    }

    public void didTapShootForStorycardInSequenceWithDuration(double d2, int i, int i2) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:Storycard:TappedShoot", mapContextDataForEditorSequenceAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.duration", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i), "hs.project.sequence.videos", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i2), "hs.project.sequence.storycards", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Storycard:TappedShoot", mapContextDataForEditorSequenceAction);
    }

    public void didShootIntoStorycardInSequenceWithDuration(double d2, int i, int i2) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:Storycard:StorycardShot", mapContextDataForEditorSequenceAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.duration", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i), "hs.project.sequence.videos", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i2), "hs.project.sequence.storycards", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Storycard:StorycardShot", mapContextDataForEditorSequenceAction);
    }

    public void didTapFinishingTouchesForSequenceWithDuration(double d2, int i, int i2) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:TappedFinishingTouches", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i2), "hs.project.sequence.videos", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(i), "hs.project.sequence.audio", mapContextDataForEditorSequenceAction);
        setObject(Double.valueOf(d2), "hs.project.sequence.duration", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:TappedFinishingTouches", mapContextDataForEditorSequenceAction);
    }

    public void didTapFinishingTouchesLooksMenu() {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:FinishingTouches:TappedLooksMenu", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:FinishingTouches:TappedLooksMenu", mapContextDataForEditorSequenceAction);
    }

    public void didSelectFinishingTouchesLook(String str) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:FinishingTouches:LooksMenu:SelectedLook", mapContextDataForEditorSequenceAction);
        setObject(str, "hs.project.sequence.colorLook", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:FinishingTouches:LooksMenu:SelectedLook", mapContextDataForEditorSequenceAction);
    }

    public void didToggleFinishingTouchesFadeIn(Boolean bool) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:FinishingTouches:ToggledFadeIn", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.fadeIn", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:FinishingTouches:ToggledFadeIn", mapContextDataForEditorSequenceAction);
    }

    public void didToggleFinishingTouchesFadeOut(Boolean bool) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:FinishingTouches:ToggledFadeOut", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.fadeOut", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:FinishingTouches:ToggledFadeOut", mapContextDataForEditorSequenceAction);
    }

    public void didToggleFinishingTouchesMotion(Boolean bool) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:FinishingTouches:ToggledMotion", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.motion", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:FinishingTouches:ToggledMotion", mapContextDataForEditorSequenceAction);
    }

    public void didToggleFinishingTouchesCrossFade(Boolean bool) {
        Map<String, Object> mapContextDataForEditorSequenceAction = contextDataForEditorSequenceAction();
        setActionName("ProjectEditor:FinishingTouches:ToggledCrossFade", mapContextDataForEditorSequenceAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.crossFade", mapContextDataForEditorSequenceAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:FinishingTouches:ToggledCrossFade", mapContextDataForEditorSequenceAction);
    }

    public Map<String, Object> contextDataForEditorSoundtrackAction() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        return map;
    }

    public void didTapSoundtrack() {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:TappedSoundtrack", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:TappedSoundtrack", mapContextDataForEditorSoundtrackAction);
    }

    public void didAddSoundtrackFromLocation(String str) {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:Added", mapContextDataForEditorSoundtrackAction);
        setObject(str, "hs.project.sequence.soundtrack.source", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:Added", mapContextDataForEditorSoundtrackAction);
    }

    public void didTapReplaceSoundtrack() {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:TappedReplace", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:TappedReplace", mapContextDataForEditorSoundtrackAction);
    }

    public void didReplaceSoundtrackFromLocation(String str) {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:Replaced", mapContextDataForEditorSoundtrackAction);
        setObject(str, "hs.project.sequence.soundtrack.source", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:Replaced", mapContextDataForEditorSoundtrackAction);
    }

    public void didTapDeleteSoundtrack() {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:TappedDelete", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:TappedDelete", mapContextDataForEditorSoundtrackAction);
    }

    public void didChangeAutoPaceSlider(float f2) {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:ChangedPaceSlider", mapContextDataForEditorSoundtrackAction);
        setObject(Float.valueOf(f2), "hs.project.sequence.soundtrack.pace", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:ChangedPaceSlider", mapContextDataForEditorSoundtrackAction);
    }

    public void didChangeSoundtrackVolumeSlider(float f2) {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:ChangedVolumeSlider", mapContextDataForEditorSoundtrackAction);
        setObject(Float.valueOf(f2), "hs.project.sequence.soundtrack.volume", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:ChangedVolumeSlider", mapContextDataForEditorSoundtrackAction);
    }

    public void didChangeSoundtrackInPoint(float f2) {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:ChangedInPoint", mapContextDataForEditorSoundtrackAction);
        setObject(Float.valueOf(f2), "hs.project.sequence.soundtrack.inPoint", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:ChangedInPoint", mapContextDataForEditorSoundtrackAction);
    }

    public void didDoubleTapSoundtrackVolumeSlider() {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:DoubleTappedVolumeSlider", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:DoubleTappedVolumeSlider", mapContextDataForEditorSoundtrackAction);
    }

    public void didToggleSoundtrackFadeIn(Boolean bool) {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:ToggledFadeIn", mapContextDataForEditorSoundtrackAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.soundtrack.fadeIn", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:ToggledFadeIn", mapContextDataForEditorSoundtrackAction);
    }

    public void didToggleSoundtrackFadeOut(Boolean bool) {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:ToggledFadeOut", mapContextDataForEditorSoundtrackAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.soundtrack.fadeOut", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:ToggledFadeOut", mapContextDataForEditorSoundtrackAction);
    }

    public void didToggleSoundtrackAutoMix(Boolean bool) {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:ToggledAutoMix", mapContextDataForEditorSoundtrackAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.soundtrack.autoMix", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:ToggledAutoMix", mapContextDataForEditorSoundtrackAction);
    }

    public void didToggleSoundtrackSnapToBeat(Boolean bool) {
        Map<String, Object> mapContextDataForEditorSoundtrackAction = contextDataForEditorSoundtrackAction();
        setActionName("ProjectEditor:Soundtrack:ToggledSnapToBeat", mapContextDataForEditorSoundtrackAction);
        setObject(Integer.valueOf(!bool.booleanValue() ? 0 : 1), "hs.project.sequence.soundtrack.snapToBeat", mapContextDataForEditorSoundtrackAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:Soundtrack:ToggledSnapToBeat", mapContextDataForEditorSoundtrackAction);
    }

    public Map<String, Object> contextDataForExportAction() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        setCurrentProjectSignatureInDictionary(map);
        return map;
    }

    public void didTapProjectTitleInProjectExport() {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:TappedProjectName", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:TappedProjectName", mapContextDataForExportAction);
    }

    public void didEditExportProjectTitle(String str) {
        this._currentProjectExportTitle = str;
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:EditedProjectTitle", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:EditedProjectTitle", mapContextDataForExportAction);
    }

    public void didTapExportForDestination(String str, String str2) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:TappedExportDestination", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        setObject(str2, "hs.project.export.privacy", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:TappedExportDestination", mapContextDataForExportAction);
    }

    public void didToggleAutoExportForDestination(String str) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:ToggledAutoExportDestination", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:ToggledAutoExportDestination", mapContextDataForExportAction);
    }

    public void didDetectMisconfiguredExportDestination(String str) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:DetectedMisconfiguredDestination", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:DetectedMisconfiguredDestination", mapContextDataForExportAction);
    }

    public void didRenderVideoForExport() {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:RenderVideo:Success", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:RenderVideo:Success", mapContextDataForExportAction);
    }

    public void didCancelVideoRenderForExport() {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:RenderVideo:Cancelled", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:RenderVideo:Cancelled", mapContextDataForExportAction);
    }

    public void didFailVideoRenderForExport() {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:RenderVideo:Failed", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:RenderVideo:Failed", mapContextDataForExportAction);
    }

    public void didUploadVideoToExportDestination(String str) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:UploadVideo:Success", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:UploadVideo:Success", mapContextDataForExportAction);
    }

    public void didCancelVideoUploadToExportDestination(String str) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:UploadVideo:Cancelled", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:UploadVideo:Cancelled", mapContextDataForExportAction);
    }

    public void didFailVideoUploadToExportDestination(String str) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:UploadVideo:Failed", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:UploadVideo:Failed", mapContextDataForExportAction);
    }

    public void didDenyUploadDueToMissingMediaInCloudForDestination(String str) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:UploadVideo:Failed:MissingMediaInCloud", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:UploadVideo:Failed:MissingMediaInCloud", mapContextDataForExportAction);
    }

    public void didTapShareForExportPublishedVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:UploadVideo:TappedShare", mapContextDataForExportAction);
        setObject("CCV", "hs.project.export.destination", mapContextDataForExportAction);
        setObject(str, "hs.project.export.video.ccvid", mapContextDataForExportAction);
        setObject(str2, "hs.project.export.video.title", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:UploadVideo:TappedShare", mapContextDataForExportAction);
    }

    public void didCancelVideoUploadToPremiereProAfterSyncAlert(String str) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:UploadVideoActionAfterSyncAlert:Cancelled", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:UploadVideoActionAfterSyncAlert:Cancelled", mapContextDataForExportAction);
    }

    public void didSendVideoUploadToPremiereProAfterSyncAlert(String str) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:UploadVideoActionAfterSyncAlert:Success", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:UploadVideoActionAfterSyncAlert:Success", mapContextDataForExportAction);
    }

    public void didShowPopUpForUploadToPremiereProAfterSyncAlert(String str) {
        Map<String, Object> mapContextDataForExportAction = contextDataForExportAction();
        setActionName("Export:UploadVideoActionAfterSyncAlert:PopUpShown", mapContextDataForExportAction);
        setObject(str, "hs.project.export.destination", mapContextDataForExportAction);
        ADBMAnalyticsHelper.trackAction("Export:UploadVideoActionAfterSyncAlert:PopUpShown", mapContextDataForExportAction);
    }

    public Map<String, Object> contextDataForExportState() {
        HashMap map = new HashMap();
        setAppSection("Export", map);
        setCommonStateInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        setCurrentProjectSignatureInDictionary(map);
        return map;
    }

    public void setExportDestinationInfoInDictionary(Map<String, Object> map) {
        setObject("CCV", "hs.project.export.destination", map);
        setObject(this._currentExportPrivacy, "hs.project.export.privacy", map);
    }

    public void didShowCCVExportView() {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("CCV", mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("CCV", mapContextDataForExportState);
    }

    public void didShowCCVExportProgressView() {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("CCVProgress", mapContextDataForExportState);
        setExportDestinationInfoInDictionary(mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("CCVProgress", mapContextDataForExportState);
    }

    public void didShowCCVExportSuccessView() {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("CCVSuccess", mapContextDataForExportState);
        setExportDestinationInfoInDictionary(mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("CCVSuccess", mapContextDataForExportState);
    }

    public void didShowCCVExportFailureView() {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("CCVFailure", mapContextDataForExportState);
        setExportDestinationInfoInDictionary(mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("CCVFailure", mapContextDataForExportState);
    }

    public void didShowShareVideoViewForDestination(String str) {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("ShareVideo", mapContextDataForExportState);
        setObject(str, "hs.project.export.destination", mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("ShareVideo", mapContextDataForExportState);
    }

    public void didShowShareVideoSuccessViewForDestination(String str, String str2) {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("ShareVideoSuccess", mapContextDataForExportState);
        setObject(str, "hs.project.export.destination", mapContextDataForExportState);
        setObject(str2, "hs.project.export.privacy", mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("ShareVideoSuccess", mapContextDataForExportState);
    }

    public void didShowShareVideoFailureViewForDestination(String str, String str2) {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("ShareVideoFailure", mapContextDataForExportState);
        setObject(str, "hs.project.export.destination", mapContextDataForExportState);
        setObject(str2, "hs.project.export.privacy", mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("ShareVideoFailure", mapContextDataForExportState);
    }

    public void didShowPremiereProExportView() {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("PremierePro", mapContextDataForExportState);
        setObject("Premiere Pro", "hs.project.export.destination", mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("PremierePro", mapContextDataForExportState);
    }

    public void didShowPremiereProExportUploadView() {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("PremiereUpload", mapContextDataForExportState);
        setObject("Premiere Pro", "hs.project.export.destination", mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("PremiereUpload", mapContextDataForExportState);
    }

    public void didShowPremiereProExportSuccessView() {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("PremiereSuccess", mapContextDataForExportState);
        setObject("Premiere Pro", "hs.project.export.destination", mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("PremiereSuccess", mapContextDataForExportState);
    }

    public void didShowPremiereProExportFailureView() {
        Map<String, Object> mapContextDataForExportState = contextDataForExportState();
        setStateName("PremiereFailure", mapContextDataForExportState);
        setObject("Premiere Pro", "hs.project.export.destination", mapContextDataForExportState);
        ADBMAnalyticsHelper.trackState("PremiereFailure", mapContextDataForExportState);
    }

    public Map<String, Object> contextDataForPresentationAction() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        return map;
    }

    public void didTapPresentationMode() {
        Map<String, Object> mapContextDataForPresentationAction = contextDataForPresentationAction();
        setActionName("ProjectEditor:TappedPresentationMode", mapContextDataForPresentationAction);
        ADBMAnalyticsHelper.trackAction("ProjectEditor:TappedPresentationMode", mapContextDataForPresentationAction);
    }

    public void didShowPresentationView() {
        HashMap map = new HashMap();
        setStateName("Presentation", map);
        setAppSection("ProjectEditor", map);
        setCommonStateInfoInDictionary(map);
        setCurrentProjectInfoInDictionary(map);
        setCurrentProjectSignatureInDictionary(map);
        ADBMAnalyticsHelper.trackState("Presentation", map);
    }

    public Map<String, Object> contextDataForCommunityVideoAction() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        return map;
    }

    public void didScrollOrganizerToCommunityVideos() {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:ScrolledToCenter", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:ScrolledToCenter", mapContextDataForCommunityVideoAction);
    }

    public void didFetchCommunityVideosList() {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:FetchedList", mapContextDataForCommunityVideoAction);
        setObject(Integer.valueOf(this._communityVideosCount), "hs.community.videos.count", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:FetchedList", mapContextDataForCommunityVideoAction);
    }

    public void didTapCommunityVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:TappedVideo", mapContextDataForCommunityVideoAction);
        setObject(str, "hs.community.videos.video.ccvid", mapContextDataForCommunityVideoAction);
        setObject(str2, "hs.community.videos.video.title", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:TappedVideo", mapContextDataForCommunityVideoAction);
    }

    public void didTapOptionsForCommunityVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:TappedOptions", mapContextDataForCommunityVideoAction);
        setObject(str, "hs.community.videos.video.ccvid", mapContextDataForCommunityVideoAction);
        setObject(str2, "hs.community.videos.video.title", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:TappedOptions", mapContextDataForCommunityVideoAction);
    }

    public void didTapPlayVideoInOptionsForCommunityVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:TappedOptions:TappedPlayVideo", mapContextDataForCommunityVideoAction);
        setObject(str, "hs.community.videos.video.ccvid", mapContextDataForCommunityVideoAction);
        setObject(str2, "hs.community.videos.video.title", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:TappedOptions:TappedPlayVideo", mapContextDataForCommunityVideoAction);
    }

    public void didTapOpenInSafariInOptionsForCommunityVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:TappedOptions:TappedOpenInSafari", mapContextDataForCommunityVideoAction);
        setObject(str, "hs.community.videos.video.ccvid", mapContextDataForCommunityVideoAction);
        setObject(str2, "hs.community.videos.video.title", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:TappedOptions:TappedOpenInSafari", mapContextDataForCommunityVideoAction);
    }

    public void didDimissOptionsForCommunityVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:TappedOptions:Cancel", mapContextDataForCommunityVideoAction);
        setObject(str, "hs.community.videos.video.ccvid", mapContextDataForCommunityVideoAction);
        setObject(str2, "hs.community.videos.video.title", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:TappedOptions:Cancel", mapContextDataForCommunityVideoAction);
    }

    public void didOpenClipCommunityURL() {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:ClipScheme:CommunityHost:Open:Success", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:ClipScheme:CommunityHost:Open:Success", mapContextDataForCommunityVideoAction);
    }

    public void didOpenClipCommunityVideoURLWithCCVID(String str) {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:ClipScheme:CommunityHost:OpenVideo:Success", mapContextDataForCommunityVideoAction);
        setObject(str, "hs.community.videos.video.ccvid", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:ClipScheme:CommunityHost:OpenVideo:Success", mapContextDataForCommunityVideoAction);
    }

    public void didFailToPlayVideoForClipCommunityURLWithCCVID(String str) {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:ClipScheme:CommunityHost:PlayVideo:Failed", mapContextDataForCommunityVideoAction);
        setObject(str, "hs.community.videos.video.ccvid", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:ClipScheme:CommunityHost:PlayVideo:Failed", mapContextDataForCommunityVideoAction);
    }

    public void didPlayVideoForClipCommunityURLWithCCVID(String str) {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setActionName("CommunityVideos:ClipScheme:CommunityHost:PlayVideo:Success", mapContextDataForCommunityVideoAction);
        setObject(str, "hs.community.videos.video.ccvid", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("CommunityVideos:ClipScheme:CommunityHost:PlayVideo:Success", mapContextDataForCommunityVideoAction);
    }

    public void duplicateTargetCallToMetrics(String str, String str2, HashMap<String, Object> map) {
        Map<String, Object> mapContextDataForCommunityVideoAction = contextDataForCommunityVideoAction();
        setObject(str, "hs.testandtarget.action.targetLocation", mapContextDataForCommunityVideoAction);
        setObject(str2, "hs.testandtarget.action.assignedGroup", mapContextDataForCommunityVideoAction);
        if (map != null) {
            for (String str3 : map.keySet()) {
                setObject(map.get(str3), "hs.testandtarget.action." + str3, mapContextDataForCommunityVideoAction);
            }
        }
        setActionName("TestAndTarget", mapContextDataForCommunityVideoAction);
        ADBMAnalyticsHelper.trackAction("TestAndTarget", mapContextDataForCommunityVideoAction);
    }

    public Map<String, Object> contextDataForCommunityVideoState() {
        HashMap map = new HashMap();
        setAppSection("Organizer", map);
        setCommonStateInfoInDictionary(map);
        setObject(Integer.valueOf(this._communityVideosCount), "hs.community.videos.count", map);
        return map;
    }

    public void didShowCommunityVideosView() {
        Map<String, Object> mapContextDataForCommunityVideoState = contextDataForCommunityVideoState();
        setStateName("CommunityVideos", mapContextDataForCommunityVideoState);
        ADBMAnalyticsHelper.trackState("CommunityVideos", mapContextDataForCommunityVideoState);
    }

    public void didShowOptionsViewForCommunityVideo(String str, String str2) {
        Map<String, Object> mapContextDataForCommunityVideoState = contextDataForCommunityVideoState();
        setStateName("CommunityVideos:Options", mapContextDataForCommunityVideoState);
        setObject(str, "hs.community.videos.video.ccvid", mapContextDataForCommunityVideoState);
        setObject(str2, "hs.community.videos.video.title", mapContextDataForCommunityVideoState);
        ADBMAnalyticsHelper.trackState("CommunityVideos:Options", mapContextDataForCommunityVideoState);
    }

    public void setCommunityVideosCount(int i) {
        this._communityVideosCount = i;
    }

    public Map<String, Object> contextDataForGuidesBrowserActions() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        return map;
    }

    public void didTapGuide(String str, String str2) {
        Map<String, Object> mapContextDataForGuidesBrowserActions = contextDataForGuidesBrowserActions();
        setActionName("GuidesBrowser:TappedGuide", mapContextDataForGuidesBrowserActions);
        setObject(str, "hs.guides.guide.id", mapContextDataForGuidesBrowserActions);
        setObject(str2, "hs.guides.guide.title", mapContextDataForGuidesBrowserActions);
        ADBMAnalyticsHelper.trackAction("GuidesBrowser:TappedGuide", mapContextDataForGuidesBrowserActions);
    }

    public void didTapGetStartedForGuide(String str, String str2) {
        Map<String, Object> mapContextDataForGuidesBrowserActions = contextDataForGuidesBrowserActions();
        setActionName("GuidesBrowser:TappedGetStarted", mapContextDataForGuidesBrowserActions);
        setObject(str, "hs.guides.guide.id", mapContextDataForGuidesBrowserActions);
        setObject(str2, "hs.guides.guide.title", mapContextDataForGuidesBrowserActions);
        ADBMAnalyticsHelper.trackAction("GuidesBrowser:TappedGetStarted", mapContextDataForGuidesBrowserActions);
    }

    public void didTapVideoForGuide(String str, String str2, String str3, String str4) {
        Map<String, Object> mapContextDataForGuidesBrowserActions = contextDataForGuidesBrowserActions();
        setActionName("GuidesBrowser:TappedGuideVideo", mapContextDataForGuidesBrowserActions);
        setObject(str, "hs.guides.guide.id", mapContextDataForGuidesBrowserActions);
        setObject(str2, "hs.guides.guide.title", mapContextDataForGuidesBrowserActions);
        setObject(str3, "hs.guides.guide.video.id", mapContextDataForGuidesBrowserActions);
        setObject(str4, "hs.guides.guide.video.title", mapContextDataForGuidesBrowserActions);
        ADBMAnalyticsHelper.trackAction("GuidesBrowser:TappedGuideVideo", mapContextDataForGuidesBrowserActions);
    }

    public void didOpenClipGuidesURL() {
        Map<String, Object> mapContextDataForGuidesBrowserActions = contextDataForGuidesBrowserActions();
        setActionName("GuidesBrowser:ClipScheme:GuidesHost:Open:Success", mapContextDataForGuidesBrowserActions);
        ADBMAnalyticsHelper.trackAction("GuidesBrowser:ClipScheme:GuidesHost:Open:Success", mapContextDataForGuidesBrowserActions);
    }

    public void didOpenClipGuidesLoadURLWithGuideID(String str, String str2) {
        Map<String, Object> mapContextDataForGuidesBrowserActions = contextDataForGuidesBrowserActions();
        setActionName("GuidesBrowser:ClipScheme:GuidesHost:LoadGuide:Success", mapContextDataForGuidesBrowserActions);
        setObject(str, "hs.guides.guide.id", mapContextDataForGuidesBrowserActions);
        setObject(str2, "hs.guides.guide.title", mapContextDataForGuidesBrowserActions);
        ADBMAnalyticsHelper.trackAction("GuidesBrowser:ClipScheme:GuidesHost:LoadGuide:Success", mapContextDataForGuidesBrowserActions);
    }

    public void didOpenClipGuidesStartURLWithGuideID(String str, String str2) {
        Map<String, Object> mapContextDataForGuidesBrowserActions = contextDataForGuidesBrowserActions();
        setActionName("GuidesBrowser:ClipScheme:GuidesHost:StartGuide:Success", mapContextDataForGuidesBrowserActions);
        setObject(str, "hs.guides.guide.id", mapContextDataForGuidesBrowserActions);
        setObject(str2, "hs.guides.guide.title", mapContextDataForGuidesBrowserActions);
        ADBMAnalyticsHelper.trackAction("GuidesBrowser:ClipScheme:GuidesHost:StartGuide:Success", mapContextDataForGuidesBrowserActions);
    }

    public void didFailOpeningClipGuidesLoadURLWithGuideID(String str) {
        Map<String, Object> mapContextDataForGuidesBrowserActions = contextDataForGuidesBrowserActions();
        setActionName("GuidesBrowser:ClipScheme:GuidesHost:LoadGuide:Failed", mapContextDataForGuidesBrowserActions);
        setObject(str, "hs.guides.guide.id", mapContextDataForGuidesBrowserActions);
        ADBMAnalyticsHelper.trackAction("GuidesBrowser:ClipScheme:GuidesHost:LoadGuide:Failed", mapContextDataForGuidesBrowserActions);
    }

    public void didFailOpeningClipGuidesStartURLWithGuideID(String str) {
        Map<String, Object> mapContextDataForGuidesBrowserActions = contextDataForGuidesBrowserActions();
        setActionName("GuidesBrowser:ClipScheme:GuidesHost:StartGuide:Failed", mapContextDataForGuidesBrowserActions);
        setObject(str, "hs.guides.guide.id", mapContextDataForGuidesBrowserActions);
        ADBMAnalyticsHelper.trackAction("GuidesBrowser:ClipScheme:GuidesHost:StartGuide:Failed", mapContextDataForGuidesBrowserActions);
    }

    public Map<String, Object> contextDataForGuideBrowserState() {
        HashMap map = new HashMap();
        setAppSection("Organizer", map);
        setCommonStateInfoInDictionary(map);
        setObject(Integer.valueOf(this._guidesCount), "hs.guides.count", map);
        return map;
    }

    public void didShowGuideBrowserView() {
        Map<String, Object> mapContextDataForGuideBrowserState = contextDataForGuideBrowserState();
        setStateName("GuideBrowser", mapContextDataForGuideBrowserState);
        ADBMAnalyticsHelper.trackState("GuideBrowser", mapContextDataForGuideBrowserState);
    }

    public void didShowDetailViewForGuide(String str, String str2) {
        Map<String, Object> mapContextDataForGuideBrowserState = contextDataForGuideBrowserState();
        setStateName("GuideDetail", mapContextDataForGuideBrowserState);
        setObject(str, "hs.guides.guide.id", mapContextDataForGuideBrowserState);
        setObject(str2, "hs.guides.guide.title", mapContextDataForGuideBrowserState);
        ADBMAnalyticsHelper.trackState("GuideDetail", mapContextDataForGuideBrowserState);
    }

    public void setGuidesCount(int i) {
        this._guidesCount = i;
    }

    public Map<String, Object> contextDataForMiscActions() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        return map;
    }

    public void didGrantAuthorizationForPermission(String str) {
        String str2 = String.format("Permissions:AuthorizationGranted:%s", str);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str2, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForMiscActions);
    }

    public void didRevokeAuthorizationForPermission(String str) {
        String str2 = String.format("Permissions:AuthorizationRevoked:%s", str);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str2, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForMiscActions);
    }

    public void didRequestHelpWhileAuthorizationDeniedForPermission(String str) {
        String str2 = String.format("Permissions:RequestedHelpWhileDenied:%s", str);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str2, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForMiscActions);
    }

    public void didRequestHelpWhileAuthorizationRestrictedForPermission(String str) {
        String str2 = String.format("Permissions:RequestedHelpWhileRestricted:%s", str);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str2, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForMiscActions);
    }

    public void didToggleAddBumperSetting(Boolean bool) {
        Object[] objArr = new Object[1];
        objArr[0] = bool.booleanValue() ? "On" : "Off";
        String str = String.format("App:Settings:BumperToggled%s", objArr);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str, mapContextDataForMiscActions);
    }

    public void didToggleAddWatermarkSetting(Boolean bool) {
        Object[] objArr = new Object[1];
        objArr[0] = bool.booleanValue() ? "On" : "Off";
        String str = String.format("App:Settings:WatermarkToggled%s", objArr);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str, mapContextDataForMiscActions);
    }

    public void didReceiveClipVideoURLFromSourceApplication(String str) {
        String str2 = String.format("ClipScheme:VideoHost:ReceivedURL:%@", str);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str2, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForMiscActions);
    }

    public void didReceiveClipCommunityURLFromSourceApplication(String str) {
        String str2 = String.format("ClipScheme:CommunityHost:ReceivedURL:%@", str);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str2, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForMiscActions);
    }

    public void didReceiveClipProjectsURLFromSourceApplication(String str) {
        String str2 = String.format("ClipScheme:ProjectsHost:ReceivedURL:%@", str);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str2, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForMiscActions);
    }

    public void didReceiveClipGuidesURLFromSourceApplication(String str) {
        String str2 = String.format("ClipScheme:GuidesHost:ReceivedURL:%@", str);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str2, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str2, mapContextDataForMiscActions);
    }

    public void didOpenClipVideoURLWithCCVID(String str) {
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName("ClipScheme:VideoHost:OpenVideo:Success", mapContextDataForMiscActions);
        setObject(str, "hs.videos.video.ccvid", mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction("ClipScheme:VideoHost:OpenVideo:Success", mapContextDataForMiscActions);
    }

    public void didFailToPlayVideoForClipVideoURLWithCCVID(String str) {
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName("ClipScheme:VideoHost:PlayVideo:Failed", mapContextDataForMiscActions);
        setObject(str, "hs.videos.video.ccvid", mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction("ClipScheme:VideoHost:PlayVideo:Failed", mapContextDataForMiscActions);
    }

    public void didPlayVideoForClipVideoURLWithCCVID(String str) {
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName("ClipScheme:VideoHost:PlayVideo:Success", mapContextDataForMiscActions);
        setObject(str, "hs.videos.video.ccvid", mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction("ClipScheme:VideoHost:PlayVideo:Success", mapContextDataForMiscActions);
    }

    public void setCrashlyticsProjectInfo() {
    }

    public void clearCrashlyticsProjectInfo() {
    }

    public void didDetectCrash() {
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName("DetectedCrash", mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction("DetectedCrash", mapContextDataForMiscActions);
    }

    public void didTapMoreApps() {
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName("App:Settings:TapMoreApps", mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction("App:Settings:TapMoreApps", mapContextDataForMiscActions);
    }

    public void didTapResetTooltips() {
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName("App:Settings:ResetTooltips", mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction("App:Settings:ResetTooltips", mapContextDataForMiscActions);
    }

    public void didTapSettingsLink(String str) {
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName("App:Settings:TapLink", mapContextDataForMiscActions);
        setObject(str, "hs.settings.link", mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction("App:Settings:TapLink", mapContextDataForMiscActions);
    }

    public void didToggleWifiOnly(boolean z) {
        Object[] objArr = new Object[1];
        objArr[0] = z ? "On" : "Off";
        String str = String.format("App:Settings:WifiOnlyToggled%s", objArr);
        Map<String, Object> mapContextDataForMiscActions = contextDataForMiscActions();
        setActionName(str, mapContextDataForMiscActions);
        ADBMAnalyticsHelper.trackAction(str, mapContextDataForMiscActions);
    }

    public Map<String, Object> contextDataForMiscState() {
        HashMap map = new HashMap();
        setCommonStateInfoInDictionary(map);
        return map;
    }

    public Map<String, Object> contextDataForMyPublishedVideosAction() {
        HashMap map = new HashMap();
        setCommonActionInfoInDictionary(map);
        return map;
    }

    public void didScrollOrganizerToMyPublishedVideos() {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:ScrolledToCenter", mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:ScrolledToCenter", mapContextDataForMyPublishedVideosAction);
    }

    public void didFetchMyPublishedVideosList() {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:FetchedList", mapContextDataForMyPublishedVideosAction);
        setObject(Integer.valueOf(this._myPublishedVideosCount), "hs.user.published.videos.count", mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:FetchedList", mapContextDataForMyPublishedVideosAction);
    }

    public void didTapMyPublishedVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedVideo", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedVideo", mapContextDataForMyPublishedVideosAction);
    }

    public void didTapOptionsForMyPublishedVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions", mapContextDataForMyPublishedVideosAction);
    }

    public void didTapDeleteInOptionsForMyPublishedVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions:TappedDelete", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions:TappedDelete", mapContextDataForMyPublishedVideosAction);
    }

    public void didDeleteVideoMyPublishedVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions:DeletedVideo", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions:DeletedVideo", mapContextDataForMyPublishedVideosAction);
    }

    public void didTapShareInOptionsForMyPublishedVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions:TappedShare", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions:TappedShare", mapContextDataForMyPublishedVideosAction);
    }

    public void didDimissOptionsForMyPublishedVideoWithCCVID(String str, String str2) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions:Cancel", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions:Cancel", mapContextDataForMyPublishedVideosAction);
    }

    public void didTapShareDestinationForMyPublishedVideoWithCCVID(String str, String str2, String str3) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions:TappedShare:Destination:Tapped", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        setObject(str3, "hs.user.published.videos.video.destination", mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions:TappedShare:Destination:Tapped", mapContextDataForMyPublishedVideosAction);
    }

    public void didMisconfigureDestinationForMyPublishedVideoWithCCVID(String str, String str2, String str3) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions:TappedShare:Destination:Misconfigured", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        setObject(str3, "hs.user.published.videos.video.destination", mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions:TappedShare:Destination:Misconfigured", mapContextDataForMyPublishedVideosAction);
    }

    public void didTapCancelShareForMyPublishedVideoWithCCVID(String str, String str2, String str3) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions:TappedShare:Destination:Cancelled", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        setObject(str3, "hs.user.published.videos.video.destination", mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions:TappedShare:Destination:Cancelled", mapContextDataForMyPublishedVideosAction);
    }

    public void didFailShareForMyPublishedVideoWithCCVID(String str, String str2, String str3) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions:TappedShare:Destination:Failed", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        setObject(str3, "hs.user.published.videos.video.destination", mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions:TappedShare:Destination:Failed", mapContextDataForMyPublishedVideosAction);
    }

    public void didShareMyPublishedVideoWithCCVID(String str, String str2, String str3) {
        Map<String, Object> mapContextDataForMyPublishedVideosAction = contextDataForMyPublishedVideosAction();
        setActionName("MyPublishedVideos:TappedOptions:TappedShare:Destination:Succeeded", mapContextDataForMyPublishedVideosAction);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosAction);
        setObject(str3, "hs.user.published.videos.video.destination", mapContextDataForMyPublishedVideosAction);
        ADBMAnalyticsHelper.trackAction("MyPublishedVideos:TappedOptions:TappedShare:Destination:Succeeded", mapContextDataForMyPublishedVideosAction);
    }

    public Map<String, Object> contextDataForMyPublishedVideosState() {
        HashMap map = new HashMap();
        setAppSection("Organizer", map);
        setCommonStateInfoInDictionary(map);
        setObject(Integer.valueOf(this._myPublishedVideosCount), "hs.user.published.videos.count", map);
        return map;
    }

    public void didShowMyPublishedVideosView() {
        Map<String, Object> mapContextDataForMyPublishedVideosState = contextDataForMyPublishedVideosState();
        setStateName("MyPublishedVideos", mapContextDataForMyPublishedVideosState);
        ADBMAnalyticsHelper.trackState("MyPublishedVideos", mapContextDataForMyPublishedVideosState);
    }

    public void didShowOptionsViewForMyPublishedVideo(String str, String str2) {
        Map<String, Object> mapContextDataForMyPublishedVideosState = contextDataForMyPublishedVideosState();
        setStateName("MyPublishedVideos:Options", mapContextDataForMyPublishedVideosState);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosState);
        ADBMAnalyticsHelper.trackState("MyPublishedVideos:Options", mapContextDataForMyPublishedVideosState);
    }

    public void didShowShareViewForMyPublishedVideo(String str, String str2) {
        Map<String, Object> mapContextDataForMyPublishedVideosState = contextDataForMyPublishedVideosState();
        setStateName("MyPublishedVideos:Share", mapContextDataForMyPublishedVideosState);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosState);
        ADBMAnalyticsHelper.trackState("MyPublishedVideos:Share", mapContextDataForMyPublishedVideosState);
    }

    public void didShowShareVideoDetailViewForMyPublishedVideo(String str, String str2, String str3) {
        Map<String, Object> mapContextDataForMyPublishedVideosState = contextDataForMyPublishedVideosState();
        setStateName("MyPublishedVideos:ShareVideoDetail", mapContextDataForMyPublishedVideosState);
        setCCVID(str, str2, mapContextDataForMyPublishedVideosState);
        setObject(str3, "hs.user.published.videos.video.destination", mapContextDataForMyPublishedVideosState);
        ADBMAnalyticsHelper.trackState("MyPublishedVideos:ShareVideoDetail", mapContextDataForMyPublishedVideosState);
    }

    public void setMyPublishedVideosCount(int i) {
        this._myPublishedVideosCount = i;
    }

    public void setCCVID(String str, String str2, Map<String, Object> map) {
        setObject(str, "hs.user.published.videos.video.ccvid", map);
        setObject(str2, "hs.user.published.videos.video.title", map);
    }
}
