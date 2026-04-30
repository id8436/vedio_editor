package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes3.dex */
public final class zzhd extends Drawable implements Drawable.Callback {
    private int mFrom;
    private long zzGX;
    private Drawable zzSA;
    private boolean zzSB;
    private boolean zzSC;
    private boolean zzSD;
    private int zzSE;
    private boolean zzSl;
    private int zzSs;
    private int zzSt;
    private int zzSu;
    private int zzSv;
    private int zzSw;
    private boolean zzSx;
    private zzb zzSy;
    private Drawable zzSz;

    final class zza extends Drawable {
        private static final zza zzSF = new zza();
        private static final C0082zza zzSG = new C0082zza();

        /* JADX INFO: renamed from: com.google.android.gms.internal.zzhd$zza$zza, reason: collision with other inner class name */
        final class C0082zza extends Drawable.ConstantState {
            private C0082zza() {
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public int getChangingConfigurations() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public Drawable newDrawable() {
                return zza.zzSF;
            }
        }

        private zza() {
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
        }

        @Override // android.graphics.drawable.Drawable
        public Drawable.ConstantState getConstantState() {
            return zzSG;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    final class zzb extends Drawable.ConstantState {
        int zzSH;
        int zzSI;

        zzb(zzb zzbVar) {
            if (zzbVar != null) {
                this.zzSH = zzbVar.zzSH;
                this.zzSI = zzbVar.zzSI;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.zzSH;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new zzhd(this);
        }
    }

    public zzhd(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zza.zzSF : drawable;
        this.zzSz = drawable;
        drawable.setCallback(this);
        this.zzSy.zzSI |= drawable.getChangingConfigurations();
        drawable2 = drawable2 == null ? zza.zzSF : drawable2;
        this.zzSA = drawable2;
        drawable2.setCallback(this);
        this.zzSy.zzSI |= drawable2.getChangingConfigurations();
    }

    zzhd(zzb zzbVar) {
        this.zzSs = 0;
        this.zzSu = 255;
        this.zzSw = 0;
        this.zzSl = true;
        this.zzSy = new zzb(zzbVar);
    }

    public boolean canConstantState() {
        if (!this.zzSB) {
            this.zzSC = (this.zzSz.getConstantState() == null || this.zzSA.getConstantState() == null) ? false : true;
            this.zzSB = true;
        }
        return this.zzSC;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z = false;
        switch (this.zzSs) {
            case 1:
                this.zzGX = SystemClock.uptimeMillis();
                this.zzSs = 2;
                break;
            case 2:
                if (this.zzGX >= 0) {
                    float fUptimeMillis = (SystemClock.uptimeMillis() - this.zzGX) / this.zzSv;
                    z = fUptimeMillis >= 1.0f;
                    if (z) {
                        this.zzSs = 0;
                    }
                    this.zzSw = (int) ((Math.min(fUptimeMillis, 1.0f) * (this.zzSt - this.mFrom)) + this.mFrom);
                    break;
                }
            default:
                z = z;
                break;
        }
        int i = this.zzSw;
        boolean z2 = this.zzSl;
        Drawable drawable = this.zzSz;
        Drawable drawable2 = this.zzSA;
        if (z) {
            if (!z2 || i == 0) {
                drawable.draw(canvas);
            }
            if (i == this.zzSu) {
                drawable2.setAlpha(this.zzSu);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.zzSu - i);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.zzSu);
        }
        if (i > 0) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.zzSu);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.zzSy.zzSH | this.zzSy.zzSI;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!canConstantState()) {
            return null;
        }
        this.zzSy.zzSH = getChangingConfigurations();
        return this.zzSy;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.zzSz.getIntrinsicHeight(), this.zzSA.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.zzSz.getIntrinsicWidth(), this.zzSA.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (!this.zzSD) {
            this.zzSE = Drawable.resolveOpacity(this.zzSz.getOpacity(), this.zzSA.getOpacity());
            this.zzSD = true;
        }
        return this.zzSE;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback;
        if (!zzic.zzne() || (callback = getCallback()) == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.zzSx && super.mutate() == this) {
            if (!canConstantState()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.zzSz.mutate();
            this.zzSA.mutate();
            this.zzSx = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.zzSz.setBounds(rect);
        this.zzSA.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback;
        if (!zzic.zzne() || (callback = getCallback()) == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.zzSw == this.zzSu) {
            this.zzSw = i;
        }
        this.zzSu = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.zzSz.setColorFilter(colorFilter);
        this.zzSA.setColorFilter(colorFilter);
    }

    public void startTransition(int i) {
        this.mFrom = 0;
        this.zzSt = this.zzSu;
        this.zzSw = 0;
        this.zzSv = i;
        this.zzSs = 1;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback;
        if (!zzic.zzne() || (callback = getCallback()) == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public Drawable zzlA() {
        return this.zzSA;
    }
}
