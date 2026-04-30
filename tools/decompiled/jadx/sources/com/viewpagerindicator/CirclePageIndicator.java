package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes3.dex */
public class CirclePageIndicator extends View implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f4172a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f4173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f4174c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f4175d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ViewPager f4176e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f4177f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f4178g;
    private int h;
    private float i;
    private int j;
    private int k;
    private boolean l;
    private boolean m;
    private int n;
    private float o;
    private int p;
    private boolean q;

    public CirclePageIndicator(Context context) {
        this(context, null);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, e.vpiCirclePageIndicatorStyle);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4173b = new Paint(1);
        this.f4174c = new Paint(1);
        this.f4175d = new Paint(1);
        this.o = -1.0f;
        this.p = -1;
        if (!isInEditMode()) {
            Resources resources = getResources();
            int color = resources.getColor(g.default_circle_indicator_page_color);
            int color2 = resources.getColor(g.default_circle_indicator_fill_color);
            int integer = resources.getInteger(i.default_circle_indicator_orientation);
            int color3 = resources.getColor(g.default_circle_indicator_stroke_color);
            float dimension = resources.getDimension(h.default_circle_indicator_stroke_width);
            float dimension2 = resources.getDimension(h.default_circle_indicator_radius);
            boolean z = resources.getBoolean(f.default_circle_indicator_centered);
            boolean z2 = resources.getBoolean(f.default_circle_indicator_snap);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.CirclePageIndicator, i, 0);
            this.l = typedArrayObtainStyledAttributes.getBoolean(2, z);
            this.k = typedArrayObtainStyledAttributes.getInt(0, integer);
            this.f4173b.setStyle(Paint.Style.FILL);
            this.f4173b.setColor(typedArrayObtainStyledAttributes.getColor(5, color));
            this.f4174c.setStyle(Paint.Style.STROKE);
            this.f4174c.setColor(typedArrayObtainStyledAttributes.getColor(8, color3));
            this.f4174c.setStrokeWidth(typedArrayObtainStyledAttributes.getDimension(3, dimension));
            this.f4175d.setStyle(Paint.Style.FILL);
            this.f4175d.setColor(typedArrayObtainStyledAttributes.getColor(4, color2));
            this.f4172a = typedArrayObtainStyledAttributes.getDimension(6, dimension2);
            this.m = typedArrayObtainStyledAttributes.getBoolean(7, z2);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            typedArrayObtainStyledAttributes.recycle();
            this.n = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    public void setCentered(boolean z) {
        this.l = z;
        invalidate();
    }

    public void setPageColor(int i) {
        this.f4173b.setColor(i);
        invalidate();
    }

    public int getPageColor() {
        return this.f4173b.getColor();
    }

    public void setFillColor(int i) {
        this.f4175d.setColor(i);
        invalidate();
    }

    public int getFillColor() {
        return this.f4175d.getColor();
    }

    public void setOrientation(int i) {
        switch (i) {
            case 0:
            case 1:
                this.k = i;
                requestLayout();
                return;
            default:
                throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
        }
    }

    public int getOrientation() {
        return this.k;
    }

    public void setStrokeColor(int i) {
        this.f4174c.setColor(i);
        invalidate();
    }

    public int getStrokeColor() {
        return this.f4174c.getColor();
    }

    public void setStrokeWidth(float f2) {
        this.f4174c.setStrokeWidth(f2);
        invalidate();
    }

    public float getStrokeWidth() {
        return this.f4174c.getStrokeWidth();
    }

    public void setRadius(float f2) {
        this.f4172a = f2;
        invalidate();
    }

    public float getRadius() {
        return this.f4172a;
    }

    public void setSnap(boolean z) {
        this.m = z;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        int height;
        int paddingTop;
        int paddingBottom;
        int paddingLeft;
        float f2;
        float f3;
        super.onDraw(canvas);
        if (this.f4176e != null && (count = this.f4176e.getAdapter().getCount()) != 0) {
            if (this.f4178g >= count) {
                setCurrentItem(count - 1);
                return;
            }
            if (this.k == 0) {
                height = getWidth();
                paddingTop = getPaddingLeft();
                paddingBottom = getPaddingRight();
                paddingLeft = getPaddingTop();
            } else {
                height = getHeight();
                paddingTop = getPaddingTop();
                paddingBottom = getPaddingBottom();
                paddingLeft = getPaddingLeft();
            }
            float f4 = this.f4172a * 3.0f;
            float f5 = this.f4172a + paddingLeft;
            float f6 = paddingTop + this.f4172a;
            if (this.l) {
                f6 += (((height - paddingTop) - paddingBottom) / 2.0f) - ((count * f4) / 2.0f);
            }
            float strokeWidth = this.f4172a;
            if (this.f4174c.getStrokeWidth() > 0.0f) {
                strokeWidth -= this.f4174c.getStrokeWidth() / 2.0f;
            }
            for (int i = 0; i < count; i++) {
                float f7 = (i * f4) + f6;
                if (this.k == 0) {
                    f3 = f7;
                    f7 = f5;
                } else {
                    f3 = f5;
                }
                if (this.f4173b.getAlpha() > 0) {
                    canvas.drawCircle(f3, f7, strokeWidth, this.f4173b);
                }
                if (strokeWidth != this.f4172a) {
                    canvas.drawCircle(f3, f7, this.f4172a, this.f4174c);
                }
            }
            float f8 = (this.m ? this.h : this.f4178g) * f4;
            if (!this.m) {
                f8 += this.i * f4;
            }
            if (this.k == 0) {
                f2 = f6 + f8;
            } else {
                float f9 = f6 + f8;
                f2 = f5;
                f5 = f9;
            }
            canvas.drawCircle(f2, f5, this.f4172a, this.f4175d);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        if (this.f4176e == null || this.f4176e.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        switch (action) {
            case 0:
                this.p = MotionEventCompat.getPointerId(motionEvent, 0);
                this.o = motionEvent.getX();
                return true;
            case 1:
            case 3:
                if (!this.q) {
                    int count = this.f4176e.getAdapter().getCount();
                    int width = getWidth();
                    float f2 = width / 2.0f;
                    float f3 = width / 6.0f;
                    if (this.f4178g > 0 && motionEvent.getX() < f2 - f3) {
                        if (action == 3) {
                            return true;
                        }
                        this.f4176e.setCurrentItem(this.f4178g - 1);
                        return true;
                    }
                    if (this.f4178g < count - 1 && motionEvent.getX() > f3 + f2) {
                        if (action == 3) {
                            return true;
                        }
                        this.f4176e.setCurrentItem(this.f4178g + 1);
                        return true;
                    }
                }
                this.q = false;
                this.p = -1;
                if (!this.f4176e.isFakeDragging()) {
                    return true;
                }
                this.f4176e.endFakeDrag();
                return true;
            case 2:
                float x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.p));
                float f4 = x - this.o;
                if (!this.q && Math.abs(f4) > this.n) {
                    this.q = true;
                }
                if (!this.q) {
                    return true;
                }
                this.o = x;
                if (!this.f4176e.isFakeDragging() && !this.f4176e.beginFakeDrag()) {
                    return true;
                }
                this.f4176e.fakeDragBy(f4);
                return true;
            case 4:
            default:
                return true;
            case 5:
                int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                this.o = MotionEventCompat.getX(motionEvent, actionIndex);
                this.p = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                return true;
            case 6:
                int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                if (MotionEventCompat.getPointerId(motionEvent, actionIndex2) == this.p) {
                    this.p = MotionEventCompat.getPointerId(motionEvent, actionIndex2 == 0 ? 1 : 0);
                }
                this.o = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.p));
                return true;
        }
    }

    public void setViewPager(ViewPager viewPager) {
        if (this.f4176e != viewPager) {
            if (this.f4176e != null) {
                this.f4176e.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() == null) {
                throw new IllegalStateException("ViewPager does not have adapter instance.");
            }
            this.f4176e = viewPager;
            this.f4176e.setOnPageChangeListener(this);
            invalidate();
        }
    }

    public void setCurrentItem(int i) {
        if (this.f4176e == null) {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        this.f4176e.setCurrentItem(i);
        this.f4178g = i;
        invalidate();
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        this.j = i;
        if (this.f4177f != null) {
            this.f4177f.onPageScrollStateChanged(i);
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f2, int i2) {
        this.f4178g = i;
        this.i = f2;
        invalidate();
        if (this.f4177f != null) {
            this.f4177f.onPageScrolled(i, f2, i2);
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        if (this.m || this.j == 0) {
            this.f4178g = i;
            this.h = i;
            invalidate();
        }
        if (this.f4177f != null) {
            this.f4177f.onPageSelected(i);
        }
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f4177f = onPageChangeListener;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.k == 0) {
            setMeasuredDimension(a(i), b(i2));
        } else {
            setMeasuredDimension(b(i), a(i2));
        }
    }

    private int a(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824 || this.f4176e == null) {
            return size;
        }
        int count = this.f4176e.getAdapter().getCount();
        int paddingLeft = (int) (((count - 1) * this.f4172a) + getPaddingLeft() + getPaddingRight() + (count * 2 * this.f4172a) + 1.0f);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(paddingLeft, size);
        }
        return paddingLeft;
    }

    private int b(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != 1073741824) {
            int paddingTop = (int) ((2.0f * this.f4172a) + getPaddingTop() + getPaddingBottom() + 1.0f);
            return mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
        }
        return size;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f4178g = savedState.f4179a;
        this.h = savedState.f4179a;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4179a = this.f4178g;
        return savedState;
    }

    class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new b();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f4179a;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f4179a = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4179a);
        }
    }
}
