package android.support.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class ArcMotion extends PathMotion {
    private static final float DEFAULT_MAX_ANGLE_DEGREES = 70.0f;
    private static final float DEFAULT_MAX_TANGENT = (float) Math.tan(Math.toRadians(35.0d));
    private static final float DEFAULT_MIN_ANGLE_DEGREES = 0.0f;
    private float mMaximumAngle;
    private float mMaximumTangent;
    private float mMinimumHorizontalAngle;
    private float mMinimumHorizontalTangent;
    private float mMinimumVerticalAngle;
    private float mMinimumVerticalTangent;

    public ArcMotion() {
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
    }

    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.ARC_MOTION);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        setMinimumVerticalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        setMinimumHorizontalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        setMaximumAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "maximumAngle", 2, DEFAULT_MAX_ANGLE_DEGREES));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setMinimumHorizontalAngle(float f2) {
        this.mMinimumHorizontalAngle = f2;
        this.mMinimumHorizontalTangent = toTangent(f2);
    }

    public float getMinimumHorizontalAngle() {
        return this.mMinimumHorizontalAngle;
    }

    public void setMinimumVerticalAngle(float f2) {
        this.mMinimumVerticalAngle = f2;
        this.mMinimumVerticalTangent = toTangent(f2);
    }

    public float getMinimumVerticalAngle() {
        return this.mMinimumVerticalAngle;
    }

    public void setMaximumAngle(float f2) {
        this.mMaximumAngle = f2;
        this.mMaximumTangent = toTangent(f2);
    }

    public float getMaximumAngle() {
        return this.mMaximumAngle;
    }

    private static float toTangent(float f2) {
        if (f2 < 0.0f || f2 > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f2 / 2.0f));
    }

    @Override // android.support.transition.PathMotion
    public Path getPath(float f2, float f3, float f4, float f5) {
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        Path path = new Path();
        path.moveTo(f2, f3);
        float f14 = f4 - f2;
        float f15 = f5 - f3;
        float f16 = (f15 * f15) + (f14 * f14);
        float f17 = (f2 + f4) / 2.0f;
        float f18 = (f3 + f5) / 2.0f;
        float f19 = f16 * 0.25f;
        boolean z = f3 > f5;
        if (Math.abs(f14) < Math.abs(f15)) {
            float fAbs = Math.abs(f16 / (2.0f * f15));
            if (z) {
                f12 = f5 + fAbs;
                f13 = f4;
            } else {
                f12 = f3 + fAbs;
                f13 = f2;
            }
            f8 = f13;
            f9 = f12;
            f10 = this.mMinimumVerticalTangent * f19 * this.mMinimumVerticalTangent;
        } else {
            float f20 = f16 / (f14 * 2.0f);
            if (z) {
                f6 = f2 + f20;
                f7 = f3;
            } else {
                f6 = f4 - f20;
                f7 = f5;
            }
            f8 = f6;
            f9 = f7;
            f10 = this.mMinimumHorizontalTangent * f19 * this.mMinimumHorizontalTangent;
        }
        float f21 = f17 - f8;
        float f22 = f18 - f9;
        float f23 = (f22 * f22) + (f21 * f21);
        float f24 = this.mMaximumTangent * f19 * this.mMaximumTangent;
        if (f23 >= f10) {
            f10 = f23 > f24 ? f24 : 0.0f;
        }
        if (f10 != 0.0f) {
            float fSqrt = (float) Math.sqrt(f10 / f23);
            f8 = ((f8 - f17) * fSqrt) + f17;
            f11 = f18 + (fSqrt * (f9 - f18));
        } else {
            f11 = f9;
        }
        path.cubicTo((f2 + f8) / 2.0f, (f3 + f11) / 2.0f, (f8 + f4) / 2.0f, (f11 + f5) / 2.0f, f4, f5);
        return path;
    }
}
