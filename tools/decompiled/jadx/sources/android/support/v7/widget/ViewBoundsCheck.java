package android.support.v7.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
class ViewBoundsCheck {
    static final int CVE_PVE_POS = 12;
    static final int CVE_PVS_POS = 8;
    static final int CVS_PVE_POS = 4;
    static final int CVS_PVS_POS = 0;
    static final int EQ = 2;
    static final int FLAG_CVE_EQ_PVE = 8192;
    static final int FLAG_CVE_EQ_PVS = 512;
    static final int FLAG_CVE_GT_PVE = 4096;
    static final int FLAG_CVE_GT_PVS = 256;
    static final int FLAG_CVE_LT_PVE = 16384;
    static final int FLAG_CVE_LT_PVS = 1024;
    static final int FLAG_CVS_EQ_PVE = 32;
    static final int FLAG_CVS_EQ_PVS = 2;
    static final int FLAG_CVS_GT_PVE = 16;
    static final int FLAG_CVS_GT_PVS = 1;
    static final int FLAG_CVS_LT_PVE = 64;
    static final int FLAG_CVS_LT_PVS = 4;
    static final int GT = 1;
    static final int LT = 4;
    static final int MASK = 7;
    BoundFlags mBoundFlags = new BoundFlags();
    final Callback mCallback;

    interface Callback {
        View getChildAt(int i);

        int getChildCount();

        int getChildEnd(View view);

        int getChildStart(View view);

        View getParent();

        int getParentEnd();

        int getParentStart();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewBounds {
    }

    ViewBoundsCheck(Callback callback) {
        this.mCallback = callback;
    }

    class BoundFlags {
        int mBoundFlags = 0;
        int mChildEnd;
        int mChildStart;
        int mRvEnd;
        int mRvStart;

        BoundFlags() {
        }

        void setBounds(int i, int i2, int i3, int i4) {
            this.mRvStart = i;
            this.mRvEnd = i2;
            this.mChildStart = i3;
            this.mChildEnd = i4;
        }

        void setFlags(int i, int i2) {
            this.mBoundFlags = (this.mBoundFlags & (i2 ^ (-1))) | (i & i2);
        }

        void addFlags(int i) {
            this.mBoundFlags |= i;
        }

        void resetFlags() {
            this.mBoundFlags = 0;
        }

        int compare(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            if (i == i2) {
                return 2;
            }
            return 4;
        }

        boolean boundsMatch() {
            if ((this.mBoundFlags & 7) != 0 && (this.mBoundFlags & (compare(this.mChildStart, this.mRvStart) << 0)) == 0) {
                return false;
            }
            if ((this.mBoundFlags & 112) != 0 && (this.mBoundFlags & (compare(this.mChildStart, this.mRvEnd) << 4)) == 0) {
                return false;
            }
            if ((this.mBoundFlags & 1792) == 0 || (this.mBoundFlags & (compare(this.mChildEnd, this.mRvStart) << 8)) != 0) {
                return (this.mBoundFlags & 28672) == 0 || (this.mBoundFlags & (compare(this.mChildEnd, this.mRvEnd) << 12)) != 0;
            }
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View findOneViewWithinBoundFlags(int r9, int r10, int r11, int r12) {
        /*
            r8 = this;
            android.support.v7.widget.ViewBoundsCheck$Callback r0 = r8.mCallback
            int r3 = r0.getParentStart()
            android.support.v7.widget.ViewBoundsCheck$Callback r0 = r8.mCallback
            int r4 = r0.getParentEnd()
            if (r10 <= r9) goto L3e
            r0 = 1
        Lf:
            r2 = 0
        L10:
            if (r9 == r10) goto L57
            android.support.v7.widget.ViewBoundsCheck$Callback r1 = r8.mCallback
            android.view.View r1 = r1.getChildAt(r9)
            android.support.v7.widget.ViewBoundsCheck$Callback r5 = r8.mCallback
            int r5 = r5.getChildStart(r1)
            android.support.v7.widget.ViewBoundsCheck$Callback r6 = r8.mCallback
            int r6 = r6.getChildEnd(r1)
            android.support.v7.widget.ViewBoundsCheck$BoundFlags r7 = r8.mBoundFlags
            r7.setBounds(r3, r4, r5, r6)
            if (r11 == 0) goto L40
            android.support.v7.widget.ViewBoundsCheck$BoundFlags r5 = r8.mBoundFlags
            r5.resetFlags()
            android.support.v7.widget.ViewBoundsCheck$BoundFlags r5 = r8.mBoundFlags
            r5.addFlags(r11)
            android.support.v7.widget.ViewBoundsCheck$BoundFlags r5 = r8.mBoundFlags
            boolean r5 = r5.boundsMatch()
            if (r5 == 0) goto L40
        L3d:
            return r1
        L3e:
            r0 = -1
            goto Lf
        L40:
            if (r12 == 0) goto L59
            android.support.v7.widget.ViewBoundsCheck$BoundFlags r5 = r8.mBoundFlags
            r5.resetFlags()
            android.support.v7.widget.ViewBoundsCheck$BoundFlags r5 = r8.mBoundFlags
            r5.addFlags(r12)
            android.support.v7.widget.ViewBoundsCheck$BoundFlags r5 = r8.mBoundFlags
            boolean r5 = r5.boundsMatch()
            if (r5 == 0) goto L59
        L54:
            int r9 = r9 + r0
            r2 = r1
            goto L10
        L57:
            r1 = r2
            goto L3d
        L59:
            r1 = r2
            goto L54
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ViewBoundsCheck.findOneViewWithinBoundFlags(int, int, int, int):android.view.View");
    }

    boolean isViewWithinBoundFlags(View view, int i) {
        this.mBoundFlags.setBounds(this.mCallback.getParentStart(), this.mCallback.getParentEnd(), this.mCallback.getChildStart(view), this.mCallback.getChildEnd(view));
        if (i == 0) {
            return false;
        }
        this.mBoundFlags.resetFlags();
        this.mBoundFlags.addFlags(i);
        return this.mBoundFlags.boundsMatch();
    }
}
