package com.adobe.premiereclip.editor.waveform;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.adobe.premiereclip.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class SoundWaveView extends RelativeLayout {
    private static final int NUM_PIXELS_EXTENDED = 30;
    private ArrayList<Bitmap> bitmaps;
    private int limit;
    private int pixelsBlockedAtEnd;
    private int screenH;
    private int screenW;
    private WaveScrollView scrollView;
    private WaveScrollListener waveScrollListener;

    public interface WaveScrollListener {
        void onScrolled(float f2);

        void onScrolling(float f2);
    }

    public SoundWaveView(Activity activity, Context context, WaveScrollListener waveScrollListener, int i, int i2, int i3) {
        super(context);
        this.limit = i;
        this.pixelsBlockedAtEnd = i3;
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.scrollView = new WaveScrollView(context, i2);
        this.scrollView.setHorizontalScrollBarEnabled(false);
        this.waveScrollListener = waveScrollListener;
        this.bitmaps = new ArrayList<>();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.screenW = point.x;
        this.screenH = (int) context.getResources().getDimension(R.dimen.soundwave_height);
        resetView();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void addBitmaps(ArrayList<Bitmap> arrayList) {
        removeAllViews();
        addView(this.scrollView);
        addDummyBitmap(true);
        this.bitmaps.addAll(arrayList);
        addDummyBitmap(false);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        linearLayout.setOrientation(0);
        this.scrollView.removeAllViews();
        this.scrollView.addView(linearLayout);
        for (Bitmap bitmap : this.bitmaps) {
            ImageView imageView = new ImageView(getContext());
            imageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
            imageView.setImageBitmap(bitmap);
            linearLayout.addView(imageView);
        }
        addTransparentHalf();
        this.scrollView.setTouchListener();
        invalidate();
        requestLayout();
    }

    public void resetView() {
        removeAllViews();
    }

    private void addTransparentHalf() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.screenW / 2, this.screenH, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(Color.argb(127, 255, 255, 255));
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.argb(255, 0, 0, 0));
        paint.setStrokeWidth(5.0f);
        paint.setStrokeCap(Paint.Cap.ROUND);
        canvas.drawLine(this.screenW / 2, 0.0f, this.screenW / 2, this.screenH, paint);
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(bitmapCreateBitmap);
        addView(imageView);
    }

    private void addDummyBitmap(boolean z) {
        int i;
        if (z) {
            i = this.screenW / 2;
        } else {
            i = (this.screenW / 2) - this.pixelsBlockedAtEnd;
        }
        if (i > 0) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, this.screenH, Bitmap.Config.ARGB_8888);
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(3.0f);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setColor(Color.argb(255, 112, 55, 161));
            paint.setAntiAlias(true);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawColor(-1);
            if (z) {
                canvas.drawLine((this.screenW / 2) - 30, this.screenH / 2, this.screenW / 2, this.screenH / 2, paint);
            } else {
                canvas.drawLine(0.0f, this.screenH / 2, 30.0f, this.screenH / 2, paint);
            }
            this.bitmaps.add(bitmapCreateBitmap);
        }
    }

    class WaveScrollView extends HorizontalScrollView {
        private int initialPosition;
        private int newCheck;
        private Runnable scrollerTask;
        private int startOffset;

        WaveScrollView(Context context, int i) {
            super(context);
            this.newCheck = 100;
            this.startOffset = i;
            this.scrollerTask = new Runnable() { // from class: com.adobe.premiereclip.editor.waveform.SoundWaveView.WaveScrollView.1
                @Override // java.lang.Runnable
                public void run() {
                    int scrollX = WaveScrollView.this.getScrollX();
                    if (WaveScrollView.this.initialPosition - scrollX == 0) {
                        if (scrollX >= 0 && scrollX <= SoundWaveView.this.limit) {
                            SoundWaveView.this.waveScrollListener.onScrolled(scrollX);
                            return;
                        }
                        return;
                    }
                    WaveScrollView.this.initialPosition = WaveScrollView.this.getScrollX();
                    WaveScrollView.this.postDelayed(WaveScrollView.this.scrollerTask, WaveScrollView.this.newCheck);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startScrollerTask() {
            this.initialPosition = getScrollX();
            postDelayed(this.scrollerTask, this.newCheck);
        }

        public void setTouchListener() {
            setOnTouchListener(new View.OnTouchListener() { // from class: com.adobe.premiereclip.editor.waveform.SoundWaveView.WaveScrollView.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        WaveScrollView.this.startScrollerTask();
                        return false;
                    }
                    return false;
                }
            });
        }

        @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            scrollBy(this.startOffset, 0);
        }

        @Override // android.view.View
        protected void onScrollChanged(int i, int i2, int i3, int i4) {
            Log.i("WaveScroll", "X from [" + i3 + "] to [" + i + "]");
            super.onScrollChanged(i, i2, i3, i4);
            int scrollX = getScrollX();
            if (scrollX >= 0 && scrollX <= SoundWaveView.this.limit) {
                SoundWaveView.this.waveScrollListener.onScrolling(scrollX);
            }
        }
    }
}
