package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.common.images.zza;
import com.google.android.gms.internal.zzhg;
import com.google.android.gms.internal.zzhp;
import com.google.android.gms.internal.zzic;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes3.dex */
public final class ImageManager {
    private static final Object zzRR = new Object();
    private static HashSet<Uri> zzRS = new HashSet<>();
    private static ImageManager zzRT;
    private static ImageManager zzRU;
    private final Context mContext;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService zzRV = Executors.newFixedThreadPool(4);
    private final zzb zzRW;
    private final zzhg zzRX;
    private final Map<com.google.android.gms.common.images.zza, ImageReceiver> zzRY;
    private final Map<Uri, ImageReceiver> zzRZ;
    private final Map<Uri, Long> zzSa;

    final class ImageReceiver extends ResultReceiver {
        private final Uri mUri;
        private final ArrayList<com.google.android.gms.common.images.zza> zzSb;

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.mUri = uri;
            this.zzSb = new ArrayList<>();
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.zzRV.execute(ImageManager.this.new zzc(this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public void zzb(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzb.zzbI("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zzSb.add(zzaVar);
        }

        public void zzc(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzb.zzbI("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zzSb.remove(zzaVar);
        }

        public void zzlz() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.mContext.sendBroadcast(intent);
        }
    }

    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    final class zza {
        static int zza(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    final class zzb extends zzhp<zza.C0070zza, Bitmap> {
        public zzb(Context context) {
            super(zzT(context));
        }

        private static int zzT(Context context) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            return (int) (((((context.getApplicationInfo().flags & 1048576) != 0) && zzic.zzne()) ? zza.zza(activityManager) : activityManager.getMemoryClass()) * 1048576 * 0.33f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzhp
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public int sizeOf(zza.C0070zza c0070zza, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzhp
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void entryRemoved(boolean z, zza.C0070zza c0070zza, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, c0070zza, bitmap, bitmap2);
        }
    }

    final class zzc implements Runnable {
        private final Uri mUri;
        private final ParcelFileDescriptor zzSd;

        public zzc(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.mUri = uri;
            this.zzSd = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzbJ("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            boolean z = false;
            Bitmap bitmapDecodeFileDescriptor = null;
            if (this.zzSd != null) {
                try {
                    bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(this.zzSd.getFileDescriptor());
                } catch (OutOfMemoryError e2) {
                    Log.e("ImageManager", "OOM while loading bitmap for uri: " + this.mUri, e2);
                    z = true;
                }
                try {
                    this.zzSd.close();
                } catch (IOException e3) {
                    Log.e("ImageManager", "closed failed", e3);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(ImageManager.this.new zzf(this.mUri, bitmapDecodeFileDescriptor, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e4) {
                Log.w("ImageManager", "Latch interrupted while posting " + this.mUri);
            }
        }
    }

    final class zzd implements Runnable {
        private final com.google.android.gms.common.images.zza zzSe;

        public zzd(com.google.android.gms.common.images.zza zzaVar) {
            this.zzSe = zzaVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzbI("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zzRY.get(this.zzSe);
            if (imageReceiver != null) {
                ImageManager.this.zzRY.remove(this.zzSe);
                imageReceiver.zzc(this.zzSe);
            }
            zza.C0070zza c0070zza = this.zzSe.zzSg;
            if (c0070zza.uri == null) {
                this.zzSe.zza(ImageManager.this.mContext, ImageManager.this.zzRX, true);
                return;
            }
            Bitmap bitmapZza = ImageManager.this.zza(c0070zza);
            if (bitmapZza != null) {
                this.zzSe.zza(ImageManager.this.mContext, bitmapZza, true);
                return;
            }
            Long l = (Long) ImageManager.this.zzSa.get(c0070zza.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < DateUtils.MILLIS_PER_HOUR) {
                    this.zzSe.zza(ImageManager.this.mContext, ImageManager.this.zzRX, true);
                    return;
                }
                ImageManager.this.zzSa.remove(c0070zza.uri);
            }
            this.zzSe.zza(ImageManager.this.mContext, ImageManager.this.zzRX);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.zzRZ.get(c0070zza.uri);
            if (imageReceiver2 == null) {
                imageReceiver2 = ImageManager.this.new ImageReceiver(c0070zza.uri);
                ImageManager.this.zzRZ.put(c0070zza.uri, imageReceiver2);
            }
            imageReceiver2.zzb(this.zzSe);
            if (!(this.zzSe instanceof zza.zzc)) {
                ImageManager.this.zzRY.put(this.zzSe, imageReceiver2);
            }
            synchronized (ImageManager.zzRR) {
                if (!ImageManager.zzRS.contains(c0070zza.uri)) {
                    ImageManager.zzRS.add(c0070zza.uri);
                    imageReceiver2.zzlz();
                }
            }
        }
    }

    final class zze implements ComponentCallbacks2 {
        private final zzb zzRW;

        public zze(zzb zzbVar) {
            this.zzRW = zzbVar;
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            this.zzRW.evictAll();
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i >= 60) {
                this.zzRW.evictAll();
            } else if (i >= 20) {
                this.zzRW.trimToSize(this.zzRW.size() / 2);
            }
        }
    }

    final class zzf implements Runnable {
        private final Bitmap mBitmap;
        private final Uri mUri;
        private boolean zzSf;
        private final CountDownLatch zzns;

        public zzf(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.zzSf = z;
            this.zzns = countDownLatch;
        }

        private void zza(ImageReceiver imageReceiver, boolean z) {
            ArrayList arrayList = imageReceiver.zzSb;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                com.google.android.gms.common.images.zza zzaVar = (com.google.android.gms.common.images.zza) arrayList.get(i);
                if (z) {
                    zzaVar.zza(ImageManager.this.mContext, this.mBitmap, false);
                } else {
                    ImageManager.this.zzSa.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                    zzaVar.zza(ImageManager.this.mContext, ImageManager.this.zzRX, false);
                }
                if (!(zzaVar instanceof zza.zzc)) {
                    ImageManager.this.zzRY.remove(zzaVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzbI("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (ImageManager.this.zzRW != null) {
                if (this.zzSf) {
                    ImageManager.this.zzRW.evictAll();
                    System.gc();
                    this.zzSf = false;
                    ImageManager.this.mHandler.post(this);
                    return;
                }
                if (z) {
                    ImageManager.this.zzRW.put(new zza.C0070zza(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zzRZ.remove(this.mUri);
            if (imageReceiver != null) {
                zza(imageReceiver, z);
            }
            this.zzns.countDown();
            synchronized (ImageManager.zzRR) {
                ImageManager.zzRS.remove(this.mUri);
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
        if (z) {
            this.zzRW = new zzb(this.mContext);
            if (zzic.zznh()) {
                zzlw();
            }
        } else {
            this.zzRW = null;
        }
        this.zzRX = new zzhg();
        this.zzRY = new HashMap();
        this.zzRZ = new HashMap();
        this.zzSa = new HashMap();
    }

    public static ImageManager create(Context context) {
        return zzb(context, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap zza(zza.C0070zza c0070zza) {
        if (this.zzRW == null) {
            return null;
        }
        return this.zzRW.get(c0070zza);
    }

    public static ImageManager zzb(Context context, boolean z) {
        if (z) {
            if (zzRU == null) {
                zzRU = new ImageManager(context, true);
            }
            return zzRU;
        }
        if (zzRT == null) {
            zzRT = new ImageManager(context, false);
        }
        return zzRT;
    }

    private void zzlw() {
        this.mContext.registerComponentCallbacks(new zze(this.zzRW));
    }

    public void loadImage(ImageView imageView, int i) {
        zza(new zza.zzb(imageView, i));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zza(new zza.zzb(imageView, uri));
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        zza.zzb zzbVar = new zza.zzb(imageView, uri);
        zzbVar.zzaI(i);
        zza(zzbVar);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zza(new zza.zzc(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zza.zzc zzcVar = new zza.zzc(onImageLoadedListener, uri);
        zzcVar.zzaI(i);
        zza(zzcVar);
    }

    public void zza(com.google.android.gms.common.images.zza zzaVar) {
        com.google.android.gms.common.internal.zzb.zzbI("ImageManager.loadImage() must be called in the main thread");
        new zzd(zzaVar).run();
    }
}
