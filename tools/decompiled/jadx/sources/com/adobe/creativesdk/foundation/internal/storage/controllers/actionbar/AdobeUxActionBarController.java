package com.adobe.creativesdk.foundation.internal.storage.controllers.actionbar;

import android.graphics.Typeface;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.base.AdobeCSDKBaseActivity;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUxActionBarController {
    private static AdobeUxActionBarController _sInstance;
    private Map<String, String> analyticsInfo = new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.actionbar.AdobeUxActionBarController.1
        {
            put(AdobeAnalyticsSDKReporter.AnalyticArea, "browser");
            put(AdobeAnalyticsSDKReporter.AnalyticAction, "view");
        }
    };
    private AdobeCSDKBaseActivity mContext;

    public static void setInstance(AdobeUxActionBarController adobeUxActionBarController) {
        if (_sInstance != null && _sInstance != adobeUxActionBarController) {
            resetInstance();
        }
        _sInstance = adobeUxActionBarController;
    }

    public static void resetIfSameInstance(AdobeUxActionBarController adobeUxActionBarController) {
        if (_sInstance == adobeUxActionBarController) {
            resetInstance();
        }
    }

    public static AdobeUxActionBarController getInstance() {
        return _sInstance;
    }

    private void reset() {
        this.mContext = null;
    }

    private static void resetInstance() {
        if (_sInstance != null) {
            _sInstance.reset();
        }
        _sInstance = null;
    }

    public void setUpActionBar(AdobeCSDKBaseActivity adobeCSDKBaseActivity) {
        this.mContext = adobeCSDKBaseActivity;
    }

    private void addAnalyticsInfoForBrowser(String str) {
        String str2;
        String str3;
        if (this.mContext != null) {
            if (str.equals(this.mContext.getResources().getString(R.string.adobe_csdk_uxassetbrowser_csdk_mylibraries))) {
                str3 = "library";
                str2 = AdobeAnalyticsSDKReporter.AnalyticViewLibraries;
            } else if (str.equals(this.mContext.getResources().getString(R.string.adobe_csdk_uxassetbrowser_csdk_myassets_main))) {
                str3 = "assets";
                str2 = AdobeAnalyticsSDKReporter.AnalyticViewMyAssets;
            } else {
                str2 = null;
                str3 = null;
            }
            this.analyticsInfo.put("type", str3);
            AdobeAnalyticsSDKReporter.trackAction(str2, this.analyticsInfo, null);
        }
    }

    public static void setTitle(String str) {
        AdobeCSDKActionBarController.setTitle(getInstance().mContext.findViewById(android.R.id.content), str);
    }

    public void setTypeface(Typeface typeface) {
        AdobeCSDKActionBarController.setTypeface(getInstance().mContext.findViewById(android.R.id.content), typeface);
    }
}
