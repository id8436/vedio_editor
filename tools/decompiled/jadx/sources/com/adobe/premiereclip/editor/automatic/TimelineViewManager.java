package com.adobe.premiereclip.editor.automatic;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.ConfirmDialog;
import com.adobe.premiereclip.project.Project;

/* JADX INFO: loaded from: classes2.dex */
public class TimelineViewManager {
    private Activity activity;
    private Animation closeAnimation;
    private LinearLayout headerLayout;
    private Listener listener;
    private boolean open;
    private Animation openAnimation;
    private Project project;
    private AutomaticTimeline timeline;
    private RelativeLayout timelineLayout;
    private View touchGuard;

    public interface Listener {
        void onTimelineClosed();
    }

    public TimelineViewManager(Activity activity, Project project) {
        this.activity = activity;
        this.project = project;
        this.headerLayout = (LinearLayout) this.activity.findViewById(R.id.auto_header);
        this.timelineLayout = (RelativeLayout) this.activity.findViewById(R.id.view_automatic_timeline);
        RelativeLayout relativeLayout = (RelativeLayout) this.activity.findViewById(R.id.autotimeline_view);
        this.timelineLayout.setVisibility(4);
        this.timeline = new AutomaticTimeline(this.activity, project.projectKey, relativeLayout);
        this.touchGuard = this.activity.findViewById(R.id.touch_guard);
        this.open = false;
    }

    public AutomaticTimeline getTimeline() {
        return this.timeline;
    }

    public boolean isOpen() {
        return this.open;
    }

    public void openTimeline() {
        if (!this.open) {
            this.open = true;
            if (animationsNotInitialized()) {
                initializeAnimations();
            }
            this.timelineLayout.setVisibility(0);
            this.closeAnimation.cancel();
            this.timelineLayout.startAnimation(this.openAnimation);
        }
    }

    public void closeTimeline() {
        if (this.open) {
            this.open = false;
            this.touchGuard.setVisibility(0);
            if (animationsNotInitialized()) {
                initializeAnimations();
            }
            this.openAnimation.cancel();
            this.headerLayout.setVisibility(0);
            this.timelineLayout.startAnimation(this.closeAnimation);
        }
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    private boolean animationsNotInitialized() {
        return this.openAnimation == null || this.closeAnimation == null;
    }

    private void initializeAnimations() {
        this.openAnimation = new TranslateAnimation(this.timelineLayout.getWidth(), 0.0f, 0.0f, 0.0f);
        this.openAnimation.setDuration(200);
        this.openAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.editor.automatic.TimelineViewManager.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                TimelineViewManager.this.headerLayout.setVisibility(4);
                TimelineViewManager.this.touchGuard.setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.closeAnimation = new TranslateAnimation(0.0f, this.timelineLayout.getWidth(), 0.0f, 0.0f);
        this.closeAnimation.setDuration(200);
        this.closeAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.editor.automatic.TimelineViewManager.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                TimelineViewManager.this.timelineLayout.setVisibility(4);
                TimelineViewManager.this.touchGuard.setVisibility(8);
                if (TimelineViewManager.this.listener != null) {
                    TimelineViewManager.this.listener.onTimelineClosed();
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
    }

    public void onClickDelete(Context context) {
        ConfirmDialog confirmDialog = new ConfirmDialog(context, context.getString(R.string.delete_clip_title), context.getString(R.string.delete_clip_message), true);
        confirmDialog.setAcceptButton(context.getString(R.string.delete_positive), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.editor.automatic.TimelineViewManager.3
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                TimelineViewManager.this.onConfirmDelete();
            }
        });
        confirmDialog.setRejectButton(context.getString(R.string.delete_negative), null);
        confirmDialog.show();
    }

    public void onConfirmDelete() {
        this.timeline.removeClip(this.timeline.getCurrentClipIndex());
    }

    public void onAssetsAdded(int i) {
        this.timeline.setClips(this.project.getSequence().getClips(), i);
        this.timeline.saveCurrentClipIndex(i);
        this.timeline.setActiveClipIndex(i, true);
    }
}
