package com.facebook.i;

import android.os.Bundle;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: BundleJSONConverter.java */
/* JADX INFO: loaded from: classes2.dex */
final class p implements q {
    p() {
    }

    @Override // com.facebook.i.q
    public void a(Bundle bundle, String str, Object obj) throws JSONException {
        JSONArray jSONArray = (JSONArray) obj;
        ArrayList<String> arrayList = new ArrayList<>();
        if (jSONArray.length() == 0) {
            bundle.putStringArrayList(str, arrayList);
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                Object obj2 = jSONArray.get(i2);
                if (obj2 instanceof String) {
                    arrayList.add((String) obj2);
                    i = i2 + 1;
                } else {
                    throw new IllegalArgumentException("Unexpected type in an array: " + obj2.getClass());
                }
            } else {
                bundle.putStringArrayList(str, arrayList);
                return;
            }
        }
    }
}
