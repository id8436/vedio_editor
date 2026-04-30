package com.adobe.premiereclip.editor;

import android.app.Activity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import com.adobe.premiereclip.R;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class MediaCaptureOptionsView {
    private View background;
    private Animation closeAnimation;
    private OptionSelectionListener listener;
    private LinearLayout mediaCaptureOptionsLayout;
    private boolean open;
    private Animation openAnimation;

    public interface OptionSelectionListener {
        void optionSelected(int i);
    }

    public MediaCaptureOptionsView(Activity activity) {
        this.mediaCaptureOptionsLayout = (LinearLayout) activity.findViewById(R.id.media_capture_options_view);
        this.background = activity.findViewById(R.id.media_capture_options_background);
        this.mediaCaptureOptionsLayout.setVisibility(4);
        this.background.setVisibility(4);
        this.open = false;
        LinearLayout linearLayout = (LinearLayout) activity.findViewById(R.id.option_photo);
        d.a(linearLayout);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.MediaCaptureOptionsView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaCaptureOptionsView.this.listener != null) {
                    MediaCaptureOptionsView.this.listener.optionSelected(101);
                }
                MediaCaptureOptionsView.this.closeView();
            }
        });
        LinearLayout linearLayout2 = (LinearLayout) activity.findViewById(R.id.option_video);
        d.a(linearLayout2);
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.MediaCaptureOptionsView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaCaptureOptionsView.this.listener != null) {
                    MediaCaptureOptionsView.this.listener.optionSelected(102);
                }
                MediaCaptureOptionsView.this.closeView();
            }
        });
        this.background.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.MediaCaptureOptionsView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaCaptureOptionsView.this.closeView();
            }
        });
    }

    public void setListener(OptionSelectionListener optionSelectionListener) {
        this.listener = optionSelectionListener;
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
            this.mediaCaptureOptionsLayout.setVisibility(0);
            this.closeAnimation.cancel();
            this.mediaCaptureOptionsLayout.startAnimation(this.openAnimation);
        }
    }

    public void closeView() {
        if (this.open) {
            this.open = false;
            this.openAnimation.cancel();
            this.background.setVisibility(4);
            this.mediaCaptureOptionsLayout.startAnimation(this.closeAnimation);
        }
    }

    private void initializeAnimations() {
        this.openAnimation = new TranslateAnimation(0.0f, 0.0f, this.mediaCaptureOptionsLayout.getHeight(), 0.0f);
        this.openAnimation.setDuration(200);
        this.closeAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, this.mediaCaptureOptionsLayout.getHeight());
        this.closeAnimation.setDuration(200);
        this.closeAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.editor.MediaCaptureOptionsView.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MediaCaptureOptionsView.this.mediaCaptureOptionsLayout.setVisibility(4);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
    }
}
