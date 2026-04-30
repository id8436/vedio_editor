package com.google.android.gms.common.api;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.zzg;
import com.google.android.gms.common.internal.zzv;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class zza {

    /* JADX INFO: renamed from: com.google.android.gms.common.api.zza$zza, reason: collision with other inner class name */
    public abstract class AbstractC0069zza<R extends Result, A extends Api.zza> extends AbstractPendingResult<R> implements zzb<R>, zzg.zze<A> {
        private final Api.zzc<A> zzPn;
        private AtomicReference<zzg.zzc> zzPq;

        protected AbstractC0069zza(Api.zzc<A> zzcVar, GoogleApiClient googleApiClient) {
            super(((GoogleApiClient) zzv.zzb(googleApiClient, "GoogleApiClient must not be null")).getLooper());
            this.zzPq = new AtomicReference<>();
            this.zzPn = (Api.zzc) zzv.zzr(zzcVar);
        }

        private void zza(RemoteException remoteException) {
            zzk(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        @Override // com.google.android.gms.common.api.AbstractPendingResult
        protected void onResultConsumed() {
            zzg.zzc andSet = this.zzPq.getAndSet(null);
            if (andSet != null) {
                andSet.zzc(this);
            }
        }

        protected abstract void zza(A a2) throws RemoteException;

        @Override // com.google.android.gms.common.api.zzg.zze
        public void zza(zzg.zzc zzcVar) {
            this.zzPq.set(zzcVar);
        }

        @Override // com.google.android.gms.common.api.zzg.zze
        public final void zzb(A a2) throws DeadObjectException {
            try {
                zza(a2);
            } catch (DeadObjectException e2) {
                zza(e2);
                throw e2;
            } catch (RemoteException e3) {
                zza(e3);
            }
        }

        @Override // com.google.android.gms.common.api.zza.zzb
        public /* synthetic */ void zzj(Object obj) {
            super.setResult((Result) obj);
        }

        @Override // com.google.android.gms.common.api.zza.zzb, com.google.android.gms.common.api.zzg.zze
        public final void zzk(Status status) {
            zzv.zzb(!status.isSuccess(), "Failed result must not be success");
            setResult(createFailedResult(status));
        }

        @Override // com.google.android.gms.common.api.zzg.zze
        public final Api.zzc<A> zzkF() {
            return this.zzPn;
        }

        @Override // com.google.android.gms.common.api.zzg.zze
        public int zzkI() {
            return 0;
        }
    }

    public interface zzb<R> {
        void zzj(R r);

        void zzk(Status status);
    }
}
