package com.google.android.gms.internal;

import com.behance.sdk.util.BehanceSDKConstants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class zzia {
    public static void zza(StringBuilder sb, HashMap<String, String> map) {
        boolean z;
        sb.append("{");
        boolean z2 = true;
        for (String str : map.keySet()) {
            if (z2) {
                z = false;
            } else {
                sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                z = z2;
            }
            String str2 = map.get(str);
            sb.append("\"").append(str).append("\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append("\"").append(str2).append("\"");
            }
            z2 = z;
        }
        sb.append("}");
    }
}
