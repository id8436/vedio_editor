package com.e.a.a.a.a;

import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import com.e.a.a.a.a.a.i;
import com.e.a.a.a.a.a.j;

/* JADX INFO: compiled from: GeneralItemAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f1568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.e.a.a.a.a.a.f f1569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.e.a.a.a.a.a.h f1570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f1571e;

    protected abstract void c();

    protected c() {
        g();
    }

    private void g() {
        c();
        if (this.f1568b == null || this.f1569c == null || this.f1570d == null || this.f1571e == null) {
            throw new IllegalStateException("setup incomplete");
        }
    }

    @Override // android.support.v7.widget.RecyclerView.ItemAnimator
    public void runPendingAnimations() {
        if (d()) {
            e();
        }
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public boolean animateRemove(RecyclerView.ViewHolder viewHolder) {
        if (this.f1567a) {
            Log.d("ARVGeneralItemAnimator", "animateRemove(id = " + viewHolder.getItemId() + ", position = " + viewHolder.getLayoutPosition() + ")");
        }
        return this.f1568b.a(viewHolder);
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public boolean animateAdd(RecyclerView.ViewHolder viewHolder) {
        if (this.f1567a) {
            Log.d("ARVGeneralItemAnimator", "animateAdd(id = " + viewHolder.getItemId() + ", position = " + viewHolder.getLayoutPosition() + ")");
        }
        return this.f1569c.a(viewHolder);
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public boolean animateMove(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        if (this.f1567a) {
            Log.d("ARVGeneralItemAnimator", "animateMove(id = " + viewHolder.getItemId() + ", position = " + viewHolder.getLayoutPosition() + ", fromX = " + i + ", fromY = " + i2 + ", toX = " + i3 + ", toY = " + i4 + ")");
        }
        return this.f1571e.a(viewHolder, i, i2, i3, i4);
    }

    @Override // android.support.v7.widget.SimpleItemAnimator
    public boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        if (viewHolder == viewHolder2) {
            return this.f1571e.a(viewHolder, i, i2, i3, i4);
        }
        if (this.f1567a) {
            Log.d("ARVGeneralItemAnimator", "animateChange(old.id = " + (viewHolder != null ? Long.toString(viewHolder.getItemId()) : "-") + ", old.position = " + (viewHolder != null ? Long.toString(viewHolder.getLayoutPosition()) : "-") + ", new.id = " + (viewHolder2 != null ? Long.toString(viewHolder2.getItemId()) : "-") + ", new.position = " + (viewHolder2 != null ? Long.toString(viewHolder2.getLayoutPosition()) : "-") + ", fromX = " + i + ", fromY = " + i2 + ", toX = " + i3 + ", toY = " + i4 + ")");
        }
        return this.f1570d.a(viewHolder, viewHolder2, i, i2, i3, i4);
    }

    protected void g(RecyclerView.ViewHolder viewHolder) {
        ViewCompat.animate(viewHolder.itemView).cancel();
    }

    @Override // android.support.v7.widget.RecyclerView.ItemAnimator
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        g(viewHolder);
        this.f1571e.c(viewHolder);
        this.f1570d.c(viewHolder);
        this.f1568b.c(viewHolder);
        this.f1569c.c(viewHolder);
        this.f1571e.d(viewHolder);
        this.f1570d.d(viewHolder);
        this.f1568b.d(viewHolder);
        this.f1569c.d(viewHolder);
        if (this.f1568b.b(viewHolder) && this.f1567a) {
            throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [remove]");
        }
        if (this.f1569c.b(viewHolder) && this.f1567a) {
            throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [add]");
        }
        if (this.f1570d.b(viewHolder) && this.f1567a) {
            throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [change]");
        }
        if (this.f1571e.b(viewHolder) && this.f1567a) {
            throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [move]");
        }
        a();
    }

    @Override // android.support.v7.widget.RecyclerView.ItemAnimator
    public boolean isRunning() {
        return this.f1568b.c() || this.f1569c.c() || this.f1570d.c() || this.f1571e.c();
    }

    @Override // android.support.v7.widget.RecyclerView.ItemAnimator
    public void endAnimations() {
        this.f1571e.e();
        this.f1568b.e();
        this.f1569c.e();
        this.f1570d.e();
        if (isRunning()) {
            this.f1571e.f();
            this.f1569c.f();
            this.f1570d.f();
            this.f1568b.d();
            this.f1571e.d();
            this.f1569c.d();
            this.f1570d.d();
            dispatchAnimationsFinished();
        }
    }

    @Override // com.e.a.a.a.a.a
    public boolean b() {
        return this.f1567a;
    }

    @Override // com.e.a.a.a.a.a
    public boolean a() {
        if (this.f1567a && !isRunning()) {
            Log.d("ARVGeneralItemAnimator", "dispatchFinishedWhenDone()");
        }
        return super.a();
    }

    protected boolean d() {
        return this.f1568b.b() || this.f1571e.b() || this.f1570d.b() || this.f1569c.b();
    }

    protected void a(j jVar) {
        this.f1568b = jVar;
    }

    protected void a(com.e.a.a.a.a.a.f fVar) {
        this.f1569c = fVar;
    }

    protected void a(com.e.a.a.a.a.a.h hVar) {
        this.f1570d = hVar;
    }

    protected void a(i iVar) {
        this.f1571e = iVar;
    }

    protected void e() {
        f();
    }

    protected void f() {
        boolean zB = this.f1568b.b();
        boolean zB2 = this.f1571e.b();
        boolean zB3 = this.f1570d.b();
        boolean zB4 = this.f1569c.b();
        long removeDuration = zB ? getRemoveDuration() : 0L;
        long moveDuration = zB2 ? getMoveDuration() : 0L;
        long changeDuration = zB3 ? getChangeDuration() : 0L;
        if (zB) {
            this.f1568b.a(false, 0L);
        }
        if (zB2) {
            this.f1571e.a(zB, removeDuration);
        }
        if (zB3) {
            this.f1570d.a(zB, removeDuration);
        }
        if (zB4) {
            boolean z = zB || zB2 || zB3;
            long jMax = Math.max(moveDuration, changeDuration) + removeDuration;
            if (!z) {
                jMax = 0;
            }
            this.f1569c.a(z, jMax);
        }
    }
}
