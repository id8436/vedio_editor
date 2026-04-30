package com.facebook.i;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.behance.sdk.util.BehanceSDKConstants;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.data.analytics.Engagement;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: compiled from: Utility.java */
/* JADX INFO: loaded from: classes2.dex */
public final class as {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f2307a = {"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map<String, ax> f2308b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f2309c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f2310d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f2311e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f2312f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f2313g = -1;
    private static String h = "";
    private static String i = "NoCarrier";

    public static <T> boolean a(Collection<T> collection) {
        return collection == null || collection.size() == 0;
    }

    public static boolean a(String str) {
        return str == null || str.length() == 0;
    }

    public static <T> Collection<T> a(T... tArr) {
        return Collections.unmodifiableCollection(Arrays.asList(tArr));
    }

    public static String a(byte[] bArr) {
        return a("SHA-1", bArr);
    }

    private static String a(String str, byte[] bArr) {
        try {
            return a(MessageDigest.getInstance(str), bArr);
        } catch (NoSuchAlgorithmException e2) {
            return null;
        }
    }

    private static String a(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] bArrDigest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArrDigest) {
            sb.append(Integer.toHexString((b2 >> 4) & 15));
            sb.append(Integer.toHexString((b2 >> 0) & 15));
        }
        return sb.toString();
    }

    public static Uri a(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        return builder.build();
    }

    public static Bundle b(String str) {
        Bundle bundle = new Bundle();
        if (!a(str)) {
            for (String str2 : str.split("&")) {
                String[] strArrSplit = str2.split(Engagement.Comparison.EQ);
                try {
                    if (strArrSplit.length == 2) {
                        bundle.putString(URLDecoder.decode(strArrSplit[0], "UTF-8"), URLDecoder.decode(strArrSplit[1], "UTF-8"));
                    } else if (strArrSplit.length == 1) {
                        bundle.putString(URLDecoder.decode(strArrSplit[0], "UTF-8"), "");
                    }
                } catch (UnsupportedEncodingException e2) {
                    a("FacebookSDK", (Exception) e2);
                }
            }
        }
        return bundle;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
            }
        }
    }

    public static void a(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    public static String a(Context context) {
        az.a(context, GDataProtocol.Parameter.CONTEXT);
        com.facebook.w.a(context);
        return com.facebook.w.i();
    }

    public static Object a(JSONObject jSONObject, String str, String str2) throws JSONException {
        Object objOpt = jSONObject.opt(str);
        Object objNextValue = (objOpt == null || !(objOpt instanceof String)) ? objOpt : new JSONTokener((String) objOpt).nextValue();
        if (objNextValue == null || (objNextValue instanceof JSONObject) || (objNextValue instanceof JSONArray)) {
            return objNextValue;
        }
        if (str2 != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(str2, objNextValue);
            return jSONObject2;
        }
        throw new com.facebook.q("Got an unexpected non-JSON object.");
    }

    public static String a(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader;
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream2);
                try {
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int i2 = inputStreamReader.read(cArr);
                        if (i2 != -1) {
                            sb.append(cArr, 0, i2);
                        } else {
                            String string = sb.toString();
                            a((Closeable) bufferedInputStream2);
                            a(inputStreamReader);
                            return string;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    a((Closeable) bufferedInputStream);
                    a(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStreamReader = null;
                bufferedInputStream = bufferedInputStream2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
    }

    public static int a(InputStream inputStream, OutputStream outputStream) throws Throwable {
        BufferedInputStream bufferedInputStream;
        int i2 = 0;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i3 = bufferedInputStream.read(bArr);
                    if (i3 == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, i3);
                    i2 += i3;
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                return i2;
            } catch (Throwable th) {
                th = th;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream = null;
        }
    }

    private static void b(Context context, String str) {
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie != null) {
            String[] strArrSplit = cookie.split(";");
            for (String str2 : strArrSplit) {
                String[] strArrSplit2 = str2.split(Engagement.Comparison.EQ);
                if (strArrSplit2.length > 0) {
                    cookieManager.setCookie(str, strArrSplit2[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
                }
            }
            cookieManager.removeExpiredCookie();
        }
    }

    public static void b(Context context) {
        b(context, "facebook.com");
        b(context, ".facebook.com");
        b(context, "https://facebook.com");
        b(context, "https://.facebook.com");
    }

    public static void a(String str, Exception exc) {
        if (com.facebook.w.b() && str != null && exc != null) {
            Log.d(str, exc.getClass().getSimpleName() + ": " + exc.getMessage());
        }
    }

    public static void a(String str, String str2) {
        if (com.facebook.w.b() && str != null && str2 != null) {
            Log.d(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (com.facebook.w.b() && !a(str)) {
            Log.d(str, str2, th);
        }
    }

    public static <T> boolean a(T t, T t2) {
        if (t == null) {
            return t2 == null;
        }
        return t.equals(t2);
    }

    public static void a(Context context, String str) {
        boolean zCompareAndSet = f2309c.compareAndSet(false, true);
        if (!a(str) && !f2308b.containsKey(str) && zCompareAndSet) {
            com.facebook.w.d().execute(new at(context, String.format("com.facebook.internal.APP_SETTINGS.%s", str), str));
        }
    }

    public static ax c(String str) {
        if (str != null) {
            return f2308b.get(str);
        }
        return null;
    }

    public static ax a(String str, boolean z) {
        if (!z && f2308b.containsKey(str)) {
            return f2308b.get(str);
        }
        JSONObject jSONObjectF = f(str);
        if (jSONObjectF == null) {
            return null;
        }
        return b(str, jSONObjectF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ax b(String str, JSONObject jSONObject) {
        x xVarA;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("android_sdk_error_categories");
        if (jSONArrayOptJSONArray == null) {
            xVarA = x.a();
        } else {
            xVarA = x.a(jSONArrayOptJSONArray);
        }
        ax axVar = new ax(jSONObject.optBoolean("supports_implicit_sdk_logging", false), jSONObject.optString("gdpv4_nux_content", ""), jSONObject.optBoolean("gdpv4_nux_enabled", false), a(jSONObject.optJSONObject("android_dialog_configs")), xVarA, null);
        f2308b.put(str, axVar);
        return axVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject f(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, f2307a));
        GraphRequest graphRequestA = GraphRequest.a((AccessToken) null, str, (com.facebook.ai) null);
        graphRequestA.a(true);
        graphRequestA.a(bundle);
        return graphRequestA.i().b();
    }

    private static Map<String, Map<String, aw>> a(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        HashMap map = new HashMap();
        if (jSONObject != null && (jSONArrayOptJSONArray = jSONObject.optJSONArray("data")) != null) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= jSONArrayOptJSONArray.length()) {
                    break;
                }
                aw awVarB = aw.b(jSONArrayOptJSONArray.optJSONObject(i3));
                if (awVarB != null) {
                    String strA = awVarB.a();
                    Map map2 = (Map) map.get(strA);
                    if (map2 == null) {
                        map2 = new HashMap();
                        map.put(strA, map2);
                    }
                    map2.put(awVarB.b(), awVarB);
                }
                i2 = i3 + 1;
            }
        }
        return map;
    }

    public static <T> List<T> b(T... tArr) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static List<String> a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(jSONArray.getString(i2));
        }
        return arrayList;
    }

    public static void a(JSONObject jSONObject, d dVar, String str, boolean z) throws JSONException {
        if (dVar != null && dVar.a() != null) {
            jSONObject.put("attribution", dVar.a());
        }
        if (dVar != null && dVar.b() != null) {
            jSONObject.put("advertiser_id", dVar.b());
            jSONObject.put("advertiser_tracking_enabled", !dVar.d());
        }
        if (dVar != null && dVar.c() != null) {
            jSONObject.put("installer_package", dVar.c());
        }
        jSONObject.put("anon_id", str);
        jSONObject.put("application_tracking_enabled", z ? false : true);
    }

    public static void a(JSONObject jSONObject, Context context) throws JSONException {
        Locale locale;
        int i2;
        int i3;
        int i4;
        int i5;
        double d2;
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        d(context);
        String packageName = context.getPackageName();
        int i6 = -1;
        String str = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            i6 = packageInfo.versionCode;
            str = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e2) {
        }
        jSONArray.put(packageName);
        jSONArray.put(i6);
        jSONArray.put(str);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = context.getResources().getConfiguration().locale;
        } catch (Exception e3) {
            locale = Locale.getDefault();
        }
        jSONArray.put(locale.getLanguage() + c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR + locale.getCountry());
        jSONArray.put(h);
        jSONArray.put(i);
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                d2 = 0.0d;
                i4 = 0;
                i5 = 0;
            } else {
                Display defaultDisplay = windowManager.getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                int i7 = displayMetrics.widthPixels;
                try {
                    int i8 = displayMetrics.heightPixels;
                    try {
                        d2 = displayMetrics.density;
                        i4 = i8;
                        i5 = i7;
                    } catch (Exception e4) {
                        i2 = i8;
                        i3 = i7;
                        i4 = i2;
                        i5 = i3;
                        d2 = 0.0d;
                    }
                } catch (Exception e5) {
                    i2 = 0;
                    i3 = i7;
                }
            }
        } catch (Exception e6) {
            i2 = 0;
            i3 = 0;
        }
        jSONArray.put(i5);
        jSONArray.put(i4);
        jSONArray.put(String.format("%.2f", Double.valueOf(d2)));
        jSONArray.put(b());
        jSONArray.put(f2312f);
        jSONArray.put(f2313g);
        jSONObject.put("extinfo", jSONArray.toString());
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            return null;
        }
    }

    public static Method a(String str, String str2, Class<?>... clsArr) {
        try {
            return a(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    public static Object a(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            return null;
        } catch (InvocationTargetException e3) {
            return null;
        }
    }

    public static String c(Context context) {
        if (context == null) {
            return "null";
        }
        if (context == context.getApplicationContext()) {
            return "unknown";
        }
        return context.getClass().getSimpleName();
    }

    public static long a(Uri uri) throws Throwable {
        Cursor cursorQuery;
        try {
            cursorQuery = com.facebook.w.f().getContentResolver().query(uri, null, null, null, null);
        } catch (Throwable th) {
            th = th;
            cursorQuery = null;
        }
        try {
            int columnIndex = cursorQuery.getColumnIndex("_size");
            cursorQuery.moveToFirst();
            long j = cursorQuery.getLong(columnIndex);
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return j;
        } catch (Throwable th2) {
            th = th2;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static Date a(Bundle bundle, String str, Date date) {
        long jLongValue;
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            jLongValue = ((Long) obj).longValue();
        } else {
            if (!(obj instanceof String)) {
                return null;
            }
            try {
                jLongValue = Long.parseLong((String) obj);
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (jLongValue == 0) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date((jLongValue * 1000) + date.getTime());
    }

    public static void a(Parcel parcel, Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    public static Map<String, String> a(Parcel parcel) {
        int i2 = parcel.readInt();
        if (i2 < 0) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i3 = 0; i3 < i2; i3++) {
            map.put(parcel.readString(), parcel.readString());
        }
        return map;
    }

    public static boolean a(AccessToken accessToken) {
        if (accessToken != null) {
            return accessToken.equals(AccessToken.a());
        }
        return false;
    }

    public static void a(String str, ay ayVar) {
        JSONObject jSONObjectA = aq.a(str);
        if (jSONObjectA != null) {
            ayVar.a(jSONObjectA);
            return;
        }
        au auVar = new au(ayVar, str);
        GraphRequest graphRequestG = g(str);
        graphRequestG.a((com.facebook.ai) auVar);
        graphRequestG.j();
    }

    public static JSONObject d(String str) {
        JSONObject jSONObjectA = aq.a(str);
        if (jSONObjectA == null) {
            com.facebook.as asVarI = g(str).i();
            if (asVarI.a() != null) {
                return null;
            }
            return asVarI.b();
        }
        return jSONObjectA;
    }

    private static GraphRequest g(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
        bundle.putString("access_token", str);
        return new GraphRequest(null, "me", bundle, com.facebook.at.GET, null);
    }

    private static int b() {
        if (f2310d > 0) {
            return f2310d;
        }
        try {
            f2310d = new File("/sys/devices/system/cpu/").listFiles(new av()).length;
        } catch (Exception e2) {
        }
        if (f2310d <= 0) {
            f2310d = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return f2310d;
    }

    private static void d(Context context) {
        if (f2311e == -1 || System.currentTimeMillis() - f2311e >= 1800000) {
            f2311e = System.currentTimeMillis();
            c();
            e(context);
            f();
            e();
        }
    }

    private static void c() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            h = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
        } catch (Exception e2) {
        }
    }

    private static void e(Context context) {
        if (i.equals("NoCarrier")) {
            try {
                i = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            } catch (Exception e2) {
            }
        }
    }

    private static boolean d() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    private static void e() {
        try {
            if (d()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f2313g = ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
            }
            f2313g = a(f2313g);
        } catch (Exception e2) {
        }
    }

    private static void f() {
        try {
            if (d()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f2312f = ((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount());
            }
            f2312f = a(f2312f);
        } catch (Exception e2) {
        }
    }

    private static long a(double d2) {
        return Math.round(d2 / 1.073741824E9d);
    }
}
