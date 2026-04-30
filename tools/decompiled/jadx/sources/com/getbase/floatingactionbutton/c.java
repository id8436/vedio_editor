package com.getbase.floatingactionbutton;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;

/* JADX INFO: compiled from: FloatingActionButton.java */
/* JADX INFO: loaded from: classes2.dex */
class c extends ShapeDrawable.ShaderFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f3120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f3121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ int f3122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ int f3123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ int f3124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ FloatingActionButton f3125f;

    c(FloatingActionButton floatingActionButton, int i, int i2, int i3, int i4, int i5) {
        this.f3125f = floatingActionButton;
        this.f3120a = i;
        this.f3121b = i2;
        this.f3122c = i3;
        this.f3123d = i4;
        this.f3124e = i5;
    }

    @Override // android.graphics.drawable.ShapeDrawable.ShaderFactory
    public Shader resize(int i, int i2) {
        return new LinearGradient(i / 2, 0.0f, i / 2, i2, new int[]{this.f3120a, this.f3121b, this.f3122c, this.f3123d, this.f3124e}, new float[]{0.0f, 0.2f, 0.5f, 0.8f, 1.0f}, Shader.TileMode.CLAMP);
    }
}
