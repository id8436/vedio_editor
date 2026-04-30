package com.learnncode.mediachooser;

import android.widget.SeekBar;

/* JADX INFO: compiled from: VideoControllerView.java */
/* JADX INFO: loaded from: classes3.dex */
class o implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f3766a;

    o(m mVar) {
        this.f3766a = mVar;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.f3766a.a(3600000);
        this.f3766a.j = true;
        this.f3766a.m.removeMessages(2);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (this.f3766a.f3760c != null && z) {
            this.f3766a.f3760c.a((int) ((((long) this.f3766a.f3760c.c()) * ((long) i)) / 1000));
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.f3766a.j = false;
        this.f3766a.g();
        this.f3766a.d();
        this.f3766a.a(0);
        this.f3766a.m.sendEmptyMessage(2);
    }
}
