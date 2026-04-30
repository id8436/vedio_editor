package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class zzj implements Handler.Callback {
    private final Handler mHandler;
    private final zza zzTD;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> zzTE = new ArrayList<>();
    final ArrayList<GoogleApiClient.ConnectionCallbacks> zzTF = new ArrayList<>();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> zzTG = new ArrayList<>();
    private volatile boolean zzTH = false;
    private final AtomicInteger zzTI = new AtomicInteger(0);
    private boolean zzTJ = false;
    private final Object zzoe = new Object();

    public interface zza {
        boolean isConnected();

        Bundle zzjZ();
    }

    public zzj(Looper looper, zza zzaVar) {
        this.zzTD = zzaVar;
        this.mHandler = new Handler(looper, this);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.zzoe) {
            if (this.zzTH && this.zzTD.isConnected() && this.zzTE.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(this.zzTD.zzjZ());
            }
        }
        return true;
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean zContains;
        zzv.zzr(connectionCallbacks);
        synchronized (this.zzoe) {
            zContains = this.zzTE.contains(connectionCallbacks);
        }
        return zContains;
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean zContains;
        zzv.zzr(onConnectionFailedListener);
        synchronized (this.zzoe) {
            zContains = this.zzTG.contains(onConnectionFailedListener);
        }
        return zContains;
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzv.zzr(connectionCallbacks);
        synchronized (this.zzoe) {
            if (this.zzTE.contains(connectionCallbacks)) {
                Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + connectionCallbacks + " is already registered");
            } else {
                this.zzTE.add(connectionCallbacks);
            }
        }
        if (this.zzTD.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
        }
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzv.zzr(onConnectionFailedListener);
        synchronized (this.zzoe) {
            if (this.zzTG.contains(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + onConnectionFailedListener + " is already registered");
            } else {
                this.zzTG.add(onConnectionFailedListener);
            }
        }
    }

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzv.zzr(connectionCallbacks);
        synchronized (this.zzoe) {
            if (!this.zzTE.remove(connectionCallbacks)) {
                Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + connectionCallbacks + " not found");
            } else if (this.zzTJ) {
                this.zzTF.add(connectionCallbacks);
            }
        }
    }

    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzv.zzr(onConnectionFailedListener);
        synchronized (this.zzoe) {
            if (!this.zzTG.remove(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + onConnectionFailedListener + " not found");
            }
        }
    }

    public void zzaP(int i) {
        this.mHandler.removeMessages(1);
        synchronized (this.zzoe) {
            this.zzTJ = true;
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.zzTE);
            int i2 = this.zzTI.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.zzTH || this.zzTI.get() != i2) {
                    break;
                } else if (this.zzTE.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.zzTF.clear();
            this.zzTJ = false;
        }
    }

    public void zzg(Bundle bundle) {
        synchronized (this.zzoe) {
            zzv.zzP(!this.zzTJ);
            this.mHandler.removeMessages(1);
            this.zzTJ = true;
            zzv.zzP(this.zzTF.size() == 0);
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.zzTE);
            int i = this.zzTI.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.zzTH || !this.zzTD.isConnected() || this.zzTI.get() != i) {
                    break;
                } else if (!this.zzTF.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.zzTF.clear();
            this.zzTJ = false;
        }
    }

    public void zzj(ConnectionResult connectionResult) {
        this.mHandler.removeMessages(1);
        synchronized (this.zzoe) {
            ArrayList<GoogleApiClient.OnConnectionFailedListener> arrayList = new ArrayList(this.zzTG);
            int i = this.zzTI.get();
            for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : arrayList) {
                if (!this.zzTH || this.zzTI.get() != i) {
                    return;
                }
                if (this.zzTG.contains(onConnectionFailedListener)) {
                    onConnectionFailedListener.onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public void zzmf() {
        this.zzTH = false;
        this.zzTI.incrementAndGet();
    }

    public void zzmg() {
        this.zzTH = true;
    }

    protected void zzmh() {
        synchronized (this.zzoe) {
            zzg(this.zzTD.zzjZ());
        }
    }
}
