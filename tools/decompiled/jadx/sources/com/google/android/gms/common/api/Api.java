package com.google.android.gms.common.api;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzo;
import com.google.android.gms.common.internal.zzv;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class Api<O extends ApiOptions> {
    private final String mName;
    private final zzb<?, O> zzPl;
    private final zze<?, O> zzPm;
    private final zzc<?> zzPn;
    private final zzf<?> zzPo;
    private final ArrayList<Scope> zzPp;

    public interface ApiOptions {

        public interface HasOptions extends ApiOptions {
        }

        public final class NoOptions implements NotRequiredOptions {
            private NoOptions() {
            }
        }

        public interface NotRequiredOptions extends ApiOptions {
        }

        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    public interface zza {
        void connect();

        void disconnect();

        void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        boolean isConnected();

        void zza(GoogleApiClient.zza zzaVar);

        void zza(zzo zzoVar);

        void zza(zzo zzoVar, Set<Scope> set);

        boolean zzjM();
    }

    public interface zzb<T extends zza, O> {
        int getPriority();

        T zza(Context context, Looper looper, com.google.android.gms.common.internal.zze zzeVar, O o, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener);
    }

    public final class zzc<C extends zza> {
    }

    public interface zzd<T extends IInterface> {
        T zzD(IBinder iBinder);

        String zzeq();

        String zzer();
    }

    public interface zze<T extends zzd, O> {
        T zzi(O o);

        int zzkH();
    }

    public final class zzf<C extends zzd> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends zza> Api(String str, zzb<C, O> zzbVar, zzc<C> zzcVar, Scope... scopeArr) {
        zzv.zzb(zzbVar, "Cannot construct an Api with a null ClientBuilder");
        zzv.zzb(zzcVar, "Cannot construct an Api with a null ClientKey");
        this.mName = str;
        this.zzPl = zzbVar;
        this.zzPm = null;
        this.zzPn = zzcVar;
        this.zzPo = null;
        this.zzPp = new ArrayList<>(Arrays.asList(scopeArr));
    }

    public String getName() {
        return this.mName;
    }

    public zzb<?, O> zzkC() {
        zzv.zza(this.zzPl != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.zzPl;
    }

    public zze<?, O> zzkD() {
        zzv.zza(this.zzPm != null, "This API was constructed with a ClientBuilder. Use getClientBuilder");
        return this.zzPm;
    }

    public List<Scope> zzkE() {
        return this.zzPp;
    }

    public zzc<?> zzkF() {
        zzv.zza(this.zzPn != null, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey");
        return this.zzPn;
    }

    public boolean zzkG() {
        return this.zzPo != null;
    }
}
