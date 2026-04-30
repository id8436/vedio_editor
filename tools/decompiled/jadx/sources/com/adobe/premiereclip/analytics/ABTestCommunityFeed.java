package com.adobe.premiereclip.analytics;

import android.content.Context;
import android.util.Log;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.analytics.ABTesting;
import com.adobe.premiereclip.metrics.ADBMAnalyticsHelper;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.utility.analytics.TrackingUtility;
import java.util.HashMap;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ABTestCommunityFeed extends ABTesting {
    private static final String SUCCESS_TARGET_NAME = "clip-tap-community-video-2";
    private static final String TAG = "ABTestCommunityFeed";
    private static final String TARGET_NAME = "clip-community-feed-2";
    private final String FALLBACK_GROUP;
    private final String FALLBACK_TITLE;
    private final String FALLBACK_URL;
    private final String GROUPNAME_KEY;
    private final String TITLE_KEY;
    private final String URL_KEY;

    public interface CommunityFeedABResult extends ABTesting.ABInterface {
        void onABGroupDecided(String str, String str2, boolean z);
    }

    public ABTestCommunityFeed(Context context) {
        super(TARGET_NAME, SUCCESS_TARGET_NAME, context);
        this.TITLE_KEY = "viewTitle";
        this.GROUPNAME_KEY = "groupname";
        this.URL_KEY = "url";
        this.FALLBACK_GROUP = "Community";
        this.FALLBACK_URL = "https://www.adobe.com/go/clipcommunityfeed";
        this.FALLBACK_TITLE = context.getString(R.string.page_title_community);
        this.defaultContentMap.put("url", "");
        this.defaultContentMap.put("groupname", "");
    }

    @Override // com.adobe.premiereclip.analytics.ABTesting
    public void decideGroup(ABTesting.ABInterface aBInterface) {
        if (System.currentTimeMillis() - ClipPreferences.getInstance(this.context).getLong(ClipPreferences.COMMUNITY_FEED_LAST_QUERY_TIMESTAMP, -1L) > DateUtils.MILLIS_PER_DAY) {
            fetchGroupAsync(aBInterface);
            return;
        }
        String string = ClipPreferences.getInstance(this.context).getString(ClipPreferences.COMMUNITY_FEED_TITLE, "");
        String string2 = ClipPreferences.getInstance(this.context).getString(ClipPreferences.COMMUNITY_FEED_URL, "");
        String string3 = ClipPreferences.getInstance(this.context).getString(ClipPreferences.COMMUNITY_FEED_GROUP, "");
        if (string.equals("") || string2.equals("") || string3.equals("")) {
            fetchGroupAsync(aBInterface);
        } else {
            postDecidedGroup(aBInterface, string, string3, string2, null, false);
        }
    }

    public void setABTestSuccess() {
        ADBMAnalyticsHelper.makeTargetRequest(this.successTargetName, "", new TrackingUtility.TargetRequestCallback() { // from class: com.adobe.premiereclip.analytics.ABTestCommunityFeed.1
            @Override // com.adobe.utility.analytics.TrackingUtility.TargetRequestCallback
            public void onCall(String str, HashMap<String, Object> map) {
                Log.d(ABTestCommunityFeed.TAG, "set success, got response " + str);
                Metrics.sharedInstance().duplicateTargetCallToMetrics(ABTestCommunityFeed.this.successTargetName, ClipPreferences.getInstance(ABTestCommunityFeed.this.context).getString(ClipPreferences.COMMUNITY_FEED_GROUP, ""), map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postDecidedGroup(ABTesting.ABInterface aBInterface, String str, String str2, String str3, HashMap<String, Object> map, boolean z) {
        ((CommunityFeedABResult) aBInterface).onABGroupDecided(str, str3, z);
        Metrics.sharedInstance().duplicateTargetCallToMetrics(this.targetName, str2, map);
    }

    private void fetchGroupAsync(final ABTesting.ABInterface aBInterface) {
        ADBMAnalyticsHelper.makeTargetRequest(this.targetName, this.defaultContentMap.toString(), new TrackingUtility.TargetRequestCallback() { // from class: com.adobe.premiereclip.analytics.ABTestCommunityFeed.2
            @Override // com.adobe.utility.analytics.TrackingUtility.TargetRequestCallback
            public void onCall(String str, HashMap<String, Object> map) {
                String string;
                JSONException e2;
                String str2;
                String str3;
                JSONObject jSONObject;
                Log.d(ABTestCommunityFeed.TAG, "got response " + str);
                String string2 = ClipPreferences.getInstance(ABTestCommunityFeed.this.context).getString(ClipPreferences.COMMUNITY_FEED_TITLE, "");
                String string3 = "";
                String string4 = "";
                try {
                    jSONObject = new JSONObject(str);
                    string3 = jSONObject.getString("viewTitle");
                    string = jSONObject.getString("groupname");
                } catch (JSONException e3) {
                    string = "";
                    e2 = e3;
                }
                try {
                    string4 = jSONObject.getString("url");
                } catch (JSONException e4) {
                    e2 = e4;
                    e2.printStackTrace();
                }
                if (string3.equals("") || string4.equals("") || string.equals("")) {
                    string3 = ABTestCommunityFeed.this.FALLBACK_TITLE;
                    str2 = "Community";
                    str3 = "https://www.adobe.com/go/clipcommunityfeed";
                } else {
                    ClipPreferences.getInstance(ABTestCommunityFeed.this.context).setLong(ClipPreferences.COMMUNITY_FEED_LAST_QUERY_TIMESTAMP, System.currentTimeMillis());
                    ClipPreferences.getInstance(ABTestCommunityFeed.this.context).setString(ClipPreferences.COMMUNITY_FEED_TITLE, string3);
                    ClipPreferences.getInstance(ABTestCommunityFeed.this.context).setString(ClipPreferences.COMMUNITY_FEED_GROUP, string);
                    ClipPreferences.getInstance(ABTestCommunityFeed.this.context).setString(ClipPreferences.COMMUNITY_FEED_URL, string4);
                    str2 = string;
                    str3 = string4;
                }
                ABTestCommunityFeed.this.postDecidedGroup(aBInterface, string3, str2, str3, map, !string2.equals(string3));
            }
        });
    }
}
