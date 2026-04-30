package c.a.a.a.a.g;

import android.support.v4.app.NotificationCompat;
import com.crashlytics.android.beta.BuildConfig;
import com.google.gdata.client.analytics.AnalyticsService;
import org.joda.time.DateTimeConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: DefaultSettingsJsonTransform.java */
/* JADX INFO: loaded from: classes.dex */
class k implements y {
    k() {
    }

    @Override // c.a.a.a.a.g.y
    public w a(c.a.a.a.a.b.s sVar, JSONObject jSONObject) throws JSONException {
        int iOptInt = jSONObject.optInt("settings_version", 0);
        int iOptInt2 = jSONObject.optInt("cache_duration", DateTimeConstants.SECONDS_PER_HOUR);
        return new w(a(sVar, iOptInt2, jSONObject), a(jSONObject.getJSONObject("app")), e(jSONObject.getJSONObject("session")), f(jSONObject.getJSONObject("prompt")), c(jSONObject.getJSONObject("features")), d(jSONObject.getJSONObject(AnalyticsService.ANALYTICS_SERVICE)), g(jSONObject.getJSONObject(BuildConfig.ARTIFACT_ID)), iOptInt, iOptInt2);
    }

    private e a(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString("identifier");
        String string2 = jSONObject.getString(NotificationCompat.CATEGORY_STATUS);
        String string3 = jSONObject.getString("url");
        String string4 = jSONObject.getString("reports_url");
        boolean zOptBoolean = jSONObject.optBoolean("update_required", false);
        c cVarB = null;
        if (jSONObject.has("icon") && jSONObject.getJSONObject("icon").has("hash")) {
            cVarB = b(jSONObject.getJSONObject("icon"));
        }
        return new e(string, string2, string3, string4, zOptBoolean, cVarB);
    }

    private c b(JSONObject jSONObject) throws JSONException {
        return new c(jSONObject.getString("hash"), jSONObject.getInt("width"), jSONObject.getInt("height"));
    }

    private m c(JSONObject jSONObject) {
        return new m(jSONObject.optBoolean("prompt_enabled", false), jSONObject.optBoolean("collect_logged_exceptions", true), jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_analytics", false));
    }

    private b d(JSONObject jSONObject) {
        return new b(jSONObject.optString("url", "https://e.crashlytics.com/spi/v2/events"), jSONObject.optInt("flush_interval_secs", 600), jSONObject.optInt("max_byte_size_per_file", 8000), jSONObject.optInt("max_file_count_per_send", 1), jSONObject.optInt("max_pending_send_file_count", 100), jSONObject.optBoolean("track_custom_events", true), jSONObject.optBoolean("track_predefined_events", true), jSONObject.optInt("sampling_rate", 1));
    }

    private p e(JSONObject jSONObject) throws JSONException {
        return new p(jSONObject.optInt("log_buffer_size", 64000), jSONObject.optInt("max_chained_exception_depth", 8), jSONObject.optInt("max_custom_exception_events", 64), jSONObject.optInt("max_custom_key_value_pairs", 64), jSONObject.optInt("identifier_mask", 255), jSONObject.optBoolean("send_session_without_crash", false));
    }

    private o f(JSONObject jSONObject) throws JSONException {
        return new o(jSONObject.optString("title", "Send Crash Report?"), jSONObject.optString("message", "Looks like we crashed! Please help us fix the problem by sending a crash report."), jSONObject.optString("send_button_title", "Send"), jSONObject.optBoolean("show_cancel_button", true), jSONObject.optString("cancel_button_title", "Don't Send"), jSONObject.optBoolean("show_always_send_button", true), jSONObject.optString("always_send_button_title", "Always Send"));
    }

    private f g(JSONObject jSONObject) throws JSONException {
        return new f(jSONObject.optString("update_endpoint", x.f356a), jSONObject.optInt("update_suspend_duration", DateTimeConstants.SECONDS_PER_HOUR));
    }

    private long a(c.a.a.a.a.b.s sVar, long j, JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("expires_at")) {
            return jSONObject.getLong("expires_at");
        }
        return sVar.a() + (1000 * j);
    }
}
