package com.behance.sdk.senab.photoview;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.widget.OverScroller;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScrollerProxy {
    public abstract boolean computeScrollOffset();

    public abstract void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    public abstract void forceFinished(boolean z);

    public abstract int getCurrX();

    public abstract int getCurrY();

    public static ScrollerProxy getScroller(Context context) {
        return Build.VERSION.SDK_INT < 9 ? new PreGingerScroller(context) : new GingerScroller(context);
    }

    @TargetApi(9)
    class GingerScroller extends ScrollerProxy {
        private OverScroller mScroller;

        public GingerScroller(Context context) {
            this.mScroller = new OverScroller(context);
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public boolean computeScrollOffset() {
            return this.mScroller.computeScrollOffset();
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.mScroller.fling(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public void forceFinished(boolean z) {
            this.mScroller.forceFinished(z);
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public int getCurrX() {
            return this.mScroller.getCurrX();
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public int getCurrY() {
            return this.mScroller.getCurrY();
        }
    }

    class PreGingerScroller extends ScrollerProxy {
        private Scroller mScroller;

        public PreGingerScroller(Context context) {
            this.mScroller = new Scroller(context);
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public boolean computeScrollOffset() {
            return this.mScroller.computeScrollOffset();
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.mScroller.fling(i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public void forceFinished(boolean z) {
            this.mScroller.forceFinished(z);
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public int getCurrX() {
            return this.mScroller.getCurrX();
        }

        @Override // com.behance.sdk.senab.photoview.ScrollerProxy
        public int getCurrY() {
            return this.mScroller.getCurrY();
        }
    }
}
