package com.adobe.premiereclip.coachmarks;

import android.app.Activity;
import android.graphics.PointF;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dialogs.BaseDialog;
import com.adobe.utility.FontUtils;
import com.h.a.a;
import com.h.a.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CoachMarks {
    private static int instanceCount = 0;
    private Activity activity;
    private boolean animationInprogress;
    private View coachView;
    private Listener listener;
    private WindowManager mWM;
    private ViewGroup parentContainer;
    private a tfCollection;
    private final WindowManager.LayoutParams mParams = new WindowManager.LayoutParams();
    private Handler handler = new Handler();
    private PointF animationPivot = new PointF(0.0f, 0.0f);

    public interface Listener {
        boolean isViewAvailable();
    }

    static /* synthetic */ int access$008() {
        int i = instanceCount;
        instanceCount = i + 1;
        return i;
    }

    public class CoachmarkParam {
        public String PrefKey;
        public Integer X;
        public Integer Y;
        public View attachToView;
        public boolean bAtCentre;
        public String body;
        public long delay;
        public boolean okMsg;
        public String title;
        public Integer trianglePaddingX;

        public CoachmarkParam(String str, String str2, String str3, View view, boolean z, Integer num, Integer num2, Integer num3, boolean z2) {
            this.title = str;
            this.body = str2;
            this.attachToView = view;
            this.bAtCentre = z;
            this.X = Integer.valueOf(num == null ? 0 : num.intValue());
            this.Y = Integer.valueOf(num2 == null ? 0 : num2.intValue());
            this.okMsg = z2;
            this.trianglePaddingX = Integer.valueOf(num3 != null ? num3.intValue() : 0);
            this.delay = 200L;
            this.PrefKey = str3;
        }
    }

    public CoachMarks(Activity activity, boolean z) {
        this.activity = activity;
        FontUtils.getInstance().initializeTypefaceCollections(activity);
        this.tfCollection = FontUtils.getInstance().getAdobeCleanLightTypefaceCollection();
        this.mWM = (WindowManager) activity.getSystemService("window");
        this.mParams.x = 0;
        this.mParams.y = 0;
        this.mParams.format = -3;
        this.mParams.gravity = 51;
        this.mParams.width = -1;
        this.mParams.height = -1;
        this.mParams.type = 2;
        this.mParams.flags = 136;
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    public int getStatusBarHeight() {
        int identifier = this.activity.getResources().getIdentifier("status_bar_height", "dimen", c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE);
        if (identifier <= 0) {
            return 0;
        }
        return this.activity.getResources().getDimensionPixelSize(identifier);
    }

    public void showCoachMarkWithNext(List<CoachmarkParam> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<CoachmarkParam> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(calculateLocation(it.next()));
        }
        showCoachMarkWithFlags(arrayList, 0);
    }

    public void showCoachMarkWithOk(CoachmarkParam coachmarkParam) {
        CoachmarkParam coachmarkParamCalculateLocation = calculateLocation(coachmarkParam);
        ArrayList arrayList = new ArrayList();
        arrayList.add(coachmarkParamCalculateLocation);
        showCoachMarkWithFlags(arrayList, 0);
    }

    private CoachmarkParam calculateLocation(CoachmarkParam coachmarkParam) {
        int i;
        int statusBarHeight = getStatusBarHeight();
        int heightInPx = ((int) ScreenUtil.getHeightInPx(1)) - statusBarHeight;
        int[] iArr = new int[2];
        coachmarkParam.attachToView.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1] - statusBarHeight;
        int width = coachmarkParam.attachToView.getWidth();
        int height = coachmarkParam.attachToView.getHeight();
        int i4 = i2 + (width / 2);
        if (coachmarkParam.bAtCentre) {
            int height2 = (height / 2) + i3 + (coachmarkParam.attachToView.getHeight() / 2);
            Boolean.valueOf(height2 < heightInPx / 2);
            i = height2;
        } else {
            int i5 = i3 > (heightInPx - i3) - height ? i3 : i3 + height;
            Boolean.valueOf(i3 <= (heightInPx - i3) - height);
            i = i5;
        }
        coachmarkParam.X = Integer.valueOf(coachmarkParam.X.intValue() + i4);
        coachmarkParam.Y = Integer.valueOf(i + coachmarkParam.Y.intValue());
        return coachmarkParam;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoachMarkWithFlags(final List<CoachmarkParam> list, final int i) {
        if (i != list.size()) {
            final CoachmarkParam coachmarkParam = list.get(i);
            this.handler.postDelayed(new Runnable() { // from class: com.adobe.premiereclip.coachmarks.CoachMarks.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CoachMarks.instanceCount != 0) {
                        CoachMarks.this.handler.postDelayed(this, 1000L);
                        return;
                    }
                    if (CoachMarks.this.performViewCheck(coachmarkParam, this) && ClipPreferences.getInstance(CoachMarks.this.activity).getPreference(coachmarkParam.PrefKey, true)) {
                        CoachMarks.this.parentContainer = new FrameLayout(CoachMarks.this.activity);
                        BackgroundOverlay backgroundOverlay = new BackgroundOverlay(CoachMarks.this.activity);
                        final CoachMarksFullScreenContainer coachMarksFullScreenContainer = new CoachMarksFullScreenContainer(CoachMarks.this.activity, coachmarkParam.X.intValue(), coachmarkParam.Y.intValue(), coachmarkParam.trianglePaddingX.intValue(), Boolean.valueOf(coachmarkParam.bAtCentre));
                        CoachMarks.this.mWM.addView(CoachMarks.this.parentContainer, CoachMarks.this.mParams);
                        CoachMarks.this.addOverlay(backgroundOverlay);
                        CoachMarks.this.coachView = coachMarksFullScreenContainer;
                        TextView textView = (TextView) coachMarksFullScreenContainer.findViewById(R.id.title_msg);
                        TextView textView2 = (TextView) coachMarksFullScreenContainer.findViewById(R.id.body_msg);
                        TextView textView3 = (TextView) coachMarksFullScreenContainer.findViewById(R.id.ok_msg);
                        d.a(textView, CoachMarks.this.tfCollection);
                        d.a(textView2, CoachMarks.this.tfCollection);
                        d.a(textView3, CoachMarks.this.tfCollection);
                        textView.setText(coachmarkParam.title);
                        textView2.setText(coachmarkParam.body);
                        if (!coachmarkParam.okMsg) {
                            textView3.setText(R.string.coachmark_next);
                        }
                        CoachMarks.this.animationInprogress = false;
                        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.coachmarks.CoachMarks.1.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                if (!CoachMarks.this.animationInprogress) {
                                    CoachMarks.this.scaleDownAnimation(coachMarksFullScreenContainer, coachmarkParam);
                                    CoachMarks.this.showCoachMarkWithFlags(list, i + 1);
                                }
                            }
                        });
                        backgroundOverlay.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.coachmarks.CoachMarks.1.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                if (!CoachMarks.this.animationInprogress) {
                                    CoachMarks.this.scaleDownAnimation(coachMarksFullScreenContainer, coachmarkParam);
                                    CoachMarks.this.showCoachMarkWithFlags(list, i + 1);
                                }
                            }
                        });
                        CoachMarks.this.parentContainer.addView(coachMarksFullScreenContainer, CoachMarks.this.mParams);
                        PointF absoluteTriangleTip = coachMarksFullScreenContainer.getAbsoluteTriangleTip();
                        CoachMarks.this.animationPivot.set(absoluteTriangleTip.x, absoluteTriangleTip.y);
                        Log.e("Pivot", absoluteTriangleTip.x + " " + absoluteTriangleTip.y);
                        CoachMarks.access$008();
                        CoachMarks.this.scaleUpAnimation(coachMarksFullScreenContainer, coachmarkParam, this);
                    }
                }
            }, coachmarkParam.delay);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOverlay(View view) {
        if (instanceCount == 0) {
            this.parentContainer.addView(view, this.mParams);
        }
    }

    private void removeOverlay() {
        if (instanceCount == 0) {
            this.parentContainer.removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeViews() {
        if (this.parentContainer != null) {
            removeOverlay();
            this.mWM.removeView(this.parentContainer);
            this.parentContainer = null;
            instanceCount--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scaleUpAnimation(View view, final CoachmarkParam coachmarkParam, final Runnable runnable) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 0, this.animationPivot.x, 0, this.animationPivot.y);
        scaleAnimation.setDuration(300L);
        scaleAnimation.setFillAfter(true);
        view.startAnimation(scaleAnimation);
        scaleAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.coachmarks.CoachMarks.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                CoachMarks.this.performViewCheck(coachmarkParam, runnable);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                CoachMarks.this.performViewCheck(coachmarkParam, runnable);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scaleDownAnimation(View view, final CoachmarkParam coachmarkParam) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 0, this.animationPivot.x, 0, this.animationPivot.y);
        scaleAnimation.setDuration(300L);
        scaleAnimation.setFillAfter(true);
        view.startAnimation(scaleAnimation);
        scaleAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.coachmarks.CoachMarks.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                CoachMarks.this.animationInprogress = true;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                CoachMarks.this.removeViews();
                CoachMarks.this.animationInprogress = false;
                ClipPreferences.getInstance(CoachMarks.this.activity).setPreference(coachmarkParam.PrefKey, false);
            }
        });
    }

    public Handler getHandler() {
        return this.handler;
    }

    public void onBackPressed() {
        removeViews();
        this.handler.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean performViewCheck(CoachmarkParam coachmarkParam, Runnable runnable) {
        if (!BaseDialog.isOpen() && coachmarkParam.attachToView.isShown() && (this.listener == null || this.listener.isViewAvailable())) {
            return true;
        }
        removeViews();
        this.handler.postDelayed(runnable, 3000L);
        return false;
    }
}
