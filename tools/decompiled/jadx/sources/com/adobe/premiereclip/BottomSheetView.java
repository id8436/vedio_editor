package com.adobe.premiereclip;

import android.app.Activity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import com.adobe.premiereclip.editor.EditorActivity;

/* JADX INFO: loaded from: classes2.dex */
public class BottomSheetView {
    public View background;
    private LinearLayout bottomSheetOptionsLayout;
    private Animation closeAnimation;
    private boolean open;
    private Animation openAnimation;

    public BottomSheetView(Activity activity) {
        if (activity instanceof EditorActivity) {
            this.bottomSheetOptionsLayout = (LinearLayout) activity.findViewById(R.id.bottom_sheet_options_view_editor);
        } else {
            this.bottomSheetOptionsLayout = (LinearLayout) activity.findViewById(R.id.bottom_sheet_options_view);
        }
        this.background = activity.findViewById(R.id.bottom_sheet_options_background);
        this.bottomSheetOptionsLayout.setVisibility(4);
        this.background.setVisibility(4);
        this.open = false;
        this.background.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.BottomSheetView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BottomSheetView.this.closeView();
            }
        });
    }

    public boolean isOpen() {
        return this.open;
    }

    public void openView() {
        if (!this.open) {
            this.open = true;
            if (this.openAnimation == null || this.closeAnimation == null) {
                initializeAnimations();
            }
            this.background.setVisibility(0);
            this.bottomSheetOptionsLayout.setVisibility(0);
            this.closeAnimation.cancel();
            this.bottomSheetOptionsLayout.startAnimation(this.openAnimation);
        }
    }

    public void closeView() {
        if (this.open) {
            this.open = false;
            this.openAnimation.cancel();
            this.background.setVisibility(4);
            this.bottomSheetOptionsLayout.startAnimation(this.closeAnimation);
        }
    }

    private void initializeAnimations() {
        this.openAnimation = new TranslateAnimation(0.0f, 0.0f, this.bottomSheetOptionsLayout.getHeight(), 0.0f);
        this.openAnimation.setDuration(200);
        this.closeAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, this.bottomSheetOptionsLayout.getHeight());
        this.closeAnimation.setDuration(200);
        this.closeAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.BottomSheetView.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                BottomSheetView.this.bottomSheetOptionsLayout.setVisibility(4);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
    }
}
