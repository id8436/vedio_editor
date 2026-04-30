package com.adobe.mobile;

import com.google.android.exoplayer.ExoPlayer;
import com.google.gdata.data.analytics.Engagement;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AcquisitionHandler {
    private static String ACQUISITION_SERVER = "c00.adobe.com";

    AcquisitionHandler() {
    }

    protected static void campaignStartForApp(String str, Map<String, Object> map) {
        String strConstructURLForCampaignStartRequest = constructURLForCampaignStartRequest(str, StaticMethods.getAdvertisingIdentifier(), map);
        StaticMethods.logDebugFormat("Acquisition - Sending acquisition request  (%s)", strConstructURLForCampaignStartRequest);
        RequestHandler.sendGenericRequest(strConstructURLForCampaignStartRequest, null, ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS, "Acquisition");
    }

    protected static String constructURLForCampaignStartRequest(String str, String str2, Map<String, Object> map) {
        if (str == null || str.length() <= 0) {
            StaticMethods.logDebugFormat("Acquisition - Acquisition application identifier is blank", new Object[0]);
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("http://" + ACQUISITION_SERVER + "/v3/").append(str).append("/start?");
        StringBuilder sb2 = new StringBuilder();
        if (str2 != null) {
            sb2.append(sb2.length() > 0 ? "&" : "");
            sb2.append("a_cid=").append(StaticMethods.URLEncode(str2));
        }
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (key != null && key.length() != 0 && value != null && value.toString().length() != 0) {
                    sb2.append(sb2.length() > 0 ? "&" : "");
                    sb2.append("ctx");
                    sb2.append(StaticMethods.URLEncode(key));
                    sb2.append(Engagement.Comparison.EQ);
                    sb2.append(StaticMethods.URLEncode(value.toString()));
                }
            }
        }
        return sb.append((CharSequence) sb2).toString();
    }
}
