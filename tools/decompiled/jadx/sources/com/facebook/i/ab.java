package com.facebook.i;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: FacebookWebFallbackDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class ab extends ba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f2275a = ab.class.getName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2276b;

    public ab(Context context, String str, String str2) {
        super(context, str);
        b(str2);
    }

    @Override // com.facebook.i.ba
    protected Bundle a(String str) {
        Bundle bundleB = as.b(Uri.parse(str).getQuery());
        String string = bundleB.getString("bridge_args");
        bundleB.remove("bridge_args");
        if (!as.a(string)) {
            try {
                bundleB.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", i.a(new JSONObject(string)));
            } catch (JSONException e2) {
                as.a(f2275a, "Unable to parse bridge_args JSON", e2);
            }
        }
        String string2 = bundleB.getString("method_results");
        bundleB.remove("method_results");
        if (!as.a(string2)) {
            if (as.a(string2)) {
                string2 = "{}";
            }
            try {
                bundleB.putBundle("com.facebook.platform.protocol.RESULT_ARGS", i.a(new JSONObject(string2)));
            } catch (JSONException e3) {
                as.a(f2275a, "Unable to parse bridge_args JSON", e3);
            }
        }
        bundleB.remove(AdobeCommunityConstants.AdobeCommunityResourceVersionKey);
        bundleB.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", ah.a());
        return bundleB;
    }

    @Override // com.facebook.i.ba, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView webViewC = c();
        if (!b() || a() || webViewC == null || !webViewC.isShown()) {
            super.cancel();
        } else if (!this.f2276b) {
            this.f2276b = true;
            webViewC.loadUrl("javascript:(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
            new Handler(Looper.getMainLooper()).postDelayed(new ac(this), 1500L);
        }
    }
}
