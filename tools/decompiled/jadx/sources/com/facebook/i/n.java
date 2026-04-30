package com.facebook.i;

import android.os.Bundle;
import org.json.JSONException;

/* JADX INFO: compiled from: BundleJSONConverter.java */
/* JADX INFO: loaded from: classes2.dex */
final class n implements q {
    n() {
    }

    @Override // com.facebook.i.q
    public void a(Bundle bundle, String str, Object obj) throws JSONException {
        bundle.putString(str, (String) obj);
    }
}
