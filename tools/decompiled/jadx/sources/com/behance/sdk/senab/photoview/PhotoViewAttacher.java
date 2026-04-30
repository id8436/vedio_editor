package com.behance.sdk.senab.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.behance.sdk.senab.photoview.VersionedGestureDetector;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class PhotoViewAttacher implements GestureDetector.OnDoubleTapListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener, IPhotoView, VersionedGestureDetector.OnGestureListener {
    public static final float DEFAULT_MAX_SCALE = 3.0f;
    public static final float DEFAULT_MID_SCALE = 1.75f;
    public static final float DEFAULT_MIN_SCALE = 0.3f;
    public static final float DEFAULT_NO_SCALE = 1.0f;
    static final int EDGE_BOTH = 2;
    static final int EDGE_LEFT = 0;
    static final int EDGE_NONE = -1;
    static final int EDGE_RIGHT = 1;
    private FlingRunnable mCurrentFlingRunnable;
    private GestureDetector mGestureDetector;
    private WeakReference<ImageView> mImageView;
    private int mIvBottom;
    private int mIvLeft;
    private int mIvRight;
    private int mIvTop;
    private View.OnLongClickListener mLongClickListener;
    private OnMatrixChangedListener mMatrixChangeListener;
    private OnPhotoTapListener mPhotoTapListener;
    private VersionedGestureDetector mScaleDragDetector;
    private OnViewTapListener mViewTapListener;
    private ViewTreeObserver mViewTreeObserver;
    private boolean mZoomEnabled;
    static final String LOG_TAG = "PhotoViewAttacher";
    static final boolean DEBUG = Log.isLoggable(LOG_TAG, 3);
    private float mMinScale = 0.3f;
    private float mMidScale = 1.75f;
    private float mMaxScale = 3.0f;
    private boolean mAllowParentInterceptOnEdge = true;
    private boolean zoomEventLoggedForAnalytics = false;
    private final Matrix mBaseMatrix = new Matrix();
    private final Matrix mDrawMatrix = new Matrix();
    private final Matrix mSuppMatrix = new Matrix();
    private final RectF mDisplayRect = new RectF();
    private final float[] mMatrixValues = new float[9];
    private int mScrollEdge = 2;
    private ImageView.ScaleType mScaleType = ImageView.ScaleType.FIT_CENTER;

    public interface OnMatrixChangedListener {
        void onMatrixChanged(RectF rectF);
    }

    public interface OnPhotoTapListener {
        void onPhotoTap(View view, float f2, float f3);
    }

    public interface OnViewTapListener {
        void onViewTap(View view, float f2, float f3);
    }

    private static void checkZoomLevels(float f2, float f3, float f4) {
        if (f2 >= f3) {
            throw new IllegalArgumentException("MinZoom should be less than MidZoom");
        }
        if (f3 >= f4) {
            throw new IllegalArgumentException("MidZoom should be less than MaxZoom");
        }
    }

    private static boolean hasDrawable(ImageView imageView) {
        return (imageView == null || imageView.getDrawable() == null) ? false : true;
    }

    private static boolean isSupportedScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            return false;
        }
        switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[scaleType.ordinal()]) {
            case 1:
                throw new IllegalArgumentException(scaleType.name() + " is not supported in PhotoView");
            default:
                return true;
        }
    }

    /* JADX INFO: renamed from: com.behance.sdk.senab.photoview.PhotoViewAttacher$2, reason: invalid class name */
    /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType = new int[ImageView.ScaleType.values().length];

        static {
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.MATRIX.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_XY.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    private static void setImageViewScaleTypeMatrix(ImageView imageView) {
        if (imageView != null && !(imageView instanceof PhotoView)) {
            imageView.setScaleType(ImageView.ScaleType.MATRIX);
        }
    }

    public PhotoViewAttacher(ImageView imageView) {
        this.mImageView = new WeakReference<>(imageView);
        imageView.setOnTouchListener(this);
        this.mViewTreeObserver = imageView.getViewTreeObserver();
        this.mViewTreeObserver.addOnGlobalLayoutListener(this);
        setImageViewScaleTypeMatrix(imageView);
        if (!imageView.isInEditMode()) {
            this.mScaleDragDetector = VersionedGestureDetector.newInstance(imageView.getContext(), this);
            this.mGestureDetector = new GestureDetector(imageView.getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.behance.sdk.senab.photoview.PhotoViewAttacher.1
                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent motionEvent) {
                    if (PhotoViewAttacher.this.mLongClickListener != null) {
                        PhotoViewAttacher.this.mLongClickListener.onLongClick((View) PhotoViewAttacher.this.mImageView.get());
                    }
                }
            });
            this.mGestureDetector.setOnDoubleTapListener(this);
            setZoomable(true);
        }
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final boolean canZoom() {
        return this.mZoomEnabled;
    }

    public final void cleanup() {
        if (this.mImageView != null) {
            this.mImageView.get().getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
        this.mViewTreeObserver = null;
        this.mMatrixChangeListener = null;
        this.mPhotoTapListener = null;
        this.mViewTapListener = null;
        this.mImageView = null;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final RectF getDisplayRect() {
        checkMatrixBounds();
        return getDisplayRect(getDisplayMatrix());
    }

    public final ImageView getImageView() {
        ImageView imageView = null;
        if (this.mImageView != null) {
            imageView = this.mImageView.get();
        }
        if (imageView == null) {
            cleanup();
            Log.e(LOG_TAG, "ImageView no longer exists. You should not use this PhotoViewAttacher any more.", new IllegalStateException("ImageView no longer exists. You should not use this PhotoViewAttacher any more."));
        }
        return imageView;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public float getMinScale() {
        return this.mMinScale;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public float getMidScale() {
        return this.mMidScale;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public float getMaxScale() {
        return this.mMaxScale;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final float getScale() {
        return getValue(this.mSuppMatrix, 0);
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final ImageView.ScaleType getScaleType() {
        return this.mScaleType;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        try {
            float scale = getScale();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (scale < this.mMidScale) {
                zoomTo(this.mMidScale, x, y);
            } else if (scale >= this.mMidScale && scale < this.mMaxScale) {
                zoomTo(this.mMaxScale, x, y);
            } else {
                zoomTo(1.0f, x, y);
            }
            return true;
        } catch (ArrayIndexOutOfBoundsException e2) {
            return true;
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector.OnGestureListener
    public final void onDrag(float f2, float f3) {
        if (DEBUG) {
            Log.d(LOG_TAG, String.format("onDrag: dx: %.2f. dy: %.2f", Float.valueOf(f2), Float.valueOf(f3)));
        }
        ImageView imageView = getImageView();
        if (imageView != null && hasDrawable(imageView)) {
            this.mSuppMatrix.postTranslate(f2, f3);
            checkAndDisplayMatrix();
            if (this.mAllowParentInterceptOnEdge && !this.mScaleDragDetector.isScaling()) {
                if (this.mScrollEdge == 2 || ((this.mScrollEdge == 0 && f2 >= 1.0f) || (this.mScrollEdge == 1 && f2 <= -1.0f))) {
                    imageView.getParent().requestDisallowInterceptTouchEvent(false);
                }
            }
        }
    }

    @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector.OnGestureListener
    public final void onFling(float f2, float f3, float f4, float f5) {
        if (DEBUG) {
            Log.d(LOG_TAG, "onFling. sX: " + f2 + " sY: " + f3 + " Vx: " + f4 + " Vy: " + f5);
        }
        ImageView imageView = getImageView();
        if (hasDrawable(imageView)) {
            this.mCurrentFlingRunnable = new FlingRunnable(imageView.getContext());
            this.mCurrentFlingRunnable.fling(imageView.getWidth(), imageView.getHeight(), (int) f4, (int) f5);
            imageView.post(this.mCurrentFlingRunnable);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ImageView imageView = getImageView();
        if (imageView != null && this.mZoomEnabled) {
            int top = imageView.getTop();
            int right = imageView.getRight();
            int bottom = imageView.getBottom();
            int left = imageView.getLeft();
            if (top != this.mIvTop || bottom != this.mIvBottom || left != this.mIvLeft || right != this.mIvRight) {
                updateBaseMatrix(imageView.getDrawable());
                this.mIvTop = top;
                this.mIvRight = right;
                this.mIvBottom = bottom;
                this.mIvLeft = left;
            }
        }
    }

    @Override // com.behance.sdk.senab.photoview.VersionedGestureDetector.OnGestureListener
    public final void onScale(float f2, float f3, float f4) {
        if (DEBUG) {
            Log.d(LOG_TAG, String.format("onScale: scale: %.2f. fX: %.2f. fY: %.2f", Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4)));
        }
        if (hasDrawable(getImageView())) {
            if (getScale() < this.mMaxScale || f2 < 1.0f) {
                this.mSuppMatrix.postScale(f2, f2, f3, f4);
                checkAndDisplayMatrix();
            }
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        RectF displayRect;
        ImageView imageView = getImageView();
        if (imageView != null) {
            if (this.mPhotoTapListener != null && (displayRect = getDisplayRect()) != null) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (displayRect.contains(x, y)) {
                    this.mPhotoTapListener.onPhotoTap(imageView, (x - displayRect.left) / displayRect.width(), (y - displayRect.top) / displayRect.height());
                    return true;
                }
            }
            if (this.mViewTapListener != null) {
                this.mViewTapListener.onViewTap(imageView, motionEvent.getX(), motionEvent.getY());
            }
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        RectF displayRect;
        boolean z = false;
        if (!this.mZoomEnabled) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                view.getParent().requestDisallowInterceptTouchEvent(true);
                cancelFling();
                break;
            case 1:
            case 3:
                if (getScale() < this.mMinScale && (displayRect = getDisplayRect()) != null) {
                    view.post(new AnimatedZoomRunnable(getScale(), this.mMinScale, displayRect.centerX(), displayRect.centerY()));
                    z = true;
                }
                break;
        }
        if (this.mGestureDetector != null && this.mGestureDetector.onTouchEvent(motionEvent)) {
            z = true;
        }
        if (this.mScaleDragDetector == null || !this.mScaleDragDetector.onTouchEvent(motionEvent)) {
            return z;
        }
        return true;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setAllowParentInterceptOnEdge(boolean z) {
        this.mAllowParentInterceptOnEdge = z;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setMinScale(float f2) {
        checkZoomLevels(f2, this.mMidScale, this.mMaxScale);
        this.mMinScale = f2;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setMidScale(float f2) {
        checkZoomLevels(this.mMinScale, f2, this.mMaxScale);
        this.mMidScale = f2;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public void setMaxScale(float f2) {
        checkZoomLevels(this.mMinScale, this.mMidScale, f2);
        this.mMaxScale = f2;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mLongClickListener = onLongClickListener;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final void setOnMatrixChangeListener(OnMatrixChangedListener onMatrixChangedListener) {
        this.mMatrixChangeListener = onMatrixChangedListener;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.mPhotoTapListener = onPhotoTapListener;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final void setOnViewTapListener(OnViewTapListener onViewTapListener) {
        this.mViewTapListener = onViewTapListener;
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final void setScaleType(ImageView.ScaleType scaleType) {
        if (isSupportedScaleType(scaleType) && scaleType != this.mScaleType) {
            this.mScaleType = scaleType;
            update();
        }
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final void setZoomable(boolean z) {
        this.mZoomEnabled = z;
        update();
    }

    public final void update() {
        ImageView imageView = getImageView();
        if (imageView != null) {
            if (this.mZoomEnabled) {
                setImageViewScaleTypeMatrix(imageView);
                updateBaseMatrix(imageView.getDrawable());
            } else {
                resetMatrix();
            }
        }
    }

    @Override // com.behance.sdk.senab.photoview.IPhotoView
    public final void zoomTo(float f2, float f3, float f4) {
        ImageView imageView = getImageView();
        if (imageView != null) {
            imageView.post(new AnimatedZoomRunnable(getScale(), f2, f3, f4));
        }
        if (!this.zoomEventLoggedForAnalytics) {
            this.zoomEventLoggedForAnalytics = true;
        }
    }

    protected Matrix getDisplayMatrix() {
        this.mDrawMatrix.set(this.mBaseMatrix);
        this.mDrawMatrix.postConcat(this.mSuppMatrix);
        return this.mDrawMatrix;
    }

    private void cancelFling() {
        if (this.mCurrentFlingRunnable != null) {
            this.mCurrentFlingRunnable.cancelFling();
            this.mCurrentFlingRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndDisplayMatrix() {
        checkMatrixBounds();
        setImageViewMatrix(getDisplayMatrix());
    }

    private void checkImageViewScaleType() {
        ImageView imageView = getImageView();
        if (imageView != null && !(imageView instanceof PhotoView) && imageView.getScaleType() != ImageView.ScaleType.MATRIX) {
            throw new IllegalStateException("The ImageView's ScaleType has been changed since attaching a PhotoViewAttacher");
        }
    }

    private void checkMatrixBounds() {
        RectF displayRect;
        float f2;
        float f3 = 0.0f;
        ImageView imageView = getImageView();
        if (imageView != null && (displayRect = getDisplayRect(getDisplayMatrix())) != null) {
            float fHeight = displayRect.height();
            float fWidth = displayRect.width();
            int height = imageView.getHeight();
            if (fHeight <= height) {
                switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()]) {
                    case 2:
                        f2 = -displayRect.top;
                        break;
                    case 3:
                        f2 = (height - fHeight) - displayRect.top;
                        break;
                    default:
                        f2 = ((height - fHeight) / 2.0f) - displayRect.top;
                        break;
                }
            } else if (displayRect.top > 0.0f) {
                f2 = -displayRect.top;
            } else {
                f2 = displayRect.bottom < ((float) height) ? height - displayRect.bottom : 0.0f;
            }
            int width = imageView.getWidth();
            if (fWidth <= width) {
                switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()]) {
                    case 2:
                        f3 = -displayRect.left;
                        break;
                    case 3:
                        f3 = (width - fWidth) - displayRect.left;
                        break;
                    default:
                        f3 = ((width - fWidth) / 2.0f) - displayRect.left;
                        break;
                }
                this.mScrollEdge = 2;
            } else if (displayRect.left > 0.0f) {
                this.mScrollEdge = 0;
                f3 = -displayRect.left;
            } else if (displayRect.right < width) {
                f3 = width - displayRect.right;
                this.mScrollEdge = 1;
            } else {
                this.mScrollEdge = -1;
            }
            this.mSuppMatrix.postTranslate(f3, f2);
        }
    }

    private RectF getDisplayRect(Matrix matrix) {
        Drawable drawable;
        ImageView imageView = getImageView();
        if (imageView == null || (drawable = imageView.getDrawable()) == null) {
            return null;
        }
        this.mDisplayRect.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        matrix.mapRect(this.mDisplayRect);
        return this.mDisplayRect;
    }

    private float getValue(Matrix matrix, int i) {
        matrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[i];
    }

    private void resetMatrix() {
        this.mSuppMatrix.reset();
        setImageViewMatrix(getDisplayMatrix());
        checkMatrixBounds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageViewMatrix(Matrix matrix) {
        RectF displayRect;
        ImageView imageView = getImageView();
        if (imageView != null) {
            checkImageViewScaleType();
            imageView.setImageMatrix(matrix);
            if (this.mMatrixChangeListener != null && (displayRect = getDisplayRect(matrix)) != null) {
                this.mMatrixChangeListener.onMatrixChanged(displayRect);
            }
        }
    }

    private void updateBaseMatrix(Drawable drawable) {
        ImageView imageView = getImageView();
        if (imageView != null && drawable != null) {
            float width = imageView.getWidth();
            float height = imageView.getHeight();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            this.mBaseMatrix.reset();
            float f2 = width / intrinsicWidth;
            float f3 = height / intrinsicHeight;
            if (this.mScaleType == ImageView.ScaleType.CENTER) {
                this.mBaseMatrix.postTranslate((width - intrinsicWidth) / 2.0f, (height - intrinsicHeight) / 2.0f);
            } else if (this.mScaleType == ImageView.ScaleType.CENTER_CROP) {
                float fMax = Math.max(f2, f3);
                this.mBaseMatrix.postScale(fMax, fMax);
                this.mBaseMatrix.postTranslate((width - (intrinsicWidth * fMax)) / 2.0f, (height - (intrinsicHeight * fMax)) / 2.0f);
            } else if (this.mScaleType == ImageView.ScaleType.CENTER_INSIDE) {
                float fMin = Math.min(1.0f, Math.min(f2, f3));
                this.mBaseMatrix.postScale(fMin, fMin);
                this.mBaseMatrix.postTranslate((width - (intrinsicWidth * fMin)) / 2.0f, (height - (intrinsicHeight * fMin)) / 2.0f);
            } else {
                RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
                RectF rectF2 = new RectF(0.0f, 0.0f, width, height);
                switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()]) {
                    case 2:
                        this.mBaseMatrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
                        break;
                    case 3:
                        this.mBaseMatrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
                        break;
                    case 4:
                        this.mBaseMatrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
                        break;
                    case 5:
                        this.mBaseMatrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                        break;
                }
            }
            resetMatrix();
        }
    }

    class AnimatedZoomRunnable implements Runnable {
        static final float ANIMATION_SCALE_PER_ITERATION_IN = 1.07f;
        static final float ANIMATION_SCALE_PER_ITERATION_OUT = 0.93f;
        private final float mDeltaScale;
        private final float mFocalX;
        private final float mFocalY;
        private final float mTargetZoom;

        public AnimatedZoomRunnable(float f2, float f3, float f4, float f5) {
            this.mTargetZoom = f3;
            this.mFocalX = f4;
            this.mFocalY = f5;
            if (f2 < f3) {
                this.mDeltaScale = ANIMATION_SCALE_PER_ITERATION_IN;
            } else {
                this.mDeltaScale = ANIMATION_SCALE_PER_ITERATION_OUT;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView = PhotoViewAttacher.this.getImageView();
            if (imageView != null) {
                PhotoViewAttacher.this.mSuppMatrix.postScale(this.mDeltaScale, this.mDeltaScale, this.mFocalX, this.mFocalY);
                PhotoViewAttacher.this.checkAndDisplayMatrix();
                float scale = PhotoViewAttacher.this.getScale();
                if ((this.mDeltaScale > 1.0f && scale < this.mTargetZoom) || (this.mDeltaScale < 1.0f && this.mTargetZoom < scale)) {
                    Compat.postOnAnimation(imageView, this);
                    return;
                }
                float f2 = this.mTargetZoom / scale;
                PhotoViewAttacher.this.mSuppMatrix.postScale(f2, f2, this.mFocalX, this.mFocalY);
                PhotoViewAttacher.this.checkAndDisplayMatrix();
            }
        }
    }

    class FlingRunnable implements Runnable {
        private int mCurrentX;
        private int mCurrentY;
        private final ScrollerProxy mScroller;

        public FlingRunnable(Context context) {
            this.mScroller = ScrollerProxy.getScroller(context);
        }

        public void cancelFling() {
            if (PhotoViewAttacher.DEBUG) {
                Log.d(PhotoViewAttacher.LOG_TAG, "Cancel Fling");
            }
            this.mScroller.forceFinished(true);
        }

        public void fling(int i, int i2, int i3, int i4) {
            int iRound;
            int i5;
            int iRound2;
            int i6;
            RectF displayRect = PhotoViewAttacher.this.getDisplayRect();
            if (displayRect != null) {
                int iRound3 = Math.round(-displayRect.left);
                if (i < displayRect.width()) {
                    iRound = Math.round(displayRect.width() - i);
                    i5 = 0;
                } else {
                    iRound = iRound3;
                    i5 = iRound3;
                }
                int iRound4 = Math.round(-displayRect.top);
                if (i2 < displayRect.height()) {
                    iRound2 = Math.round(displayRect.height() - i2);
                    i6 = 0;
                } else {
                    iRound2 = iRound4;
                    i6 = iRound4;
                }
                this.mCurrentX = iRound3;
                this.mCurrentY = iRound4;
                if (PhotoViewAttacher.DEBUG) {
                    Log.d(PhotoViewAttacher.LOG_TAG, "fling. StartX:" + iRound3 + " StartY:" + iRound4 + " MaxX:" + iRound + " MaxY:" + iRound2);
                }
                if (iRound3 != iRound || iRound4 != iRound2) {
                    this.mScroller.fling(iRound3, iRound4, i3, i4, i5, iRound, i6, iRound2, 0, 0);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView = PhotoViewAttacher.this.getImageView();
            if (imageView != null && this.mScroller.computeScrollOffset()) {
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                if (PhotoViewAttacher.DEBUG) {
                    Log.d(PhotoViewAttacher.LOG_TAG, "fling run(). CurrentX:" + this.mCurrentX + " CurrentY:" + this.mCurrentY + " NewX:" + currX + " NewY:" + currY);
                }
                PhotoViewAttacher.this.mSuppMatrix.postTranslate(this.mCurrentX - currX, this.mCurrentY - currY);
                PhotoViewAttacher.this.setImageViewMatrix(PhotoViewAttacher.this.getDisplayMatrix());
                this.mCurrentX = currX;
                this.mCurrentY = currY;
                Compat.postOnAnimation(imageView, this);
            }
        }
    }
}
