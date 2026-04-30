package com.behance.sdk.senab.photoview;

import android.content.Context;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.behance.sdk.senab.photoview.PhotoViewAttacher;

/* JADX INFO: loaded from: classes2.dex */
public class PhotoView extends ImageView implements IPhotoView {
    private final PhotoViewAttacher mAttacher;
    private ImageView.ScaleType mPendingScaleType;

    public PhotoView(Context context) {
        this(context, null);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        this.mAttacher = new PhotoViewAttacher(this);
        if (this.mPendingScaleType != null) {
            setScaleType(this.mPendingScaleType);
            this.mPendingScaleType = null;
        }
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public boolean canZoom() {
        return this.mAttacher.canZoom();
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public RectF getDisplayRect() {
        return this.mAttacher.getDisplayRect();
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public float getMinScale() {
        return this.mAttacher.getMinScale();
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public float getMidScale() {
        return this.mAttacher.getMidScale();
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public float getMaxScale() {
        return this.mAttacher.getMaxScale();
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public float getScale() {
        return this.mAttacher.getScale();
    }

    @Override // android.widget.ImageView, com.behance.sdk.senab.photoview.IPhotoView
    public ImageView.ScaleType getScaleType() {
        return this.mAttacher.getScaleType();
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setAllowParentInterceptOnEdge(boolean z) {
        this.mAttacher.setAllowParentInterceptOnEdge(z);
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setMinScale(float f2) {
        this.mAttacher.setMinScale(f2);
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setMidScale(float f2) {
        this.mAttacher.setMidScale(f2);
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setMaxScale(float f2) {
        this.mAttacher.setMaxScale(f2);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (this.mAttacher != null) {
            this.mAttacher.update();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        if (this.mAttacher != null) {
            this.mAttacher.update();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        if (this.mAttacher != null) {
            this.mAttacher.update();
        }
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setOnMatrixChangeListener(PhotoViewAttacher.OnMatrixChangedListener onMatrixChangedListener) {
        this.mAttacher.setOnMatrixChangeListener(onMatrixChangedListener);
    }

    @Override // android.view.View, com.behance.sdk.senab.photoview.IPhotoView
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mAttacher.setOnLongClickListener(onLongClickListener);
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setOnPhotoTapListener(PhotoViewAttacher.OnPhotoTapListener onPhotoTapListener) {
        this.mAttacher.setOnPhotoTapListener(onPhotoTapListener);
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setOnViewTapListener(PhotoViewAttacher.OnViewTapListener onViewTapListener) {
        this.mAttacher.setOnViewTapListener(onViewTapListener);
    }

    @Override // android.widget.ImageView, com.behance.sdk.senab.photoview.IPhotoView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.mAttacher != null) {
            this.mAttacher.setScaleType(scaleType);
        } else {
            this.mPendingScaleType = scaleType;
        }
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setZoomable(boolean z) {
        this.mAttacher.setZoomable(z);
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void zoomTo(float f2, float f3, float f4) {
        this.mAttacher.zoomTo(f2, f3, f4);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        this.mAttacher.cleanup();
        super.onDetachedFromWindow();
    }
}
