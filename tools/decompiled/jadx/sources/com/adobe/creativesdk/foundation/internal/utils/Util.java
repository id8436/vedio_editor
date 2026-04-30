package com.adobe.creativesdk.foundation.internal.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkInetAddressUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.google.common.primitives.UnsignedBytes;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.ByteOrder;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class Util {
    private static Context _context;

    public static void initializeContext(Context context) {
        _context = context;
    }

    public static Context getContext() {
        return _context != null ? _context : AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
    }

    public static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append(String.format("%02x", Integer.valueOf(b2 & UnsignedBytes.MAX_VALUE)));
        }
        return sb.toString();
    }

    public static String convertByteArrayToString(byte[] bArr) {
        try {
            return new String(Base64.encode(bArr, 2), "UTF-8");
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, Util.class.getName(), "Error during convertByteArrayToString operation", e2);
            return null;
        }
    }

    public static byte[] convertStringToByteArray(String str) {
        try {
            return Base64.decode(str.getBytes("UTF-8"), 2);
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, Util.class.getName(), "Error during convertStringToByteArray operation", e2);
            return null;
        }
    }

    public static String getIpAddressAnalytic() {
        String hostAddress;
        if (getContext() == null) {
            return null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            Log.d("WIFI_IP", "No Internet Connection");
            return null;
        }
        if (!activeNetworkInfo.isConnected()) {
            return null;
        }
        if (!connectivityManager.isActiveNetworkMetered()) {
            int ipAddress = ((WifiManager) getContext().getSystemService(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_HTTP_NETWORK_WIFI)).getConnectionInfo().getIpAddress();
            if (ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN)) {
                ipAddress = Integer.reverseBytes(ipAddress);
            }
            try {
                hostAddress = InetAddress.getByAddress(BigInteger.valueOf(ipAddress).toByteArray()).getHostAddress();
            } catch (UnknownHostException e2) {
                AdobeLogger.log(Level.ERROR, Util.class.getName(), "Error during getIpAddressAnalytic operation", e2);
                hostAddress = null;
            }
            return hostAddress;
        }
        if (activeNetworkInfo.getType() == 0) {
            return getIpAddressAnalyticUtil(true);
        }
        return null;
    }

    public static String getIpAddressAnalyticUtil(boolean z) {
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                for (InetAddress inetAddress : Collections.list(((NetworkInterface) it.next()).getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        String upperCase = inetAddress.getHostAddress().toUpperCase();
                        boolean zIsIPv4Address = AdobeNetworkInetAddressUtils.isIPv4Address(upperCase);
                        if (z) {
                            if (zIsIPv4Address) {
                                return upperCase;
                            }
                        } else if (!zIsIPv4Address) {
                            int iIndexOf = upperCase.indexOf(37);
                            return iIndexOf >= 0 ? upperCase.substring(0, iIndexOf) : upperCase;
                        }
                    }
                }
            }
            return null;
        } catch (SocketException e2) {
            AdobeLogger.log(Level.ERROR, Util.class.getName(), "Error during getIpAddressAnalyticUtil operation", e2);
            return null;
        }
    }

    public static String getDateTimeUTCFormat() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(new Date());
    }

    public static String getDateTimeForETS() {
        String str = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.UK).format(new Date());
        return str.substring(0, 26) + ":" + str.substring(26);
    }

    public static String getDateTimeForIngest() {
        String str = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.UK).format(new Date());
        return str.substring(0, 26) + ":" + str.substring(26);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getDeviceType() {
        /*
            r0 = 1
            r1 = 0
            android.content.Context r2 = getContext()
            if (r2 != 0) goto Lc
            java.lang.String r0 = "Unknown"
        Lb:
            return r0
        Lc:
            android.content.Context r2 = getContext()
            android.content.res.Resources r2 = r2.getResources()
            android.content.res.Configuration r2 = r2.getConfiguration()
            int r2 = r2.screenLayout
            r2 = r2 & 15
            r3 = 3
            if (r2 < r3) goto L4d
            r2 = r0
        L20:
            if (r2 == 0) goto L53
            android.content.Context r3 = getContext()
            android.content.res.Resources r3 = r3.getResources()
            android.util.DisplayMetrics r3 = r3.getDisplayMetrics()
            int r4 = r3.widthPixels
            float r4 = (float) r4
            float r5 = r3.density
            float r4 = r4 / r5
            int r5 = r3.heightPixels
            float r5 = (float) r5
            float r3 = r3.density
            float r3 = r5 / r3
            float r3 = java.lang.Math.min(r4, r3)
            r4 = 1142292480(0x44160000, float:600.0)
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 < 0) goto L53
        L45:
            if (r2 == 0) goto L4f
            if (r0 == 0) goto L4f
            java.lang.String r0 = "Tablet"
            goto Lb
        L4d:
            r2 = r1
            goto L20
        L4f:
            java.lang.String r0 = "Phone"
            goto Lb
        L53:
            r0 = r1
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.utils.Util.getDeviceType():java.lang.String");
    }

    public static String getDeviceName() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : str + " " + str2;
    }

    public static String getProductVersion() {
        if (getContext() == null) {
            return "";
        }
        try {
            return getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            AdobeLogger.log(Level.ERROR, Util.class.getName(), "Error during getProductVersion operation", e2);
            return "";
        }
    }

    public static String getLocale() {
        if (getContext() == null) {
            return "";
        }
        return getContext().getResources().getConfiguration().locale.toString();
    }
}
