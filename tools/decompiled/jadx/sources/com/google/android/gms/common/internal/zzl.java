package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class zzl extends zzk implements Handler.Callback {
    private final Handler mHandler;
    private final HashMap<zza, zzb> zzTM = new HashMap<>();
    private final com.google.android.gms.common.stats.zzb zzTN = com.google.android.gms.common.stats.zzb.zznb();
    private final long zzTO = 5000;
    private final Context zzoh;

    final class zza {
        private final ComponentName zzTP;
        private final String zzso;

        public zza(ComponentName componentName) {
            this.zzso = null;
            this.zzTP = (ComponentName) zzv.zzr(componentName);
        }

        public zza(String str) {
            this.zzso = zzv.zzbS(str);
            this.zzTP = null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return zzu.equal(this.zzso, zzaVar.zzso) && zzu.equal(this.zzTP, zzaVar.zzTP);
        }

        public int hashCode() {
            return zzu.hashCode(this.zzso, this.zzTP);
        }

        public String toString() {
            return this.zzso == null ? this.zzTP.flattenToString() : this.zzso;
        }

        public Intent zzmi() {
            return this.zzso != null ? new Intent(this.zzso).setPackage("com.google.android.gms") : new Intent().setComponent(this.zzTP);
        }
    }

    final class zzb {
        private IBinder zzSU;
        private ComponentName zzTP;
        private boolean zzTS;
        private final zza zzTT;
        private final zza zzTQ = new zza();
        private final Set<ServiceConnection> zzTR = new HashSet();
        private int mState = 2;

        public class zza implements ServiceConnection {
            public zza() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (zzl.this.zzTM) {
                    zzb.this.zzSU = iBinder;
                    zzb.this.zzTP = componentName;
                    Iterator it = zzb.this.zzTR.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                    }
                    zzb.this.mState = 1;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (zzl.this.zzTM) {
                    zzb.this.zzSU = null;
                    zzb.this.zzTP = componentName;
                    Iterator it = zzb.this.zzTR.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                    }
                    zzb.this.mState = 2;
                }
            }
        }

        public zzb(zza zzaVar) {
            this.zzTT = zzaVar;
        }

        public IBinder getBinder() {
            return this.zzSU;
        }

        public ComponentName getComponentName() {
            return this.zzTP;
        }

        public int getState() {
            return this.mState;
        }

        public boolean isBound() {
            return this.zzTS;
        }

        public void zza(ServiceConnection serviceConnection, String str) {
            zzl.this.zzTN.zza(zzl.this.zzoh, serviceConnection, str, this.zzTT.zzmi());
            this.zzTR.add(serviceConnection);
        }

        public boolean zza(ServiceConnection serviceConnection) {
            return this.zzTR.contains(serviceConnection);
        }

        public void zzb(ServiceConnection serviceConnection, String str) {
            zzl.this.zzTN.zzb(zzl.this.zzoh, serviceConnection);
            this.zzTR.remove(serviceConnection);
        }

        public void zzbM(String str) {
            this.zzTS = zzl.this.zzTN.zza(zzl.this.zzoh, str, this.zzTT.zzmi(), this.zzTQ, 129);
            if (this.zzTS) {
                this.mState = 3;
            } else {
                zzl.this.zzTN.zza(zzl.this.zzoh, this.zzTQ);
            }
        }

        public void zzbN(String str) {
            zzl.this.zzTN.zza(zzl.this.zzoh, this.zzTQ);
            this.zzTS = false;
            this.mState = 2;
        }

        public boolean zzmj() {
            return this.zzTR.isEmpty();
        }
    }

    zzl(Context context) {
        this.zzoh = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), this);
    }

    private boolean zza(zza zzaVar, ServiceConnection serviceConnection, String str) {
        boolean zIsBound;
        zzv.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzTM) {
            zzb zzbVar = this.zzTM.get(zzaVar);
            if (zzbVar != null) {
                this.mHandler.removeMessages(0, zzbVar);
                if (!zzbVar.zza(serviceConnection)) {
                    zzbVar.zza(serviceConnection, str);
                    switch (zzbVar.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzbVar.getComponentName(), zzbVar.getBinder());
                            break;
                        case 2:
                            zzbVar.zzbM(str);
                            break;
                    }
                } else {
                    throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + zzaVar);
                }
            } else {
                zzbVar = new zzb(zzaVar);
                zzbVar.zza(serviceConnection, str);
                zzbVar.zzbM(str);
                this.zzTM.put(zzaVar, zzbVar);
            }
            zIsBound = zzbVar.isBound();
        }
        return zIsBound;
    }

    private void zzb(zza zzaVar, ServiceConnection serviceConnection, String str) {
        zzv.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzTM) {
            zzb zzbVar = this.zzTM.get(zzaVar);
            if (zzbVar == null) {
                throw new IllegalStateException("Nonexistent connection status for service config: " + zzaVar);
            }
            if (!zzbVar.zza(serviceConnection)) {
                throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + zzaVar);
            }
            zzbVar.zzb(serviceConnection, str);
            if (zzbVar.zzmj()) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zzbVar), this.zzTO);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                zzb zzbVar = (zzb) message.obj;
                synchronized (this.zzTM) {
                    if (zzbVar.zzmj()) {
                        if (zzbVar.isBound()) {
                            zzbVar.zzbN("GmsClientSupervisor");
                        }
                        this.zzTM.remove(zzbVar.zzTT);
                    }
                    break;
                }
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.common.internal.zzk
    public boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return zza(new zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzk
    public boolean zza(String str, ServiceConnection serviceConnection, String str2) {
        return zza(new zza(str), serviceConnection, str2);
    }

    @Override // com.google.android.gms.common.internal.zzk
    public void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        zzb(new zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzk
    public void zzb(String str, ServiceConnection serviceConnection, String str2) {
        zzb(new zza(str), serviceConnection, str2);
    }
}
