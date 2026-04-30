package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Debug;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.gms.common.stats.zzc;
import com.google.android.gms.internal.zzhc;
import com.google.android.gms.internal.zzid;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class zzb {
    private static zzb zzVc;
    private final List<String> zzVd;
    private final List<String> zzVe;
    private final List<String> zzVf;
    private final List<String> zzVg;
    private zze zzVi;
    private static final Object zzTK = new Object();
    private static final ComponentName zzVh = new ComponentName("com.google.android.gms", "com.google.android.gms.common.stats.GmsCoreStatsService");

    private zzb() {
        if (getLogLevel() == zzd.zzVq) {
            this.zzVd = Collections.EMPTY_LIST;
            this.zzVe = Collections.EMPTY_LIST;
            this.zzVf = Collections.EMPTY_LIST;
            this.zzVg = Collections.EMPTY_LIST;
            return;
        }
        String str = zzc.zza.zzVl.get();
        this.zzVd = str == null ? Collections.EMPTY_LIST : Arrays.asList(str.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR));
        String str2 = zzc.zza.zzVm.get();
        this.zzVe = str2 == null ? Collections.EMPTY_LIST : Arrays.asList(str2.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR));
        String str3 = zzc.zza.zzVn.get();
        this.zzVf = str3 == null ? Collections.EMPTY_LIST : Arrays.asList(str3.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR));
        String str4 = zzc.zza.zzVo.get();
        this.zzVg = str4 == null ? Collections.EMPTY_LIST : Arrays.asList(str4.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR));
        this.zzVi = new zze(1024, zzc.zza.zzVp.get().longValue());
    }

    private int getLogLevel() {
        try {
            return (com.google.android.gms.common.internal.zzd.zzSV && zzhc.isInitialized() && zzhc.zzlj() == Process.myUid()) ? zzc.zza.zzVk.get().intValue() : zzd.zzVq;
        } catch (SecurityException e2) {
            return zzd.zzVq;
        }
    }

    private void zza(Context context, ServiceConnection serviceConnection, String str, Intent intent, String str2) {
        ConnectionEvent connectionEvent;
        if (com.google.android.gms.common.internal.zzd.zzSV) {
            long jZzb = zzb(serviceConnection);
            if (zza(context, str, intent, jZzb, str2)) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                String strZzj = (getLogLevel() & zzd.zzVu) != 0 ? zzid.zzj(3, 5) : null;
                long nativeHeapAllocatedSize = (getLogLevel() & zzd.zzVw) != 0 ? Debug.getNativeHeapAllocatedSize() : 0L;
                if (str2.equals("UNBIND") || str2.equals("DISCONNECT")) {
                    connectionEvent = new ConnectionEvent(jCurrentTimeMillis, str2, null, null, null, null, strZzj, jZzb, SystemClock.elapsedRealtime(), nativeHeapAllocatedSize);
                } else {
                    ServiceInfo serviceInfoZzb = zzb(context, intent);
                    connectionEvent = new ConnectionEvent(jCurrentTimeMillis, str2, zzid.zzW(context), str, serviceInfoZzb.processName, serviceInfoZzb.name, strZzj, jZzb, SystemClock.elapsedRealtime(), nativeHeapAllocatedSize);
                }
                context.startService(new Intent().setComponent(zzVh).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", connectionEvent));
            }
        }
    }

    private boolean zza(Context context, Intent intent) {
        return false;
    }

    private boolean zza(Context context, String str, Intent intent, long j, String str2) {
        int logLevel = getLogLevel();
        if (logLevel == zzd.zzVq || this.zzVi == null) {
            return false;
        }
        if (str2 == "DISCONNECT" || str2 == "UNBIND") {
            return this.zzVi.zzA(j);
        }
        ServiceInfo serviceInfoZzb = zzb(context, intent);
        if (serviceInfoZzb == null) {
            Log.w("ConnectionTracker", String.format("Client %s made an invalid request %s", str, intent.toUri(0)));
            return false;
        }
        String strZzW = zzid.zzW(context);
        String str3 = serviceInfoZzb.processName;
        String str4 = serviceInfoZzb.name;
        if (this.zzVd.contains(strZzW) || this.zzVe.contains(str) || this.zzVf.contains(str3) || this.zzVg.contains(str4)) {
            return false;
        }
        if (str3.equals(strZzW) && (logLevel & zzd.zzVv) != 0) {
            return false;
        }
        this.zzVi.zza(Long.valueOf(j));
        return true;
    }

    private long zzb(ServiceConnection serviceConnection) {
        return (((long) Process.myPid()) << 32) | ((long) System.identityHashCode(serviceConnection));
    }

    private static ServiceInfo zzb(Context context, Intent intent) {
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 128);
        if (listQueryIntentServices == null || listQueryIntentServices.size() == 0) {
            Log.w("ConnectionTracker", String.format("There are no handler of this intent: %s\n Stack trace: %s", intent.toUri(0), zzid.zzj(3, 20)));
            return null;
        }
        if (listQueryIntentServices.size() > 1) {
            Log.w("ConnectionTracker", String.format("Multiple handlers found for this intent: %s\n Stack trace: %s", intent.toUri(0), zzid.zzj(3, 20)));
            Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
            if (it.hasNext()) {
                Log.w("ConnectionTracker", it.next().serviceInfo.name);
                return null;
            }
        }
        return listQueryIntentServices.get(0).serviceInfo;
    }

    public static zzb zznb() {
        synchronized (zzTK) {
            if (zzVc == null) {
                zzVc = new zzb();
            }
        }
        return zzVc;
    }

    public void zza(Context context, ServiceConnection serviceConnection) {
        zza(context, serviceConnection, (String) null, (Intent) null, "UNBIND");
        context.unbindService(serviceConnection);
    }

    public void zza(Context context, ServiceConnection serviceConnection, String str, Intent intent) {
        zza(context, serviceConnection, str, intent, "CONNECT");
    }

    public boolean zza(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return zza(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    public boolean zza(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        if (zza(context, intent)) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
            return false;
        }
        zza(context, serviceConnection, str, intent, "BIND");
        return context.bindService(intent, serviceConnection, i);
    }

    public void zzb(Context context, ServiceConnection serviceConnection) {
        zza(context, serviceConnection, (String) null, (Intent) null, "DISCONNECT");
    }
}
