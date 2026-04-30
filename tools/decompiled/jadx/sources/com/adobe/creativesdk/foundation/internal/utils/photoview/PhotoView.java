package com.adobe.creativesdk.foundation.internal.utils.photoview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher;

/* JADX INFO: loaded from: classes.dex */
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

    public PhotoViewAttacher getAttacher() {
        return this.mAttacher;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setPhotoViewRotation(float f2) {
        this.mAttacher.setRotationTo(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setRotationTo(float f2) {
        this.mAttacher.setRotationTo(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setRotationBy(float f2) {
        this.mAttacher.setRotationBy(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public boolean canZoom() {
        return this.mAttacher.canZoom();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public RectF getDisplayRect() {
        return this.mAttacher.getDisplayRect();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public Matrix getDisplayMatrix() {
        return this.mAttacher.getDrawMatrix();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public boolean setDisplayMatrix(Matrix matrix) {
        return this.mAttacher.setDisplayMatrix(matrix);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public float getMinScale() {
        return getMinimumScale();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public float getMinimumScale() {
        return this.mAttacher.getMinimumScale();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public float getMidScale() {
        return getMediumScale();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public float getMediumScale() {
        return this.mAttacher.getMediumScale();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public float getMaxScale() {
        return getMaximumScale();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public float getMaximumScale() {
        return this.mAttacher.getMaximumScale();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public float getScale() {
        return this.mAttacher.getScale();
    }

    @Override // android.widget.ImageView, com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public ImageView.ScaleType getScaleType() {
        return this.mAttacher.getScaleType();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setAllowParentInterceptOnEdge(boolean z) {
        this.mAttacher.setAllowParentInterceptOnEdge(z);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public void setMinScale(float f2) {
        setMinimumScale(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setMinimumScale(float f2) {
        this.mAttacher.setMinimumScale(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public void setMidScale(float f2) {
        setMediumScale(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setMediumScale(float f2) {
        this.mAttacher.setMediumScale(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public void setMaxScale(float f2) {
        setMaximumScale(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setMaximumScale(float f2) {
        this.mAttacher.setMaximumScale(f2);
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

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnMatrixChangeListener(PhotoViewAttacher.OnMatrixChangedListener onMatrixChangedListener) {
        this.mAttacher.setOnMatrixChangeListener(onMatrixChangedListener);
    }

    @Override // android.view.View, com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mAttacher.setOnLongClickListener(onLongClickListener);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnPhotoTapListener(PhotoViewAttacher.OnPhotoTapListener onPhotoTapListener) {
        this.mAttacher.setOnPhotoTapListener(onPhotoTapListener);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public PhotoViewAttacher.OnPhotoTapListener getOnPhotoTapListener() {
        return this.mAttacher.getOnPhotoTapListener();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnViewTapListener(PhotoViewAttacher.OnViewTapListener onViewTapListener) {
        this.mAttacher.setOnViewTapListener(onViewTapListener);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public PhotoViewAttacher.OnViewTapListener getOnViewTapListener() {
        return this.mAttacher.getOnViewTapListener();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setScale(float f2) {
        this.mAttacher.setScale(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setScale(float f2, boolean z) {
        this.mAttacher.setScale(f2, z);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setScale(float f2, float f3, float f4, boolean z) {
        this.mAttacher.setScale(f2, f3, f4, z);
    }

    @Override // android.widget.ImageView, com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.mAttacher != null) {
            this.mAttacher.setScaleType(scaleType);
        } else {
            this.mPendingScaleType = scaleType;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setZoomable(boolean z) {
        this.mAttacher.setZoomable(z);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public Bitmap getVisibleRectangleBitmap() {
        return this.mAttacher.getVisibleRectangleBitmap();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setZoomTransitionDuration(int i) {
        this.mAttacher.setZoomTransitionDuration(i);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public IPhotoView getIPhotoViewImplementation() {
        return this.mAttacher;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.mAttacher.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        this.mAttacher.cleanup();
        super.onDetachedFromWindow();
    }
}
