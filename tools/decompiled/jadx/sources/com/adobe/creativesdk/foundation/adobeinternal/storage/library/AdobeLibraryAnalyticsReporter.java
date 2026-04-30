package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsGlobalData;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryAnalyticsReporter {
    static boolean isUnitTests() {
        try {
            Class<?> cls = Class.forName("TestBase");
            if (cls != null) {
                return ((Boolean) cls.getDeclaredMethod("isTesting", new Class[0]).invoke(null, new Object[0])).booleanValue();
            }
        } catch (Exception e2) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryAnalyticsReporter.class.getSimpleName(), null, e2);
        }
        return false;
    }

    public static void trackError(AdobeCSDKException adobeCSDKException) {
        if (AdobeAnalyticsSession.getSharedInstance().hasDelegate().booleanValue()) {
            HashMap map = new HashMap();
            map.put(AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventAction, adobeCSDKException.getDescription());
            reportEvent(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventError, map);
        }
    }

    public static void trackAction(String str, AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement, AdobeLibraryRepresentation adobeLibraryRepresentation, JSONObject jSONObject, AdobeCSDKException adobeCSDKException) {
        if (AdobeAnalyticsSession.getSharedInstance().hasDelegate().booleanValue()) {
            if (adobeCSDKException != null) {
                trackError(adobeCSDKException);
                return;
            }
            if (str != null) {
                HashMap map = new HashMap();
                map.put(AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventAction, str);
                map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesLibraryAction, true);
                map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesLibraryActionDesc, str);
                if (adobeLibraryComposite != null) {
                    if (adobeLibraryComposite.getLibraryId() != null) {
                        map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesLibraryID, adobeLibraryComposite.getLibraryId());
                    }
                    map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesLibraryElementCount, Integer.valueOf(adobeLibraryComposite.getTotalElementCount()));
                    if (adobeLibraryComposite.getCollaboration() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDBYUSER) {
                        map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesLibraryShared, "outgoing");
                    } else if (adobeLibraryComposite.getCollaboration() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
                        map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesLibraryShared, "incoming");
                    }
                }
                if (adobeLibraryElement != null) {
                    if (adobeLibraryElement.getElementId() != null) {
                        map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesElementID, adobeLibraryElement.getElementId());
                    }
                    if (adobeLibraryElement.getType() != null) {
                        map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesElementType, AdobeLibraryUtils.getShortElementType(adobeLibraryElement.getType()));
                    }
                }
                if (adobeLibraryRepresentation != null && adobeLibraryRepresentation.getType() != null) {
                    map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesRepresentationType, adobeLibraryRepresentation.getType());
                }
                if (jSONObject != null) {
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        Object objOpt = jSONObject.opt(next);
                        if (objOpt != null) {
                            map.put(String.format("%s.%s", AdobeLibraryAnalyticsConstants.AdobeAnalyticsProfileAttributesPrefix, next), objOpt);
                        }
                    }
                }
                reportEvent(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryAction, map);
            }
        }
    }

    static void reportEvent(String str, Map<String, Object> map) {
        map.put(AdobeLibraryAnalyticsConstants.AdobeAnalyticsPropertiesProjectCentralOffline, !AdobeLibraryManager.getSharedInstance().isSyncEnabled() || !AdobeLibraryManager.getSharedInstance().isSyncAllowedByNetworkStatus() ? AdobeAnalyticsSDKReporter.AdobeAnalyticsValueYes : AdobeAnalyticsSDKReporter.AdobeAnalyticsValueNo);
        map.put(AdobeAnalyticsGlobalData.AdobeAnalyticsKeyADB_SDKsUtilized, AdobeLibraryAnalyticsConstants.AdobeAnalyticsSDKUtilizedProjectCentral);
        AdobeAnalyticsSDKReporter.trackAction(str, null, map);
    }
}
