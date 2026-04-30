package com.adobe.premiereclip.mediabrowser;

import android.app.Activity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import com.adobe.premiereclip.R;

/* JADX INFO: loaded from: classes2.dex */
public class MediaSelectorView {
    public static final int OPTION_CC = 101;
    public static final int OPTION_DROPBOX = 103;
    public static final int OPTION_GOOGLE_DRIVE = 102;
    private View background;
    private Animation closeAnimation;
    private OptionSelectionListener listener;
    private LinearLayout mediaSelectorLayout;
    private boolean open;
    private Animation openAnimation;

    public interface OptionSelectionListener {
        void optionSelected(int i);
    }

    public MediaSelectorView(Activity activity) {
        this.mediaSelectorLayout = (LinearLayout) activity.findViewById(R.id.media_options_view);
        this.background = activity.findViewById(R.id.media_options_background);
        this.mediaSelectorLayout.setVisibility(4);
        this.background.setVisibility(4);
        this.open = false;
        setOptionListener(activity, R.id.media_option_cc, 101);
        setOptionListener(activity, R.id.media_option_google_drive, 102);
        setOptionListener(activity, R.id.media_option_dropbox, 103);
        this.background.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.MediaSelectorView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaSelectorView.this.closeView();
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
            this.mediaSelectorLayout.setVisibility(0);
            this.closeAnimation.cancel();
            this.mediaSelectorLayout.startAnimation(this.openAnimation);
        }
    }

    public void closeView() {
        if (this.open) {
            this.open = false;
            this.openAnimation.cancel();
            this.background.setVisibility(4);
            this.mediaSelectorLayout.startAnimation(this.closeAnimation);
        }
    }

    private void setOptionListener(Activity activity, int i, final int i2) {
        activity.findViewById(i).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.MediaSelectorView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaSelectorView.this.listener != null) {
                    MediaSelectorView.this.listener.optionSelected(i2);
                }
            }
        });
    }

    private void initializeAnimations() {
        this.openAnimation = new TranslateAnimation(0.0f, 0.0f, this.mediaSelectorLayout.getHeight(), 0.0f);
        this.openAnimation.setDuration(200);
        this.closeAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, this.mediaSelectorLayout.getHeight());
        this.closeAnimation.setDuration(200);
        this.closeAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.mediabrowser.MediaSelectorView.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MediaSelectorView.this.mediaSelectorLayout.setVisibility(4);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
    }
}
