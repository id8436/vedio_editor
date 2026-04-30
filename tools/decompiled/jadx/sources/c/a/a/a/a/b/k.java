package c.a.a.a.a.b;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: compiled from: ApiKey.java */
/* JADX INFO: loaded from: classes.dex */
public class k {
    public String a(Context context) {
        String strB = b(context);
        if (TextUtils.isEmpty(strB)) {
            strB = c(context);
        }
        if (TextUtils.isEmpty(strB)) {
            d(context);
        }
        return strB;
    }

    protected String b(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                return null;
            }
            String string = bundle.getString("io.fabric.ApiKey");
            if (string == null) {
                c.a.a.a.f.h().a("Fabric", "Falling back to Crashlytics key lookup from Manifest");
                return bundle.getString("com.crashlytics.ApiKey");
            }
            return string;
        } catch (Exception e2) {
            c.a.a.a.f.h().a("Fabric", "Caught non-fatal exception while retrieving apiKey: " + e2);
            return null;
        }
    }

    protected String c(Context context) {
        int iA = m.a(context, "io.fabric.ApiKey", "string");
        if (iA == 0) {
            c.a.a.a.f.h().a("Fabric", "Falling back to Crashlytics key lookup from Strings");
            iA = m.a(context, "com.crashlytics.ApiKey", "string");
        }
        if (iA == 0) {
            return null;
        }
        return context.getResources().getString(iA);
    }

    protected void d(Context context) {
        if (c.a.a.a.f.i() || m.i(context)) {
            throw new IllegalArgumentException(a());
        }
        c.a.a.a.f.h().e("Fabric", a());
    }

    protected String a() {
        return "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>";
    }
}
