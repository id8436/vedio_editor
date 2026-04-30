package com.behance.sdk.edmodo.cropper;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.behance.sdk.R;
import com.behance.sdk.edmodo.cropper.cropwindow.CropOverlayView;
import com.behance.sdk.edmodo.cropper.cropwindow.edge.Edge;
import com.behance.sdk.edmodo.cropper.util.ImageViewUtil;
import com.behance.sdk.exception.NullReferenceException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class CropImageView extends FrameLayout {
    public static final int DEFAULT_ASPECT_RATIO_X = 1;
    public static final int DEFAULT_ASPECT_RATIO_Y = 1;
    public static final boolean DEFAULT_FIXED_ASPECT_RATIO = false;
    public static final int DEFAULT_GUIDELINES = 1;
    private static final int DEFAULT_IMAGE_RESOURCE = 0;
    private static final String DEGREES_ROTATED = "DEGREES_ROTATED";
    private static final Rect EMPTY_RECT = new Rect();
    private int mAspectRatioX;
    private int mAspectRatioY;
    private Bitmap mBitmap;
    private CropOverlayView mCropOverlayView;
    private int mDegreesRotated;
    private boolean mFixAspectRatio;
    private int mGuidelines;
    private int mImageResource;
    private ImageView mImageView;
    private int mLayoutHeight;
    private int mLayoutWidth;

    public CropImageView(Context context) {
        super(context);
        this.mDegreesRotated = 0;
        this.mGuidelines = 1;
        this.mFixAspectRatio = false;
        this.mAspectRatioX = 1;
        this.mAspectRatioY = 1;
        this.mImageResource = 0;
        init(context);
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDegreesRotated = 0;
        this.mGuidelines = 1;
        this.mFixAspectRatio = false;
        this.mAspectRatioX = 1;
        this.mAspectRatioY = 1;
        this.mImageResource = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CropImageView, 0, 0);
        try {
            this.mGuidelines = typedArrayObtainStyledAttributes.getInteger(R.styleable.CropImageView_guidelines, 1);
            this.mFixAspectRatio = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CropImageView_fixAspectRatio, false);
            this.mAspectRatioX = typedArrayObtainStyledAttributes.getInteger(R.styleable.CropImageView_aspectRatioX, 1);
            this.mAspectRatioY = typedArrayObtainStyledAttributes.getInteger(R.styleable.CropImageView_aspectRatioY, 1);
            this.mImageResource = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CropImageView_imageResource, 0);
            typedArrayObtainStyledAttributes.recycle();
            init(context);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt(DEGREES_ROTATED, this.mDegreesRotated);
        return bundle;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            if (this.mBitmap != null) {
                this.mDegreesRotated = bundle.getInt(DEGREES_ROTATED);
                int i = this.mDegreesRotated;
                rotateImage(this.mDegreesRotated);
                this.mDegreesRotated = i;
            }
            super.onRestoreInstanceState(bundle.getParcelable("instanceState"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public ImageView getImageView() {
        return this.mImageView;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (this.mBitmap != null) {
            this.mCropOverlayView.setBitmapRect(ImageViewUtil.getBitmapRectCenterInside(this.mBitmap, this));
        } else {
            this.mCropOverlayView.setBitmapRect(EMPTY_RECT);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int width;
        int height;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.mBitmap != null) {
            super.onMeasure(i, i2);
            if (size2 == 0) {
                size2 = this.mBitmap.getHeight();
            }
            double width2 = ((double) size) / ((double) this.mBitmap.getWidth());
            double height2 = ((double) size2) / ((double) this.mBitmap.getHeight());
            if (width2 == Double.POSITIVE_INFINITY && height2 == Double.POSITIVE_INFINITY) {
                width = this.mBitmap.getWidth();
                height = this.mBitmap.getHeight();
            } else if (width2 <= height2) {
                height = (int) (width2 * ((double) this.mBitmap.getHeight()));
                width = size;
            } else {
                width = (int) (((double) this.mBitmap.getWidth()) * height2);
                height = size2;
            }
            int onMeasureSpec = getOnMeasureSpec(mode, size, width);
            int onMeasureSpec2 = getOnMeasureSpec(mode2, size2, height);
            this.mLayoutWidth = onMeasureSpec;
            this.mLayoutHeight = onMeasureSpec2;
            this.mCropOverlayView.setBitmapRect(ImageViewUtil.getBitmapRectCenterInside(this.mBitmap.getWidth(), this.mBitmap.getHeight(), this.mLayoutWidth, this.mLayoutHeight));
            setMeasuredDimension(this.mLayoutWidth, this.mLayoutHeight);
            return;
        }
        this.mCropOverlayView.setBitmapRect(EMPTY_RECT);
        setMeasuredDimension(size, size2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mLayoutWidth > 0 && this.mLayoutHeight > 0) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = this.mLayoutWidth;
            layoutParams.height = this.mLayoutHeight;
            setLayoutParams(layoutParams);
        }
    }

    public int getImageResource() {
        return this.mImageResource;
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
        this.mImageView.setImageBitmap(this.mBitmap);
        if (this.mCropOverlayView != null) {
            this.mCropOverlayView.resetCropOverlayView();
        }
    }

    public void setImageBitmap(Bitmap bitmap, ExifInterface exifInterface) {
        int i;
        if (bitmap != null) {
            if (exifInterface == null) {
                setImageBitmap(bitmap);
                return;
            }
            Matrix matrix = new Matrix();
            switch (exifInterface.getAttributeInt("Orientation", 1)) {
                case 3:
                    i = 180;
                    break;
                case 4:
                case 5:
                case 7:
                default:
                    i = -1;
                    break;
                case 6:
                    i = 90;
                    break;
                case 8:
                    i = 270;
                    break;
            }
            if (i == -1) {
                setImageBitmap(bitmap);
                return;
            }
            matrix.postRotate(i);
            setImageBitmap(Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true));
            bitmap.recycle();
        }
    }

    public void setImageResource(int i) {
        if (i != 0) {
            setImageBitmap(BitmapFactory.decodeResource(getResources(), i));
        }
    }

    public Bitmap getCroppedImage() throws NullReferenceException {
        if (this.mBitmap == null) {
            throw new NullReferenceException("bitmap is null");
        }
        Rect bitmapRectCenterInside = ImageViewUtil.getBitmapRectCenterInside(this.mBitmap, this.mImageView);
        float width = this.mBitmap.getWidth() / bitmapRectCenterInside.width();
        float height = this.mBitmap.getHeight() / bitmapRectCenterInside.height();
        float coordinate = Edge.LEFT.getCoordinate() - bitmapRectCenterInside.left;
        float f2 = coordinate * width;
        float coordinate2 = (Edge.TOP.getCoordinate() - bitmapRectCenterInside.top) * height;
        float width2 = width * Edge.getWidth();
        float height2 = height * Edge.getHeight();
        if (coordinate2 + height2 > this.mBitmap.getHeight()) {
            return this.mBitmap;
        }
        return Bitmap.createBitmap(this.mBitmap, (int) f2, (int) coordinate2, (int) width2, (int) height2);
    }

    public RectF getActualCropRect() {
        Rect bitmapRectCenterInside = ImageViewUtil.getBitmapRectCenterInside(this.mBitmap, this.mImageView);
        float width = this.mBitmap.getWidth() / bitmapRectCenterInside.width();
        float height = this.mBitmap.getHeight() / bitmapRectCenterInside.height();
        float coordinate = Edge.LEFT.getCoordinate() - bitmapRectCenterInside.left;
        float f2 = coordinate * width;
        float coordinate2 = (Edge.TOP.getCoordinate() - bitmapRectCenterInside.top) * height;
        return new RectF(Math.max(0.0f, f2), Math.max(0.0f, coordinate2), Math.min(this.mBitmap.getWidth(), (width * Edge.getWidth()) + f2), Math.min(this.mBitmap.getHeight(), (height * Edge.getHeight()) + coordinate2));
    }

    public void setFixedAspectRatio(boolean z) {
        this.mCropOverlayView.setFixedAspectRatio(z);
    }

    public void setGuidelines(int i) {
        this.mCropOverlayView.setGuidelines(i);
    }

    public void setAspectRatio(int i, int i2) {
        this.mAspectRatioX = i;
        this.mCropOverlayView.setAspectRatioX(this.mAspectRatioX);
        this.mAspectRatioY = i2;
        this.mCropOverlayView.setAspectRatioY(this.mAspectRatioY);
    }

    public void rotateImage(int i) {
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        this.mBitmap = Bitmap.createBitmap(this.mBitmap, 0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight(), matrix, true);
        setImageBitmap(this.mBitmap);
        this.mDegreesRotated += i;
        this.mDegreesRotated %= Sequence.PLAYBACK_HEIGHT;
    }

    public void setMinSize(int i) {
        Edge.MIN_CROP_LENGTH_PX = i;
    }

    private void init(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.crop_image_view, (ViewGroup) this, true);
        this.mImageView = (ImageView) viewInflate.findViewById(R.id.ImageView_image);
        setImageResource(this.mImageResource);
        this.mCropOverlayView = (CropOverlayView) viewInflate.findViewById(R.id.CropOverlayView);
        this.mCropOverlayView.setInitialAttributeValues(this.mGuidelines, this.mFixAspectRatio, this.mAspectRatioX, this.mAspectRatioY);
    }

    private static int getOnMeasureSpec(int i, int i2, int i3) {
        if (i == 1073741824) {
            return i2;
        }
        return i == Integer.MIN_VALUE ? Math.min(i3, i2) : i3;
    }
}
