package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.google.android.gms.dynamic.zzc;

/* JADX INFO: loaded from: classes3.dex */
public final class zzh extends zzc.zza {
    private Fragment zzTb;

    private zzh(Fragment fragment) {
        this.zzTb = fragment;
    }

    public static zzh zza(Fragment fragment) {
        if (fragment != null) {
            return new zzh(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.zzc
    public Bundle getArguments() {
        return this.zzTb.getArguments();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getId() {
        return this.zzTb.getId();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getRetainInstance() {
        return this.zzTb.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public String getTag() {
        return this.zzTb.getTag();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getTargetRequestCode() {
        return this.zzTb.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getUserVisibleHint() {
        return this.zzTb.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd getView() {
        return zze.zzt(this.zzTb.getView());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isAdded() {
        return this.zzTb.isAdded();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isDetached() {
        return this.zzTb.isDetached();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isHidden() {
        return this.zzTb.isHidden();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isInLayout() {
        return this.zzTb.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isRemoving() {
        return this.zzTb.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isResumed() {
        return this.zzTb.isResumed();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isVisible() {
        return this.zzTb.isVisible();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setHasOptionsMenu(boolean z) {
        this.zzTb.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setMenuVisibility(boolean z) {
        this.zzTb.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setRetainInstance(boolean z) {
        this.zzTb.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setUserVisibleHint(boolean z) {
        this.zzTb.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivity(Intent intent) {
        this.zzTb.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivityForResult(Intent intent, int i) {
        this.zzTb.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zze(zzd zzdVar) {
        this.zzTb.registerForContextMenu((View) zze.zzg(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzf(zzd zzdVar) {
        this.zzTb.unregisterForContextMenu((View) zze.zzg(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzov() {
        return zze.zzt(this.zzTb.getActivity());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzow() {
        return zza(this.zzTb.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzox() {
        return zze.zzt(this.zzTb.getResources());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzoy() {
        return zza(this.zzTb.getTargetFragment());
    }
}
