package com.adobe.premiereclip.analytics;

import android.content.Context;
import android.util.Log;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.analytics.ABTesting;
import com.adobe.premiereclip.metrics.ADBMAnalyticsHelper;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.utility.analytics.TrackingUtility;
import java.util.HashMap;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ABTestNotification extends ABTesting {
    private static final String SUCCESS_TARGET_NAME = "clip-notification-tap";
    private static final String TAG = "ABTestNotification";
    private static final String TARGET_NAME = "clip-notification-feed";
    private final boolean FALLBACK_PREVIEW;
    private final String FALSE;
    private final String GROUPNAME_KEY;
    private final String PREVIEW_KEY;
    private final String TRUE;

    public interface NotificationFeedABResult extends ABTesting.ABInterface {
        void onABGroupDecided(boolean z, boolean z2);
    }

    public ABTestNotification(Context context) {
        super(TARGET_NAME, SUCCESS_TARGET_NAME, context);
        this.PREVIEW_KEY = "preview";
        this.GROUPNAME_KEY = "groupname";
        this.TRUE = "true";
        this.FALSE = "false";
        this.FALLBACK_PREVIEW = true;
        this.defaultContentMap.put("preview", "");
        this.defaultContentMap.put("groupname", "");
    }

    @Override // com.adobe.premiereclip.analytics.ABTesting
    public void decideGroup(ABTesting.ABInterface aBInterface) {
        if (System.currentTimeMillis() - ClipPreferences.getInstance(this.context).getLong(ClipPreferences.NOTIFICATION_LAST_QUERY_TIMESTAMP, -1L) > DateUtils.MILLIS_PER_DAY) {
            fetchGroupAsync(aBInterface);
            return;
        }
        boolean z = ClipPreferences.getInstance(this.context).getBoolean(ClipPreferences.NOTIFICATION_PREVIEW, true);
        String string = ClipPreferences.getInstance(this.context).getString(ClipPreferences.NOTIFICATION_GROUP, "");
        if (string.equals("")) {
            fetchGroupAsync(aBInterface);
        } else {
            postDecidedGroup(aBInterface, z, string, null, false);
        }
    }

    public void setABTestSuccess() {
        ADBMAnalyticsHelper.makeTargetRequest(this.successTargetName, "", new TrackingUtility.TargetRequestCallback() { // from class: com.adobe.premiereclip.analytics.ABTestNotification.1
            @Override // com.adobe.utility.analytics.TrackingUtility.TargetRequestCallback
            public void onCall(String str, HashMap<String, Object> map) {
                Log.d(ABTestNotification.TAG, "set success, got response " + str);
                Metrics.sharedInstance().duplicateTargetCallToMetrics(ABTestNotification.this.successTargetName, ClipPreferences.getInstance(ABTestNotification.this.context).getString(ClipPreferences.NOTIFICATION_GROUP, ""), map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postDecidedGroup(ABTesting.ABInterface aBInterface, boolean z, String str, HashMap<String, Object> map, boolean z2) {
        ((NotificationFeedABResult) aBInterface).onABGroupDecided(z, z2);
        Metrics.sharedInstance().duplicateTargetCallToMetrics(this.targetName, str, map);
    }

    private void fetchGroupAsync(final ABTesting.ABInterface aBInterface) {
        ADBMAnalyticsHelper.makeTargetRequest(this.targetName, this.defaultContentMap.toString(), new TrackingUtility.TargetRequestCallback() { // from class: com.adobe.premiereclip.analytics.ABTestNotification.2
            @Override // com.adobe.utility.analytics.TrackingUtility.TargetRequestCallback
            public void onCall(String str, HashMap<String, Object> map) {
                String string;
                JSONException e2;
                boolean zEquals;
                Log.d(ABTestNotification.TAG, "got response " + str);
                boolean z = ClipPreferences.getInstance(ABTestNotification.this.context).getBoolean(ClipPreferences.NOTIFICATION_PREVIEW, true);
                String string2 = "";
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    string = jSONObject.getString("preview");
                    try {
                        string2 = jSONObject.getString("groupname");
                    } catch (JSONException e3) {
                        e2 = e3;
                        e2.printStackTrace();
                    }
                } catch (JSONException e4) {
                    string = "";
                    e2 = e4;
                }
                if (string2.equals("") || string.equals("")) {
                    zEquals = ABTestNotification.this.FALLBACK_PREVIEW;
                } else {
                    zEquals = string.equals("true");
                    ClipPreferences.getInstance(ABTestNotification.this.context).setLong(ClipPreferences.NOTIFICATION_LAST_QUERY_TIMESTAMP, System.currentTimeMillis());
                    ClipPreferences.getInstance(ABTestNotification.this.context).setBoolean(ClipPreferences.NOTIFICATION_PREVIEW, zEquals);
                    ClipPreferences.getInstance(ABTestNotification.this.context).setString(ClipPreferences.NOTIFICATION_GROUP, string2);
                }
                ABTestNotification.this.postDecidedGroup(aBInterface, zEquals, string2, map, z ^ zEquals);
            }
        });
    }
}
