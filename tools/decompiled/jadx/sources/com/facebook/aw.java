package com.facebook;

import android.net.Uri;
import org.json.JSONObject;

/* JADX INFO: compiled from: Profile.java */
/* JADX INFO: loaded from: classes2.dex */
final class aw implements com.facebook.i.ay {
    aw() {
    }

    @Override // com.facebook.i.ay
    public void a(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("id");
        if (strOptString != null) {
            String strOptString2 = jSONObject.optString("link");
            Profile.a(new Profile(strOptString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString("name"), strOptString2 != null ? Uri.parse(strOptString2) : null));
        }
    }

    @Override // com.facebook.i.ay
    public void a(q qVar) {
    }
}
