package com.getbase.floatingactionbutton;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.shapes.Shape;

/* JADX INFO: compiled from: AddFloatingActionButton.java */
/* JADX INFO: loaded from: classes2.dex */
class b extends Shape {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ float f3115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ float f3116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ float f3117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ float f3118d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ a f3119e;

    b(a aVar, float f2, float f3, float f4, float f5) {
        this.f3119e = aVar;
        this.f3115a = f2;
        this.f3116b = f3;
        this.f3117c = f4;
        this.f3118d = f5;
    }

    @Override // android.graphics.drawable.shapes.Shape
    public void draw(Canvas canvas, Paint paint) {
        canvas.drawRect(this.f3115a, this.f3116b - this.f3117c, this.f3118d - this.f3115a, this.f3117c + this.f3116b, paint);
        canvas.drawRect(this.f3116b - this.f3117c, this.f3115a, this.f3117c + this.f3116b, this.f3118d - this.f3115a, paint);
    }
}
