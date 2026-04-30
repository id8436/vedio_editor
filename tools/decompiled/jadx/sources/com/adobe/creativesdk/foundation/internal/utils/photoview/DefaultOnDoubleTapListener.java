package com.adobe.creativesdk.foundation.internal.utils.photoview;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultOnDoubleTapListener implements GestureDetector.OnDoubleTapListener {
    private PhotoViewAttacher photoViewAttacher;

    public DefaultOnDoubleTapListener(PhotoViewAttacher photoViewAttacher) {
        setPhotoViewAttacher(photoViewAttacher);
    }

    public void setPhotoViewAttacher(PhotoViewAttacher photoViewAttacher) {
        this.photoViewAttacher = photoViewAttacher;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        RectF displayRect;
        if (this.photoViewAttacher == null) {
            return false;
        }
        ImageView imageView = this.photoViewAttacher.getImageView();
        if (this.photoViewAttacher.getOnPhotoTapListener() != null && (displayRect = this.photoViewAttacher.getDisplayRect()) != null) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (displayRect.contains(x, y)) {
                this.photoViewAttacher.getOnPhotoTapListener().onPhotoTap(imageView, (x - displayRect.left) / displayRect.width(), (y - displayRect.top) / displayRect.height());
                return true;
            }
        }
        if (this.photoViewAttacher.getOnViewTapListener() == null) {
            return false;
        }
        this.photoViewAttacher.getOnViewTapListener().onViewTap(imageView, motionEvent.getX(), motionEvent.getY());
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        float minimumScale;
        if (this.photoViewAttacher == null) {
            return false;
        }
        try {
            float scale = this.photoViewAttacher.getScale();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (scale < this.photoViewAttacher.getMediumScale()) {
                this.photoViewAttacher.setScale(this.photoViewAttacher.getMediumScale(), x, y, true);
                minimumScale = this.photoViewAttacher.getMediumScale();
            } else if (scale >= this.photoViewAttacher.getMediumScale() && scale < this.photoViewAttacher.getMaximumScale()) {
                this.photoViewAttacher.setScale(this.photoViewAttacher.getMaximumScale(), x, y, true);
                minimumScale = this.photoViewAttacher.getMaximumScale();
            } else {
                this.photoViewAttacher.setScale(this.photoViewAttacher.getMinimumScale(), x, y, true);
                minimumScale = this.photoViewAttacher.getMinimumScale();
            }
            IPhotoViewZoomDelegate zoomDelegate = this.photoViewAttacher.getZoomDelegate();
            if (zoomDelegate == null) {
                return true;
            }
            zoomDelegate.signalZoomHandled(minimumScale, x, y);
            return true;
        } catch (ArrayIndexOutOfBoundsException e2) {
            return true;
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }
}
