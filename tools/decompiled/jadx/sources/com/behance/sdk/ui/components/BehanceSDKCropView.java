package com.behance.sdk.ui.components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.b.a.h;
import com.b.a.h.a.d;
import com.b.a.h.b.g;
import com.behance.sdk.listeners.BehanceSDKImageLoadListener;
import com.github.chrisbanes.photoview.PhotoView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCropView extends RelativeLayout {
    private static final float DEFAULT_ASPECT_RATIO = 1.278481f;
    private float aspectRatio;
    private Bitmap bitmap;
    private BehanceSDKCropForegroundView cropForegroundView;
    private PhotoView photoView;

    public BehanceSDKCropView(Context context) {
        super(context);
        this.aspectRatio = DEFAULT_ASPECT_RATIO;
        init();
    }

    public BehanceSDKCropView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aspectRatio = DEFAULT_ASPECT_RATIO;
        init();
    }

    public BehanceSDKCropView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.aspectRatio = DEFAULT_ASPECT_RATIO;
        init();
    }

    private void init() {
        setBackgroundColor(-1);
        this.photoView = new PhotoView(getContext());
        this.photoView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.cropForegroundView = new BehanceSDKCropForegroundView(getContext());
        this.cropForegroundView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.cropForegroundView.setAspectRatio(this.aspectRatio);
        addView(this.photoView);
        addView(this.cropForegroundView);
        this.cropForegroundView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.components.BehanceSDKCropView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                BehanceSDKCropView.this.photoView.setPadding(BehanceSDKCropView.this.cropForegroundView.getPadWidth(), BehanceSDKCropView.this.cropForegroundView.getPadHeight(), BehanceSDKCropView.this.cropForegroundView.getPadWidth(), BehanceSDKCropView.this.cropForegroundView.getPadHeight());
                BehanceSDKCropView.this.setScales();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScales() {
        float f2;
        if (this.bitmap != null) {
            float width = (1.0f * this.bitmap.getWidth()) / this.bitmap.getHeight();
            if (this.cropForegroundView.getPadWidth() == 0) {
                if (width < this.aspectRatio) {
                    f2 = this.aspectRatio / width;
                } else {
                    f2 = (width / this.aspectRatio) * 1.001f;
                }
            } else if (width < this.aspectRatio) {
                f2 = (this.aspectRatio / width) * 1.001f;
            } else {
                f2 = width / this.aspectRatio;
            }
            this.photoView.a(f2, 1.75f * f2, 3.0f * f2);
            if (this.photoView.getScale() < f2) {
                this.photoView.setScale(f2);
            }
        }
    }

    @Nullable
    public Bitmap crop() {
        if (this.bitmap == null) {
            return null;
        }
        RectF displayRect = this.photoView.getDisplayRect();
        float width = this.bitmap.getWidth() / (displayRect.right - displayRect.left);
        int i = (int) ((-displayRect.left) * width);
        int width2 = (int) ((this.bitmap.getWidth() - (width * ((displayRect.right - this.photoView.getWidth()) + (this.cropForegroundView.getPadWidth() * 2)))) - i);
        float height = this.bitmap.getHeight() / (displayRect.bottom - displayRect.top);
        int i2 = (int) ((-displayRect.top) * height);
        return Bitmap.createBitmap(this.bitmap, Math.max(0, i), Math.max(0, i2), Math.min(this.bitmap.getWidth(), width2), Math.min(this.bitmap.getHeight(), (int) ((this.bitmap.getHeight() - (((displayRect.bottom - this.photoView.getHeight()) + (this.cropForegroundView.getPadHeight() * 2)) * height)) - i2)));
    }

    public void setImageUri(Uri uri) {
        h.b(getContext()).a(uri).h().a(new g<Bitmap>() { // from class: com.behance.sdk.ui.components.BehanceSDKCropView.2
            @Override // com.b.a.h.b.k
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, d dVar) {
                onResourceReady((Bitmap) obj, (d<? super Bitmap>) dVar);
            }

            public void onResourceReady(Bitmap bitmap, d<? super Bitmap> dVar) {
                BehanceSDKCropView.this.setImageBitmap(bitmap);
            }
        });
    }

    public void setImageUri(Uri uri, final BehanceSDKImageLoadListener behanceSDKImageLoadListener) {
        h.b(getContext()).a(uri).h().a(new g<Bitmap>() { // from class: com.behance.sdk.ui.components.BehanceSDKCropView.3
            @Override // com.b.a.h.b.k
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, d dVar) {
                onResourceReady((Bitmap) obj, (d<? super Bitmap>) dVar);
            }

            public void onResourceReady(Bitmap bitmap, d<? super Bitmap> dVar) {
                BehanceSDKCropView.this.setImageBitmap(bitmap);
                behanceSDKImageLoadListener.onImageLoadComplete();
            }
        });
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.bitmap = bitmap;
        this.photoView.setImageBitmap(this.bitmap);
        setScales();
    }

    public void setAspectRatio(float f2) {
        this.aspectRatio = f2;
        this.cropForegroundView.setAspectRatio(f2);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        this.photoView.setZoomable(z);
    }
}
