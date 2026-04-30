package c.a.a.a.a.b;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import java.security.GeneralSecurityException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: IdManager.java */
/* JADX INFO: loaded from: classes.dex */
public class z {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f187d = Pattern.compile("[^\\p{Alnum}]");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f188e = Pattern.quote(URIUtil.SLASH);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    b f190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f191c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ReentrantLock f192f = new ReentrantLock();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ab f193g;
    private final boolean h;
    private final boolean i;
    private final Context j;
    private final String k;
    private final String l;
    private final Collection<c.a.a.a.q> m;

    public z(Context context, String str, String str2, Collection<c.a.a.a.q> collection) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        if (collection == null) {
            throw new IllegalArgumentException("kits must not be null");
        }
        this.j = context;
        this.k = str;
        this.l = str2;
        this.m = collection;
        this.f193g = new ab();
        this.f189a = new c(context);
        this.h = m.a(context, "com.crashlytics.CollectDeviceIdentifiers", true);
        if (!this.h) {
            c.a.a.a.f.h().a("Fabric", "Device ID collection disabled for " + context.getPackageName());
        }
        this.i = m.a(context, "com.crashlytics.CollectUserIdentifiers", true);
        if (!this.i) {
            c.a.a.a.f.h().a("Fabric", "User information collection disabled for " + context.getPackageName());
        }
    }

    public String a(String str, String str2) {
        try {
            Cipher cipherA = m.a(1, m.a(str + str2.replaceAll("\\.", new StringBuilder("slc").reverse().toString())));
            JSONObject jSONObject = new JSONObject();
            a(jSONObject);
            b(jSONObject);
            c(jSONObject);
            d(jSONObject);
            if (jSONObject.length() <= 0) {
                return "";
            }
            try {
                return m.a(cipherA.doFinal(jSONObject.toString().getBytes()));
            } catch (GeneralSecurityException e2) {
                c.a.a.a.f.h().e("Fabric", "Could not encrypt IDs", e2);
                return "";
            }
        } catch (GeneralSecurityException e3) {
            c.a.a.a.f.h().e("Fabric", "Could not create cipher to encrypt headers.", e3);
            return "";
        }
    }

    private void a(JSONObject jSONObject) {
        try {
            jSONObject.put("APPLICATION_INSTALLATION_UUID".toLowerCase(Locale.US), b());
        } catch (Exception e2) {
            c.a.a.a.f.h().e("Fabric", "Could not write application id to JSON", e2);
        }
    }

    private void b(JSONObject jSONObject) {
        for (Map.Entry<aa, String> entry : g().entrySet()) {
            try {
                jSONObject.put(entry.getKey().name().toLowerCase(Locale.US), entry.getValue());
            } catch (Exception e2) {
                c.a.a.a.f.h().e("Fabric", "Could not write value to JSON: " + entry.getKey().name(), e2);
            }
        }
    }

    private void c(JSONObject jSONObject) {
        try {
            jSONObject.put("os_version", d());
        } catch (Exception e2) {
            c.a.a.a.f.h().e("Fabric", "Could not write OS version to JSON", e2);
        }
    }

    private void d(JSONObject jSONObject) {
        try {
            jSONObject.put("model", e());
        } catch (Exception e2) {
            c.a.a.a.f.h().e("Fabric", "Could not write model to JSON", e2);
        }
    }

    public boolean a() {
        return this.i;
    }

    private boolean a(String str) {
        return this.j.checkCallingPermission(str) == 0;
    }

    private String b(String str) {
        if (str == null) {
            return null;
        }
        return f187d.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    public String b() {
        String str = this.l;
        if (str == null) {
            SharedPreferences sharedPreferencesA = m.a(this.j);
            String string = sharedPreferencesA.getString("crashlytics.installation.id", null);
            if (string == null) {
                return a(sharedPreferencesA);
            }
            return string;
        }
        return str;
    }

    public String c() {
        return this.k;
    }

    public String d() {
        return String.format(Locale.US, "%s/%s", c(Build.VERSION.RELEASE), c(Build.VERSION.INCREMENTAL));
    }

    public String e() {
        return String.format(Locale.US, "%s/%s", c(Build.MANUFACTURER), c(Build.MODEL));
    }

    private String c(String str) {
        return str.replaceAll(f188e, "");
    }

    public String f() {
        if (!this.h) {
            return "";
        }
        String strL = l();
        if (strL == null) {
            SharedPreferences sharedPreferencesA = m.a(this.j);
            String string = sharedPreferencesA.getString("crashlytics.installation.id", null);
            if (string == null) {
                return a(sharedPreferencesA);
            }
            return string;
        }
        return strL;
    }

    private String a(SharedPreferences sharedPreferences) {
        this.f192f.lock();
        try {
            String string = sharedPreferences.getString("crashlytics.installation.id", null);
            if (string == null) {
                string = b(UUID.randomUUID().toString());
                sharedPreferences.edit().putString("crashlytics.installation.id", string).commit();
            }
            return string;
        } finally {
            this.f192f.unlock();
        }
    }

    public Map<aa, String> g() {
        HashMap map = new HashMap();
        for (Object obj : this.m) {
            if (obj instanceof u) {
                for (Map.Entry<aa, String> entry : ((u) obj).getDeviceIdentifiers().entrySet()) {
                    a(map, entry.getKey(), entry.getValue());
                }
            }
        }
        a(map, aa.ANDROID_ID, l());
        a(map, aa.ANDROID_DEVICE_ID, m());
        a(map, aa.ANDROID_SERIAL, p());
        a(map, aa.WIFI_MAC_ADDRESS, n());
        a(map, aa.BLUETOOTH_MAC_ADDRESS, o());
        a(map, aa.ANDROID_ADVERTISING_ID, k());
        return Collections.unmodifiableMap(map);
    }

    public String h() {
        return this.f193g.a(this.j);
    }

    synchronized b i() {
        if (!this.f191c) {
            this.f190b = this.f189a.a();
            this.f191c = true;
        }
        return this.f190b;
    }

    public Boolean j() {
        b bVarI;
        if (!this.h || (bVarI = i()) == null) {
            return null;
        }
        return Boolean.valueOf(bVarI.f150b);
    }

    public String k() {
        b bVarI;
        if (!this.h || (bVarI = i()) == null) {
            return null;
        }
        return bVarI.f149a;
    }

    private void a(Map<aa, String> map, aa aaVar, String str) {
        if (str != null) {
            map.put(aaVar, str);
        }
    }

    public String l() {
        if (!this.h) {
            return null;
        }
        String string = Settings.Secure.getString(this.j.getContentResolver(), "android_id");
        if ("9774d56d682e549c".equals(string)) {
            return null;
        }
        return b(string);
    }

    public String m() {
        TelephonyManager telephonyManager;
        if (this.h && a("android.permission.READ_PHONE_STATE") && (telephonyManager = (TelephonyManager) this.j.getSystemService("phone")) != null) {
            return b(telephonyManager.getDeviceId());
        }
        return null;
    }

    public String n() {
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        if (!this.h || !a("android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) this.j.getSystemService(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_HTTP_NETWORK_WIFI)) == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return null;
        }
        return b(connectionInfo.getMacAddress());
    }

    public String o() {
        if (this.h && a("android.permission.BLUETOOTH")) {
            try {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter != null) {
                    b(defaultAdapter.getAddress());
                    return null;
                }
                return null;
            } catch (Exception e2) {
                c.a.a.a.f.h().e("Fabric", "Utils#getBluetoothMacAddress failed, returning null. Requires prior call to BluetoothAdatpter.getDefaultAdapter() on thread that has called Looper.prepare()", e2);
                return null;
            }
        }
        return null;
    }

    public String p() {
        if (this.h && Build.VERSION.SDK_INT >= 9) {
            try {
                return b((String) Build.class.getField("SERIAL").get(null));
            } catch (Exception e2) {
                c.a.a.a.f.h().e("Fabric", "Could not retrieve android.os.Build.SERIAL value", e2);
            }
        }
        return null;
    }
}
