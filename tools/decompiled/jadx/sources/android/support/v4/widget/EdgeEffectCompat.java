package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.widget.EdgeEffect;

/* JADX INFO: loaded from: classes.dex */
public final class EdgeEffectCompat {
    private static final EdgeEffectBaseImpl IMPL;
    private EdgeEffect mEdgeEffect;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            IMPL = new EdgeEffectApi21Impl();
        } else {
            IMPL = new EdgeEffectBaseImpl();
        }
    }

    class EdgeEffectBaseImpl {
        EdgeEffectBaseImpl() {
        }

        public void onPull(EdgeEffect edgeEffect, float f2, float f3) {
            edgeEffect.onPull(f2);
        }
    }

    @RequiresApi(21)
    class EdgeEffectApi21Impl extends EdgeEffectBaseImpl {
        EdgeEffectApi21Impl() {
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.EdgeEffectBaseImpl
        public void onPull(EdgeEffect edgeEffect, float f2, float f3) {
            edgeEffect.onPull(f2, f3);
        }
    }

    @Deprecated
    public EdgeEffectCompat(Context context) {
        this.mEdgeEffect = new EdgeEffect(context);
    }

    @Deprecated
    public void setSize(int i, int i2) {
        this.mEdgeEffect.setSize(i, i2);
    }

    @Deprecated
    public boolean isFinished() {
        return this.mEdgeEffect.isFinished();
    }

    @Deprecated
    public void finish() {
        this.mEdgeEffect.finish();
    }

    @Deprecated
    public boolean onPull(float f2) {
        this.mEdgeEffect.onPull(f2);
        return true;
    }

    @Deprecated
    public boolean onPull(float f2, float f3) {
        IMPL.onPull(this.mEdgeEffect, f2, f3);
        return true;
    }

    public static void onPull(EdgeEffect edgeEffect, float f2, float f3) {
        IMPL.onPull(edgeEffect, f2, f3);
    }

    @Deprecated
    public boolean onRelease() {
        this.mEdgeEffect.onRelease();
        return this.mEdgeEffect.isFinished();
    }

    @Deprecated
    public boolean onAbsorb(int i) {
        this.mEdgeEffect.onAbsorb(i);
        return true;
    }

    @Deprecated
    public boolean draw(Canvas canvas) {
        return this.mEdgeEffect.draw(canvas);
    }
}
