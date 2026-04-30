package com.adobe.creativesdk.foundation.internal.utils.photoview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.OnGestureListener;
import com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.VersionedGestureDetector;
import com.adobe.creativesdk.foundation.internal.utils.photoview.log.LogManager;
import com.adobe.creativesdk.foundation.internal.utils.photoview.scrollerproxy.ScrollerProxy;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class PhotoViewAttacher implements View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener, IPhotoView, OnGestureListener {
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
    private com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.GestureDetector mScaleDragDetector;
    private OnViewTapListener mViewTapListener;
    private IPhotoViewZoomDelegate mZoomDelegate;
    private boolean mZoomEnabled;
    private static final String LOG_TAG = "PhotoViewAttacher";
    private static final boolean DEBUG = Log.isLoggable(LOG_TAG, 3);
    static final Interpolator sInterpolator = new AccelerateDecelerateInterpolator();
    int ZOOM_DURATION = 200;
    private float mMinScale = 1.0f;
    private float mMidScale = 1.75f;
    private float mMaxScale = 3.0f;
    private boolean mAllowParentInterceptOnEdge = true;
    private float mZoomScale = 1.0f;
    private float mZoomFocusX = 0.0f;
    private float mZoomFocusY = 0.0f;
    private final Matrix mBaseMatrix = new Matrix();
    private final Matrix mDrawMatrix = new Matrix();
    private final Matrix mSuppMatrix = new Matrix();
    private final RectF mDisplayRect = new RectF();
    private final float[] mMatrixValues = new float[9];
    private int mScrollEdge = 2;
    private ImageView.ScaleType mScaleType = ImageView.ScaleType.FIT_CENTER;

    /* JADX INFO: loaded from: classes2.dex */
    public interface OnMatrixChangedListener {
        void onMatrixChanged(RectF rectF);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface OnPhotoTapListener {
        void onPhotoTap(View view, float f2, float f3);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface OnViewTapListener {
        void onViewTap(View view, float f2, float f3);
    }

    public void setZoomDelegate(IPhotoViewZoomDelegate iPhotoViewZoomDelegate) {
        this.mZoomDelegate = iPhotoViewZoomDelegate;
    }

    public IPhotoViewZoomDelegate getZoomDelegate() {
        return this.mZoomDelegate;
    }

    public void setZoomFocusX(float f2) {
        this.mZoomFocusX = f2;
    }

    public float getZoomFocusX() {
        return this.mZoomFocusX;
    }

    public void setZoomFocusY(float f2) {
        this.mZoomFocusY = f2;
    }

    public float getZoomFocusY() {
        return this.mZoomFocusY;
    }

    private static void checkZoomLevels(float f2, float f3, float f4) {
        if (f2 >= f3) {
            throw new IllegalArgumentException("MinZoom has to be less than MidZoom");
        }
        if (f3 >= f4) {
            throw new IllegalArgumentException("MidZoom has to be less than MaxZoom");
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

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
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
        if (imageView != null && !(imageView instanceof IPhotoView) && !ImageView.ScaleType.MATRIX.equals(imageView.getScaleType())) {
            imageView.setScaleType(ImageView.ScaleType.MATRIX);
        }
    }

    public PhotoViewAttacher(ImageView imageView) {
        this.mImageView = new WeakReference<>(imageView);
        imageView.setDrawingCacheEnabled(true);
        imageView.setOnTouchListener(this);
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        setImageViewScaleTypeMatrix(imageView);
        if (!imageView.isInEditMode()) {
            this.mScaleDragDetector = VersionedGestureDetector.newInstance(imageView.getContext(), this);
            this.mGestureDetector = new GestureDetector(imageView.getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher.1
                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent motionEvent) {
                    if (PhotoViewAttacher.this.mLongClickListener != null) {
                        PhotoViewAttacher.this.mLongClickListener.onLongClick(PhotoViewAttacher.this.getImageView());
                    }
                }
            });
            this.mGestureDetector.setOnDoubleTapListener(new DefaultOnDoubleTapListener(this));
            setZoomable(true);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        if (onDoubleTapListener != null) {
            this.mGestureDetector.setOnDoubleTapListener(onDoubleTapListener);
        } else {
            this.mGestureDetector.setOnDoubleTapListener(new DefaultOnDoubleTapListener(this));
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public boolean canZoom() {
        return this.mZoomEnabled;
    }

    public void cleanup() {
        if (this.mImageView != null) {
            ImageView imageView = this.mImageView.get();
            if (imageView != null) {
                ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    if (Build.VERSION.SDK_INT < 16) {
                        viewTreeObserver.removeGlobalOnLayoutListener(this);
                    } else {
                        viewTreeObserver.removeOnGlobalLayoutListener(this);
                    }
                }
                imageView.setOnTouchListener(null);
                cancelFling();
            }
            if (this.mGestureDetector != null) {
                this.mGestureDetector.setOnDoubleTapListener(null);
            }
            this.mMatrixChangeListener = null;
            this.mPhotoTapListener = null;
            this.mViewTapListener = null;
            this.mImageView = null;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public RectF getDisplayRect() {
        checkMatrixBounds();
        return getDisplayRect(getDrawMatrix());
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public boolean setDisplayMatrix(Matrix matrix) {
        if (matrix == null) {
            throw new IllegalArgumentException("Matrix cannot be null");
        }
        ImageView imageView = getImageView();
        if (imageView == null || imageView.getDrawable() == null) {
            return false;
        }
        this.mSuppMatrix.set(matrix);
        setImageViewMatrix(getDrawMatrix());
        checkMatrixBounds();
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setPhotoViewRotation(float f2) {
        this.mSuppMatrix.setRotate(f2 % 360.0f);
        checkAndDisplayMatrix();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setRotationTo(float f2) {
        this.mSuppMatrix.setRotate(f2 % 360.0f);
        checkAndDisplayMatrix();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setRotationBy(float f2) {
        this.mSuppMatrix.postRotate(f2 % 360.0f);
        checkAndDisplayMatrix();
    }

    public ImageView getImageView() {
        ImageView imageView = null;
        if (this.mImageView != null) {
            imageView = this.mImageView.get();
        }
        if (imageView == null) {
            cleanup();
            Log.i(LOG_TAG, "ImageView no longer exists. You should not use this PhotoViewAttacher any more.");
        }
        return imageView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public float getMinScale() {
        return getMinimumScale();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public float getMinimumScale() {
        return this.mMinScale;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public float getMidScale() {
        return getMediumScale();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public float getMediumScale() {
        return this.mMidScale;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public float getMaxScale() {
        return getMaximumScale();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public float getMaximumScale() {
        return this.mMaxScale;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public float getScale() {
        return (float) Math.sqrt(((float) Math.pow(getValue(this.mSuppMatrix, 0), 2.0d)) + ((float) Math.pow(getValue(this.mSuppMatrix, 3), 2.0d)));
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public ImageView.ScaleType getScaleType() {
        return this.mScaleType;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.OnGestureListener
    public void onDrag(float f2, float f3) {
        if (!this.mScaleDragDetector.isScaling()) {
            if (DEBUG) {
                LogManager.getLogger().d(LOG_TAG, String.format("onDrag: dx: %.2f. dy: %.2f", Float.valueOf(f2), Float.valueOf(f3)));
            }
            ImageView imageView = getImageView();
            this.mSuppMatrix.postTranslate(f2, f3);
            checkAndDisplayMatrix();
            ViewParent parent = imageView.getParent();
            if (this.mAllowParentInterceptOnEdge && !this.mScaleDragDetector.isScaling()) {
                if ((this.mScrollEdge == 2 || ((this.mScrollEdge == 0 && f2 >= 1.0f) || (this.mScrollEdge == 1 && f2 <= -1.0f))) && parent != null) {
                    parent.requestDisallowInterceptTouchEvent(false);
                    if (this.mZoomDelegate != null) {
                        this.mZoomDelegate.signalDragDetected(f2, f3);
                        return;
                    }
                    return;
                }
                return;
            }
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.OnGestureListener
    public void onFling(float f2, float f3, float f4, float f5) {
        if (DEBUG) {
            LogManager.getLogger().d(LOG_TAG, "onFling. sX: " + f2 + " sY: " + f3 + " Vx: " + f4 + " Vy: " + f5);
        }
        ImageView imageView = getImageView();
        this.mCurrentFlingRunnable = new FlingRunnable(imageView.getContext());
        this.mCurrentFlingRunnable.fling(getImageViewWidth(imageView), getImageViewHeight(imageView), (int) f4, (int) f5);
        imageView.post(this.mCurrentFlingRunnable);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ImageView imageView = getImageView();
        if (imageView != null) {
            if (this.mZoomEnabled) {
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
                    return;
                }
                return;
            }
            updateBaseMatrix(imageView.getDrawable());
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.gestures.OnGestureListener
    public void onScale(float f2, float f3, float f4) {
        Log.d("PhotoView.Scale", String.format("in onScale with scaleFactor %f", Float.valueOf(f2)));
        if (DEBUG) {
            LogManager.getLogger().d(LOG_TAG, String.format("onScale: scale: %.2f. fX: %.2f. fY: %.2f", Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4)));
        }
        if (getScale() < this.mMaxScale || f2 < 1.0f) {
            this.mSuppMatrix.postScale(f2, f2, f3, f4);
            if (this.mZoomDelegate != null) {
                this.mZoomDelegate.signalZoomHandled(getScale(), f3, f4);
            }
            checkAndDisplayMatrix();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        RectF displayRect;
        if (!this.mZoomEnabled || !hasDrawable((ImageView) view)) {
            return false;
        }
        ViewParent parent = view.getParent();
        switch (motionEvent.getAction()) {
            case 0:
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                } else {
                    Log.i(LOG_TAG, "onTouch getParent() returned null");
                }
                cancelFling();
                z = false;
                break;
            case 1:
            case 3:
                if (getScale() >= this.mMinScale || (displayRect = getDisplayRect()) == null) {
                    z = false;
                } else {
                    view.post(new AnimatedZoomRunnable(getScale(), this.mMinScale, displayRect.centerX(), displayRect.centerY()));
                    z = true;
                }
                break;
            case 2:
            default:
                z = false;
                break;
        }
        if (this.mScaleDragDetector != null && this.mScaleDragDetector.onTouchEvent(motionEvent)) {
            z = true;
        }
        if (this.mGestureDetector == null || !this.mGestureDetector.onTouchEvent(motionEvent)) {
            return z;
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setAllowParentInterceptOnEdge(boolean z) {
        this.mAllowParentInterceptOnEdge = z;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public void setMinScale(float f2) {
        setMinimumScale(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setMinimumScale(float f2) {
        checkZoomLevels(f2, this.mMidScale, this.mMaxScale);
        this.mMinScale = f2;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public void setMidScale(float f2) {
        setMediumScale(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setMediumScale(float f2) {
        checkZoomLevels(this.mMinScale, f2, this.mMaxScale);
        this.mMidScale = f2;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    @Deprecated
    public void setMaxScale(float f2) {
        setMaximumScale(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setMaximumScale(float f2) {
        checkZoomLevels(this.mMinScale, this.mMidScale, f2);
        this.mMaxScale = f2;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mLongClickListener = onLongClickListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnMatrixChangeListener(OnMatrixChangedListener onMatrixChangedListener) {
        this.mMatrixChangeListener = onMatrixChangedListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.mPhotoTapListener = onPhotoTapListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public OnPhotoTapListener getOnPhotoTapListener() {
        return this.mPhotoTapListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setOnViewTapListener(OnViewTapListener onViewTapListener) {
        this.mViewTapListener = onViewTapListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public OnViewTapListener getOnViewTapListener() {
        return this.mViewTapListener;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setScale(float f2) {
        setScale(f2, false);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setScale(float f2, boolean z) {
        if (getImageView() != null) {
            setScale(f2, r0.getRight() / 2, r0.getBottom() / 2, z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004d A[PHI: r8
  0x004d: PHI (r8v4 float) = (r8v1 float), (r8v0 float) binds: [B:12:0x002b, B:7:0x0010] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setScale(float r8, float r9, float r10, boolean r11) {
        /*
            r7 = this;
            android.widget.ImageView r6 = r7.getImageView()
            if (r6 == 0) goto L41
            float r0 = r7.mMinScale
            int r0 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r0 < 0) goto L12
            float r0 = r7.mMaxScale
            int r0 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r0 <= 0) goto L4d
        L12:
            com.adobe.creativesdk.foundation.internal.utils.photoview.log.Logger r0 = com.adobe.creativesdk.foundation.internal.utils.photoview.log.LogManager.getLogger()
            java.lang.String r1 = "PhotoViewAttacher"
            java.lang.String r2 = "Scale must be within the range of minScale and maxScale"
            r0.i(r1, r2)
            float r0 = r7.mMaxScale
            int r0 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r0 <= 0) goto L27
            float r8 = r7.mMaxScale
        L27:
            float r0 = r7.mMinScale
            int r0 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r0 >= 0) goto L4d
            float r8 = r7.mMinScale
            r3 = r8
        L30:
            if (r11 == 0) goto L42
            com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher$AnimatedZoomRunnable r0 = new com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher$AnimatedZoomRunnable
            float r2 = r7.getScale()
            r1 = r7
            r4 = r9
            r5 = r10
            r0.<init>(r2, r3, r4, r5)
            r6.post(r0)
        L41:
            return
        L42:
            android.graphics.Matrix r0 = r7.mSuppMatrix
            r0.setScale(r3, r3, r9, r10)
            r7.mZoomScale = r3
            r7.checkAndDisplayMatrix()
            goto L41
        L4d:
            r3 = r8
            goto L30
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher.setScale(float, float, float, boolean):void");
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (isSupportedScaleType(scaleType) && scaleType != this.mScaleType) {
            this.mScaleType = scaleType;
            update();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setZoomable(boolean z) {
        this.mZoomEnabled = z;
        update();
    }

    public void update() {
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

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public Matrix getDisplayMatrix() {
        return new Matrix(getDrawMatrix());
    }

    public Matrix getDrawMatrix() {
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
        if (checkMatrixBounds()) {
            setImageViewMatrix(getDrawMatrix());
        }
    }

    private void checkImageViewScaleType() {
        ImageView imageView = getImageView();
        if (imageView != null && !(imageView instanceof IPhotoView) && !ImageView.ScaleType.MATRIX.equals(imageView.getScaleType())) {
            throw new IllegalStateException("The ImageView's ScaleType has been changed since attaching a PhotoViewAttacher");
        }
    }

    private boolean checkMatrixBounds() {
        RectF displayRect;
        float f2;
        float f3 = 0.0f;
        ImageView imageView = getImageView();
        if (imageView != null && (displayRect = getDisplayRect(getDrawMatrix())) != null) {
            float fHeight = displayRect.height();
            float fWidth = displayRect.width();
            int imageViewHeight = getImageViewHeight(imageView);
            if (fHeight <= imageViewHeight) {
                switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()]) {
                    case 2:
                        f2 = -displayRect.top;
                        break;
                    case 3:
                        f2 = (imageViewHeight - fHeight) - displayRect.top;
                        break;
                    default:
                        f2 = ((imageViewHeight - fHeight) / 2.0f) - displayRect.top;
                        break;
                }
            } else if (displayRect.top > 0.0f) {
                f2 = -displayRect.top;
            } else {
                f2 = displayRect.bottom < ((float) imageViewHeight) ? imageViewHeight - displayRect.bottom : 0.0f;
            }
            int imageViewWidth = getImageViewWidth(imageView);
            if (fWidth <= imageViewWidth) {
                switch (AnonymousClass2.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()]) {
                    case 2:
                        f3 = -displayRect.left;
                        break;
                    case 3:
                        f3 = (imageViewWidth - fWidth) - displayRect.left;
                        break;
                    default:
                        f3 = ((imageViewWidth - fWidth) / 2.0f) - displayRect.left;
                        break;
                }
                this.mScrollEdge = 2;
            } else if (displayRect.left > 0.0f) {
                this.mScrollEdge = 0;
                f3 = -displayRect.left;
            } else if (displayRect.right < imageViewWidth) {
                f3 = imageViewWidth - displayRect.right;
                this.mScrollEdge = 1;
            } else {
                this.mScrollEdge = -1;
            }
            this.mSuppMatrix.postTranslate(f3, f2);
            return true;
        }
        return false;
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

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public Bitmap getVisibleRectangleBitmap() {
        ImageView imageView = getImageView();
        if (imageView == null) {
            return null;
        }
        return imageView.getDrawingCache();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public void setZoomTransitionDuration(int i) {
        if (i < 0) {
            i = 200;
        }
        this.ZOOM_DURATION = i;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoView
    public IPhotoView getIPhotoViewImplementation() {
        return this;
    }

    private float getValue(Matrix matrix, int i) {
        matrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[i];
    }

    private void resetMatrix() {
        this.mSuppMatrix.reset();
        setScale(this.mZoomScale, this.mZoomFocusX, this.mZoomFocusY, false);
        setImageViewMatrix(getDrawMatrix());
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
            float imageViewWidth = getImageViewWidth(imageView);
            float imageViewHeight = getImageViewHeight(imageView);
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            this.mBaseMatrix.reset();
            float f2 = imageViewWidth / intrinsicWidth;
            float f3 = imageViewHeight / intrinsicHeight;
            if (this.mScaleType == ImageView.ScaleType.CENTER) {
                this.mBaseMatrix.postTranslate((imageViewWidth - intrinsicWidth) / 2.0f, (imageViewHeight - intrinsicHeight) / 2.0f);
            } else if (this.mScaleType == ImageView.ScaleType.CENTER_CROP) {
                float fMax = Math.max(f2, f3);
                this.mBaseMatrix.postScale(fMax, fMax);
                this.mBaseMatrix.postTranslate((imageViewWidth - (intrinsicWidth * fMax)) / 2.0f, (imageViewHeight - (intrinsicHeight * fMax)) / 2.0f);
            } else if (this.mScaleType == ImageView.ScaleType.CENTER_INSIDE) {
                float fMin = Math.min(1.0f, Math.min(f2, f3));
                this.mBaseMatrix.postScale(fMin, fMin);
                this.mBaseMatrix.postTranslate((imageViewWidth - (intrinsicWidth * fMin)) / 2.0f, (imageViewHeight - (intrinsicHeight * fMin)) / 2.0f);
            } else {
                RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
                RectF rectF2 = new RectF(0.0f, 0.0f, imageViewWidth, imageViewHeight);
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

    private int getImageViewWidth(ImageView imageView) {
        if (imageView == null) {
            return 0;
        }
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    private int getImageViewHeight(ImageView imageView) {
        if (imageView == null) {
            return 0;
        }
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    /* JADX INFO: loaded from: classes2.dex */
    class AnimatedZoomRunnable implements Runnable {
        private final float mFocalX;
        private final float mFocalY;
        private final long mStartTime = System.currentTimeMillis();
        private final float mZoomEnd;
        private final float mZoomStart;

        public AnimatedZoomRunnable(float f2, float f3, float f4, float f5) {
            this.mFocalX = f4;
            this.mFocalY = f5;
            this.mZoomStart = f2;
            this.mZoomEnd = f3;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView = PhotoViewAttacher.this.getImageView();
            if (imageView != null) {
                float fInterpolate = interpolate();
                float scale = (this.mZoomStart + ((this.mZoomEnd - this.mZoomStart) * fInterpolate)) / PhotoViewAttacher.this.getScale();
                PhotoViewAttacher.this.mSuppMatrix.postScale(scale, scale, this.mFocalX, this.mFocalY);
                PhotoViewAttacher.this.checkAndDisplayMatrix();
                if (fInterpolate < 1.0f) {
                    Compat.postOnAnimation(imageView, this);
                }
            }
        }

        private float interpolate() {
            return PhotoViewAttacher.sInterpolator.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.mStartTime) * 1.0f) / PhotoViewAttacher.this.ZOOM_DURATION));
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class FlingRunnable implements Runnable {
        private int mCurrentX;
        private int mCurrentY;
        private final ScrollerProxy mScroller;

        public FlingRunnable(Context context) {
            this.mScroller = ScrollerProxy.getScroller(context);
        }

        public void cancelFling() {
            if (PhotoViewAttacher.DEBUG) {
                LogManager.getLogger().d(PhotoViewAttacher.LOG_TAG, "Cancel Fling");
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
                    LogManager.getLogger().d(PhotoViewAttacher.LOG_TAG, "fling. StartX:" + iRound3 + " StartY:" + iRound4 + " MaxX:" + iRound + " MaxY:" + iRound2);
                }
                if (iRound3 != iRound || iRound4 != iRound2) {
                    this.mScroller.fling(iRound3, iRound4, i3, i4, i5, iRound, i6, iRound2, 0, 0);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView;
            if (!this.mScroller.isFinished() && (imageView = PhotoViewAttacher.this.getImageView()) != null && this.mScroller.computeScrollOffset()) {
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                if (PhotoViewAttacher.DEBUG) {
                    LogManager.getLogger().d(PhotoViewAttacher.LOG_TAG, "fling run(). CurrentX:" + this.mCurrentX + " CurrentY:" + this.mCurrentY + " NewX:" + currX + " NewY:" + currY);
                }
                PhotoViewAttacher.this.mSuppMatrix.postTranslate(this.mCurrentX - currX, this.mCurrentY - currY);
                PhotoViewAttacher.this.setImageViewMatrix(PhotoViewAttacher.this.getDrawMatrix());
                this.mCurrentX = currX;
                this.mCurrentY = currY;
                Compat.postOnAnimation(imageView, this);
            }
        }
    }
}
