package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.widget.ImageView;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.zzu;
import com.google.android.gms.internal.zzhd;
import com.google.android.gms.internal.zzhe;
import com.google.android.gms.internal.zzhf;
import com.google.android.gms.internal.zzhg;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zza {
    final C0070zza zzSg;
    protected int zzSi;
    protected ImageManager.OnImageLoadedListener zzSk;
    protected int zzSo;
    protected int zzSh = 0;
    protected boolean zzSj = false;
    private boolean zzSl = true;
    private boolean zzSm = false;
    private boolean zzSn = true;

    /* JADX INFO: renamed from: com.google.android.gms.common.images.zza$zza, reason: collision with other inner class name */
    final class C0070zza {
        public final Uri uri;

        public C0070zza(Uri uri) {
            this.uri = uri;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0070zza)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            return zzu.equal(((C0070zza) obj).uri, this.uri);
        }

        public int hashCode() {
            return zzu.hashCode(this.uri);
        }
    }

    public final class zzb extends zza {
        private WeakReference<ImageView> zzSp;

        public zzb(ImageView imageView, int i) {
            super(null, i);
            com.google.android.gms.common.internal.zzb.zzn(imageView);
            this.zzSp = new WeakReference<>(imageView);
        }

        public zzb(ImageView imageView, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzn(imageView);
            this.zzSp = new WeakReference<>(imageView);
        }

        private void zza(ImageView imageView, Drawable drawable, boolean z, boolean z2, boolean z3) {
            boolean z4 = (z2 || z3) ? false : true;
            if (z4 && (imageView instanceof zzhf)) {
                int iZzlC = ((zzhf) imageView).zzlC();
                if (this.zzSi != 0 && iZzlC == this.zzSi) {
                    return;
                }
            }
            boolean zZzb = zzb(z, z2);
            Drawable drawableNewDrawable = (!this.zzSj || drawable == null) ? drawable : drawable.getConstantState().newDrawable();
            if (zZzb) {
                drawableNewDrawable = zza(imageView.getDrawable(), drawableNewDrawable);
            }
            imageView.setImageDrawable(drawableNewDrawable);
            if (imageView instanceof zzhf) {
                zzhf zzhfVar = (zzhf) imageView;
                zzhfVar.zzi(z3 ? this.zzSg.uri : null);
                zzhfVar.zzaK(z4 ? this.zzSi : 0);
            }
            if (zZzb) {
                ((zzhd) drawableNewDrawable).startTransition(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzb)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ImageView imageView = this.zzSp.get();
            ImageView imageView2 = ((zzb) obj).zzSp.get();
            return (imageView2 == null || imageView == null || !zzu.equal(imageView2, imageView)) ? false : true;
        }

        public int hashCode() {
            return 0;
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageView imageView = this.zzSp.get();
            if (imageView != null) {
                zza(imageView, drawable, z, z2, z3);
            }
        }
    }

    public final class zzc extends zza {
        private WeakReference<ImageManager.OnImageLoadedListener> zzSq;

        public zzc(ImageManager.OnImageLoadedListener onImageLoadedListener, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzn(onImageLoadedListener);
            this.zzSq = new WeakReference<>(onImageLoadedListener);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzc)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzc zzcVar = (zzc) obj;
            ImageManager.OnImageLoadedListener onImageLoadedListener = this.zzSq.get();
            ImageManager.OnImageLoadedListener onImageLoadedListener2 = zzcVar.zzSq.get();
            return onImageLoadedListener2 != null && onImageLoadedListener != null && zzu.equal(onImageLoadedListener2, onImageLoadedListener) && zzu.equal(zzcVar.zzSg, this.zzSg);
        }

        public int hashCode() {
            return zzu.hashCode(this.zzSg);
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageManager.OnImageLoadedListener onImageLoadedListener;
            if (z2 || (onImageLoadedListener = this.zzSq.get()) == null) {
                return;
            }
            onImageLoadedListener.onImageLoaded(this.zzSg.uri, drawable, z3);
        }
    }

    public zza(Uri uri, int i) {
        this.zzSi = 0;
        this.zzSg = new C0070zza(uri);
        this.zzSi = i;
    }

    private Drawable zza(Context context, zzhg zzhgVar, int i) {
        Resources resources = context.getResources();
        if (this.zzSo <= 0) {
            return resources.getDrawable(i);
        }
        zzhg.zza zzaVar = new zzhg.zza(i, this.zzSo);
        Drawable drawable = zzhgVar.get(zzaVar);
        if (drawable != null) {
            return drawable;
        }
        Drawable drawable2 = resources.getDrawable(i);
        if ((this.zzSo & 1) != 0) {
            drawable2 = zza(resources, drawable2);
        }
        zzhgVar.put(zzaVar, drawable2);
        return drawable2;
    }

    protected Drawable zza(Resources resources, Drawable drawable) {
        return zzhe.zza(resources, drawable);
    }

    protected zzhd zza(Drawable drawable, Drawable drawable2) {
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof zzhd) {
            drawable = ((zzhd) drawable).zzlA();
        }
        return new zzhd(drawable, drawable2);
    }

    void zza(Context context, Bitmap bitmap, boolean z) {
        com.google.android.gms.common.internal.zzb.zzn(bitmap);
        if ((this.zzSo & 1) != 0) {
            bitmap = zzhe.zza(bitmap);
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        if (this.zzSk != null) {
            this.zzSk.onImageLoaded(this.zzSg.uri, bitmapDrawable, true);
        }
        zza(bitmapDrawable, z, false, true);
    }

    void zza(Context context, zzhg zzhgVar) {
        if (this.zzSn) {
            zza(this.zzSh != 0 ? zza(context, zzhgVar, this.zzSh) : null, false, true, false);
        }
    }

    void zza(Context context, zzhg zzhgVar, boolean z) {
        Drawable drawableZza = this.zzSi != 0 ? zza(context, zzhgVar, this.zzSi) : null;
        if (this.zzSk != null) {
            this.zzSk.onImageLoaded(this.zzSg.uri, drawableZza, false);
        }
        zza(drawableZza, z, false, false);
    }

    protected abstract void zza(Drawable drawable, boolean z, boolean z2, boolean z3);

    public void zzaI(int i) {
        this.zzSi = i;
    }

    protected boolean zzb(boolean z, boolean z2) {
        return this.zzSl && !z2 && (!z || this.zzSm);
    }
}
