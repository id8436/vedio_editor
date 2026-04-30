package com.adobe.premiereclip.coachmarks;

import android.content.Context;
import android.graphics.PointF;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.adobe.premiereclip.R;

/* JADX INFO: loaded from: classes2.dex */
public class CoachMarksFullScreenContainer extends RelativeLayout {
    private static int bgColor = ViewCompat.MEASURED_SIZE_MASK;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f641b;
    private int caretX;
    private int caretY;
    private CoachMarksCustomView drawable_View;
    private int l;
    private View msg_container;
    private int paddingX;
    private int paddingY;
    private Boolean proposedDirection;
    private int r;
    private int t;
    private float tipTrianglePaddingX;
    private int userTrianglePaddingX;

    public CoachMarksFullScreenContainer(Context context, int i, int i2, int i3, Boolean bool) {
        super(context);
        this.msg_container = null;
        this.drawable_View = null;
        this.paddingX = 0;
        this.paddingY = 0;
        this.tipTrianglePaddingX = 0.0f;
        this.proposedDirection = null;
        this.caretX = 0;
        this.caretY = 0;
        this.userTrianglePaddingX = 0;
        this.proposedDirection = bool;
        this.caretX = i;
        this.caretY = i2;
        setBackgroundColor(bgColor);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.coach_marks, (ViewGroup) this, true);
        this.drawable_View = (CoachMarksCustomView) findViewById(R.id.drawable_View);
        this.msg_container = findViewById(R.id.msg_container);
        this.paddingX = this.drawable_View.getPaddingLeft();
        this.paddingY = this.drawable_View.getPaddingTop();
        this.tipTrianglePaddingX = this.drawable_View.getTriangleTipPadding();
        this.userTrianglePaddingX = i3;
    }

    private void calculateDimensions() {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int measuredWidth2 = this.msg_container.getMeasuredWidth();
        int measuredHeight2 = this.msg_container.getMeasuredHeight();
        if (this.caretX < this.tipTrianglePaddingX) {
            this.caretX = (int) this.tipTrianglePaddingX;
        }
        if (this.caretX > measuredWidth - this.tipTrianglePaddingX) {
            this.caretX = measuredWidth - ((int) this.tipTrianglePaddingX);
        }
        if (this.proposedDirection != null) {
            if (!this.proposedDirection.booleanValue() && this.caretY < (this.paddingY * 2) + measuredHeight2) {
                this.caretY = (this.paddingY * 2) + measuredHeight2;
            }
            if (this.proposedDirection.booleanValue() && measuredHeight - this.caretY < (this.paddingY * 2) + measuredHeight2) {
                this.caretY = (measuredHeight - measuredHeight2) + (this.paddingY * 2);
            }
        }
        this.drawable_View.setTipPosition(this.caretX + this.userTrianglePaddingX, this.caretY);
        this.l = (this.caretX - (measuredWidth2 / 2)) - this.paddingX;
        this.r = this.l + measuredWidth2 + (this.paddingX * 2);
        this.f641b = this.caretY;
        this.t = (this.f641b - measuredHeight2) - (this.paddingY * 2);
        if (this.proposedDirection != null && this.proposedDirection.booleanValue()) {
            this.t = this.caretY;
            this.f641b = this.t + measuredHeight2 + (this.paddingY * 2);
        }
        if (this.caretX < (measuredWidth2 / 2) + this.paddingX) {
            this.l = 0;
            this.r = this.l + measuredWidth2 + (this.paddingX * 2);
        } else if ((measuredWidth - (measuredWidth2 / 2)) + this.paddingX < this.caretX) {
            this.r = measuredWidth;
            this.l = (this.r - measuredWidth2) - (this.paddingX * 2);
        }
        if (this.proposedDirection == null) {
            if (this.caretY < measuredHeight / 2) {
                this.t = this.caretY;
                this.f641b = this.t + measuredHeight2 + (this.paddingY * 2);
                this.drawable_View.setTipDirection(true);
                return;
            }
            return;
        }
        this.drawable_View.setTipDirection(this.proposedDirection.booleanValue());
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        calculateDimensions();
        this.drawable_View.layout(this.l, this.t, this.r, this.f641b);
        this.msg_container.layout(this.l + this.paddingX, this.t + this.paddingY, this.r - this.paddingX, this.f641b - this.paddingY);
    }

    public PointF getAbsoluteTriangleTip() {
        PointF triangleTip = this.drawable_View.getTriangleTip(this.proposedDirection == null ? true : this.proposedDirection.booleanValue());
        PointF pointF = new PointF();
        pointF.set(this.l + triangleTip.x + this.caretX + this.userTrianglePaddingX, triangleTip.y + this.t + this.caretY);
        return pointF;
    }
}
