package com.facebook.i;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.client.authn.oauth.GoogleOAuthParameters;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: NativeProtocol.java */
/* JADX INFO: loaded from: classes2.dex */
public final class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final al f2288a = new aj(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static List<al> f2289b = e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Map<String, List<al>> f2290c = f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f2291d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final List<Integer> f2292e = Arrays.asList(20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101);

    private static List<al> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(f2288a);
        arrayList.add(new am(null));
        return arrayList;
    }

    private static Map<String, List<al>> f() {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ak(null));
        map.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", f2289b);
        map.put("com.facebook.platform.action.request.FEED_DIALOG", f2289b);
        map.put("com.facebook.platform.action.request.LIKE_DIALOG", f2289b);
        map.put("com.facebook.platform.action.request.APPINVITES_DIALOG", f2289b);
        map.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
        map.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
        return map;
    }

    static Intent a(Context context, Intent intent, al alVar) {
        ResolveInfo resolveInfoResolveActivity;
        if (intent == null || (resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null || !alVar.a(context, resolveInfoResolveActivity.activityInfo.packageName)) {
            return null;
        }
        return intent;
    }

    static Intent b(Context context, Intent intent, al alVar) {
        ResolveInfo resolveInfoResolveService;
        if (intent == null || (resolveInfoResolveService = context.getPackageManager().resolveService(intent, 0)) == null || !alVar.a(context, resolveInfoResolveService.serviceInfo.packageName)) {
            return null;
        }
        return intent;
    }

    public static Intent a(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, com.facebook.login.a aVar) {
        for (al alVar : f2289b) {
            Intent intentPutExtra = new Intent().setClassName(alVar.a(), "com.facebook.katana.ProxyAuth").putExtra(BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, str);
            if (!as.a(collection)) {
                intentPutExtra.putExtra(GoogleOAuthParameters.SCOPE_KEY, TextUtils.join(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, collection));
            }
            if (!as.a(str2)) {
                intentPutExtra.putExtra("e2e", str2);
            }
            intentPutExtra.putExtra("response_type", "token,signed_request");
            intentPutExtra.putExtra("return_scopes", "true");
            if (z2) {
                intentPutExtra.putExtra("default_audience", aVar.a());
            }
            intentPutExtra.putExtra("legacy_override", "v2.4");
            if (z) {
                intentPutExtra.putExtra("auth_type", "rerequest");
            }
            Intent intentA = a(context, intentPutExtra, alVar);
            if (intentA != null) {
                return intentA;
            }
        }
        return null;
    }

    public static final int a() {
        return f2292e.get(0).intValue();
    }

    public static boolean a(int i) {
        return f2292e.contains(Integer.valueOf(i)) && i >= 20140701;
    }

    public static Intent a(Intent intent, Bundle bundle, com.facebook.q qVar) {
        UUID uuidB = b(intent);
        if (uuidB == null) {
            return null;
        }
        Intent intent2 = new Intent();
        intent2.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", a(intent));
        Bundle bundle2 = new Bundle();
        bundle2.putString("action_id", uuidB.toString());
        if (qVar != null) {
            bundle2.putBundle(Adobe360Constants.kAdobe360SatusError, a(qVar));
        }
        intent2.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
        if (bundle != null) {
            intent2.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
            return intent2;
        }
        return intent2;
    }

    public static Intent a(Context context) {
        for (al alVar : f2289b) {
            Intent intentB = b(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(alVar.a()).addCategory("android.intent.category.DEFAULT"), alVar);
            if (intentB != null) {
                return intentB;
            }
        }
        return null;
    }

    public static int a(Intent intent) {
        return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
    }

    public static UUID b(Intent intent) {
        String stringExtra;
        if (intent == null) {
            return null;
        }
        if (a(a(intent))) {
            Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
            stringExtra = bundleExtra != null ? bundleExtra.getString("action_id") : null;
        } else {
            stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        }
        if (stringExtra == null) {
            return null;
        }
        try {
            return UUID.fromString(stringExtra);
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }

    public static Bundle c(Intent intent) {
        return !a(a(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
    }

    public static com.facebook.q a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        String string = bundle.getString("error_type");
        if (string == null) {
            string = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
        }
        String string2 = bundle.getString("error_description");
        if (string2 == null) {
            string2 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
        }
        if (string != null && string.equalsIgnoreCase("UserCanceled")) {
            return new com.facebook.r(string2);
        }
        return new com.facebook.q(string2);
    }

    public static Bundle a(com.facebook.q qVar) {
        if (qVar == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("error_description", qVar.toString());
        if (qVar instanceof com.facebook.r) {
            bundle.putString("error_type", "UserCanceled");
            return bundle;
        }
        return bundle;
    }

    public static int b(int i) {
        return a(f2289b, new int[]{i});
    }

    private static int a(List<al> list, int[] iArr) {
        b();
        if (list == null) {
            return -1;
        }
        Iterator<al> it = list.iterator();
        while (it.hasNext()) {
            int iA = a(it.next().b(), a(), iArr);
            if (iA != -1) {
                return iA;
            }
        }
        return -1;
    }

    public static void b() {
        if (f2291d.compareAndSet(false, true)) {
            com.facebook.w.d().execute(new ai());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TreeSet<Integer> b(al alVar) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        TreeSet<Integer> treeSet = new TreeSet<>();
        ContentResolver contentResolver = com.facebook.w.f().getContentResolver();
        String[] strArr = {AdobeCommunityConstants.AdobeCommunityResourceVersionKey};
        Uri uriC = c(alVar);
        try {
            if (com.facebook.w.f().getPackageManager().resolveContentProvider(alVar.a() + ".provider.PlatformProvider", 0) != null) {
                cursorQuery = contentResolver.query(uriC, strArr, null, null, null);
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        try {
                            treeSet.add(Integer.valueOf(cursorQuery.getInt(cursorQuery.getColumnIndex(AdobeCommunityConstants.AdobeCommunityResourceVersionKey))));
                        } catch (Throwable th) {
                            cursor = cursorQuery;
                            th = th;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
            } else {
                cursorQuery = null;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return treeSet;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int a(TreeSet<Integer> treeSet, int i, int[] iArr) {
        int length = iArr.length - 1;
        Iterator<Integer> itDescendingIterator = treeSet.descendingIterator();
        int i2 = -1;
        int i3 = length;
        while (itDescendingIterator.hasNext()) {
            int iIntValue = itDescendingIterator.next().intValue();
            int iMax = Math.max(i2, iIntValue);
            int i4 = i3;
            while (i4 >= 0 && iArr[i4] > iIntValue) {
                i4--;
            }
            if (i4 < 0) {
                return -1;
            }
            if (iArr[i4] == iIntValue) {
                if (i4 % 2 == 0) {
                    return Math.min(iMax, i);
                }
                return -1;
            }
            i3 = i4;
            i2 = iMax;
        }
        return -1;
    }

    private static Uri c(al alVar) {
        return Uri.parse("content://" + alVar.a() + ".provider.PlatformProvider/versions");
    }
}
