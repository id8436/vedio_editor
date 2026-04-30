package com.adobe.premiereclip.coachmarks;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.adobe.premiereclip.R;

/* JADX INFO: loaded from: classes2.dex */
public class CoachMarksCustomView extends View {
    private static final int DEF_CORNER_RADIUS = 24;
    private static final int DEF_FILL_COLOR = -16730471;
    private static final int DEF_STROKE_COLOR = -16776992;
    private static final int DEF_STROKE_WIDTH = 9;
    private boolean bUpward;
    private Path basePath;
    private Paint baseStrokePaint;
    private int caretX;
    private int caretY;
    private Bitmap mBitmap;
    private float mCornerRadius;
    private int mFillColor;
    private int mStrokeColor;
    private float mStrokeWidth;
    private Paint modePaint;
    private Path nonBasePath;
    private PointF pA;
    private PointF pB;
    private PointF pC;
    private int padX;
    private int padY;
    private PorterDuffXfermode porterDuffXfermodeClear;
    private RectF rect;
    private float[] shadowOffsetRectangle;
    private float[] shadowOffsetTriangle;
    private float shadowRadiusRectangle;
    private float shadowRadiusTriangle;
    private Paint solidPaint;
    private float strokeJoinDelta;
    private Paint strokePaint;
    private float triBaseLengthHalf;
    private Path trianglePath;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoachMarksCustomView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i = DEF_FILL_COLOR;
        this.padX = 0;
        this.padY = 0;
        this.strokeJoinDelta = 0.0f;
        this.caretX = 0;
        this.caretY = 0;
        this.bUpward = false;
        this.mFillColor = 0;
        this.mStrokeColor = 0;
        this.mStrokeWidth = 0.0f;
        this.mCornerRadius = 0.0f;
        this.triBaseLengthHalf = 0.0f;
        this.pA = new PointF();
        this.pB = new PointF();
        this.pC = new PointF();
        this.basePath = new Path();
        this.nonBasePath = new Path();
        this.trianglePath = new Path();
        this.rect = new RectF();
        this.modePaint = new Paint();
        this.solidPaint = new Paint();
        this.strokePaint = new Paint();
        this.baseStrokePaint = new Paint();
        this.porterDuffXfermodeClear = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.shadowOffsetRectangle = new float[]{0.0f, 1.0f};
        this.shadowOffsetTriangle = new float[]{0.0f, 1.0f};
        this.shadowRadiusRectangle = 13.0f;
        this.shadowRadiusTriangle = 12.0f;
        this.mBitmap = null;
        this.padX = getPaddingLeft();
        this.padY = getPaddingTop();
        this.triBaseLengthHalf = (this.padY * 2.0f) / 3.0f;
        TypedArray typedArrayObtainStyledAttributes = attributeSet != null ? context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.CoachMarksCustomView, 0, 0) : null;
        this.mFillColor = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getColor(0, DEF_FILL_COLOR) : i;
        this.mStrokeColor = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getColor(1, DEF_STROKE_COLOR) : DEF_STROKE_COLOR;
        this.mStrokeWidth = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 9) : 9.0f;
        this.mCornerRadius = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 24) : 24.0f;
        this.strokeJoinDelta = this.mStrokeWidth * 4.0f;
    }

    public float getTriangleTipPadding() {
        return this.padX + this.mCornerRadius + this.triBaseLengthHalf;
    }

    public void setTipPosition(int i, int i2) {
        this.caretX = i;
        this.caretY = i2;
    }

    public void setTipDirection(boolean z) {
        this.bUpward = z;
    }

    private void setCoachmarkBitmap(Canvas canvas) {
        int left = getLeft();
        int top = getTop();
        int width = getWidth();
        int height = getHeight();
        this.mBitmap = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(this.mBitmap);
        this.rect.set(this.padX, this.padY, width - this.padX, height - this.padY);
        setLayerType(1, null);
        this.solidPaint.setStyle(Paint.Style.FILL);
        this.solidPaint.setColor(this.mFillColor);
        this.solidPaint.setAntiAlias(true);
        this.solidPaint.setShadowLayer(this.shadowRadiusRectangle, this.shadowOffsetRectangle[0], this.shadowOffsetRectangle[1], getResources().getColor(R.color.coachmark_shadow));
        canvas2.drawRoundRect(this.rect, this.mCornerRadius, this.mCornerRadius, this.solidPaint);
        this.solidPaint.clearShadowLayer();
        this.strokePaint.setStyle(Paint.Style.STROKE);
        this.strokePaint.setStrokeJoin(Paint.Join.ROUND);
        this.strokePaint.setStrokeWidth(this.mStrokeWidth);
        this.strokePaint.setColor(this.mStrokeColor);
        this.strokePaint.setAntiAlias(true);
        canvas2.drawRoundRect(this.rect, this.mCornerRadius, this.mCornerRadius, this.strokePaint);
        if (this.bUpward) {
            this.pA.set((this.caretX - this.triBaseLengthHalf) - left, this.padY);
            this.pB.set(this.caretX - left, (int) this.strokeJoinDelta);
            this.pC.set((this.caretX + this.triBaseLengthHalf) - left, this.padY);
        } else {
            this.pA.set((this.caretX - this.triBaseLengthHalf) - left, (this.caretY - this.padY) - top);
            this.pB.set(this.caretX - left, (this.caretY - top) - ((int) this.strokeJoinDelta));
            this.pC.set((this.caretX + this.triBaseLengthHalf) - left, (this.caretY - this.padY) - top);
        }
        this.trianglePath.moveTo(this.pA.x, this.pA.y);
        this.trianglePath.lineTo(this.pB.x, this.pB.y);
        this.trianglePath.lineTo(this.pC.x, this.pC.y);
        this.trianglePath.close();
        this.solidPaint.setShadowLayer(this.shadowRadiusTriangle, this.shadowOffsetTriangle[0], this.bUpward ? -this.shadowOffsetTriangle[1] : this.shadowOffsetTriangle[1], getResources().getColor(R.color.coachmark_triangle_shadow));
        canvas2.drawPath(this.trianglePath, this.solidPaint);
        this.solidPaint.clearShadowLayer();
        this.solidPaint.setStyle(Paint.Style.FILL);
        this.solidPaint.setColor(this.mFillColor);
        this.solidPaint.setAntiAlias(true);
        this.solidPaint.setShadowLayer(0.0f, this.shadowOffsetRectangle[0], this.shadowOffsetRectangle[1], getResources().getColor(R.color.coachmark_shadow));
        canvas2.drawRoundRect(this.rect, this.mCornerRadius, this.mCornerRadius, this.solidPaint);
        this.solidPaint.clearShadowLayer();
        this.basePath.moveTo(this.pA.x, this.pA.y);
        this.basePath.lineTo(this.pC.x, this.pC.y);
        this.nonBasePath.moveTo(this.pA.x - (this.mStrokeWidth / 3.0f), this.pA.y);
        this.nonBasePath.lineTo(this.pB.x, this.pB.y);
        this.nonBasePath.lineTo(this.pC.x + (this.mStrokeWidth / 3.0f), this.pC.y);
        canvas2.drawPath(this.nonBasePath, this.strokePaint);
        setLayerType(2, null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mBitmap == null) {
            setCoachmarkBitmap(canvas);
        }
        canvas.drawBitmap(this.mBitmap, new Matrix(), new Paint());
    }

    public PointF getTriangleTip(boolean z) {
        int left = getLeft();
        return z ? new PointF(-left, (int) this.strokeJoinDelta) : new PointF(-left, (-getTop()) - ((int) this.strokeJoinDelta));
    }
}
