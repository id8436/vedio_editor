package com.google.android.gms.dynamic;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.zzc;

/* JADX INFO: loaded from: classes3.dex */
public final class zzb extends zzc.zza {
    private Fragment zzacp;

    private zzb(Fragment fragment) {
        this.zzacp = fragment;
    }

    public static zzb zza(Fragment fragment) {
        if (fragment != null) {
            return new zzb(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.zzc
    public Bundle getArguments() {
        return this.zzacp.getArguments();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getId() {
        return this.zzacp.getId();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getRetainInstance() {
        return this.zzacp.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public String getTag() {
        return this.zzacp.getTag();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getTargetRequestCode() {
        return this.zzacp.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getUserVisibleHint() {
        return this.zzacp.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd getView() {
        return zze.zzt(this.zzacp.getView());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isAdded() {
        return this.zzacp.isAdded();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isDetached() {
        return this.zzacp.isDetached();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isHidden() {
        return this.zzacp.isHidden();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isInLayout() {
        return this.zzacp.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isRemoving() {
        return this.zzacp.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isResumed() {
        return this.zzacp.isResumed();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isVisible() {
        return this.zzacp.isVisible();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setHasOptionsMenu(boolean z) {
        this.zzacp.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setMenuVisibility(boolean z) {
        this.zzacp.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setRetainInstance(boolean z) {
        this.zzacp.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setUserVisibleHint(boolean z) {
        this.zzacp.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivity(Intent intent) {
        this.zzacp.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivityForResult(Intent intent, int i) {
        this.zzacp.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zze(zzd zzdVar) {
        this.zzacp.registerForContextMenu((View) zze.zzg(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzf(zzd zzdVar) {
        this.zzacp.unregisterForContextMenu((View) zze.zzg(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzov() {
        return zze.zzt(this.zzacp.getActivity());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzow() {
        return zza(this.zzacp.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzox() {
        return zze.zzt(this.zzacp.getResources());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzoy() {
        return zza(this.zzacp.getTargetFragment());
    }
}
