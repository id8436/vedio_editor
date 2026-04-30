package com.behance.sdk.ui.animations;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.support.design.widget.FloatingActionButton;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKFabToBarAnimator {
    private View bar;
    private Context context;
    private FloatingActionButton fab;
    private boolean open = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f1262f = 1;
    private static final int animDurationOne = f1262f * 150;
    private static final int animDurationTwo = f1262f * 225;
    private static final int animDurationThree = f1262f * 300;

    public static BehanceSDKFabToBarAnimator getInstance(Context context, FloatingActionButton floatingActionButton, View view) {
        BehanceSDKFabToBarAnimator behanceSDKFabToBarAnimator = new BehanceSDKFabToBarAnimator();
        behanceSDKFabToBarAnimator.setBar(view);
        behanceSDKFabToBarAnimator.setFab(floatingActionButton);
        behanceSDKFabToBarAnimator.setContext(context);
        return behanceSDKFabToBarAnimator;
    }

    public void fabToBar() {
        if (!this.open) {
            animateFabToBar();
        }
    }

    public void barToFab() {
        if (this.open) {
            animateBarToFab();
        }
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public void setFab(FloatingActionButton floatingActionButton) {
        this.fab = floatingActionButton;
    }

    public void setBar(View view) {
        this.bar = view;
    }

    @TargetApi(21)
    private void animateFabToBar() {
        this.fab.setEnabled(false);
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.context.getResources().getColor(R.color.bsdk_behance_blue)), Integer.valueOf(this.context.getResources().getColor(R.color.bsdk_card_color)));
        valueAnimatorOfObject.setDuration(animDurationOne);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.behance.sdk.ui.animations.BehanceSDKFabToBarAnimator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BehanceSDKFabToBarAnimator.this.fab.setBackgroundTintList(ColorStateList.valueOf(((Integer) valueAnimator.getAnimatedValue()).intValue()));
                BehanceSDKFabToBarAnimator.this.bar.setBackgroundColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        this.fab.animate().translationY(this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_fab_to_bar_anim_y_translation)).setDuration(animDurationTwo).setStartDelay(0L).setInterpolator(new AccelerateDecelerateInterpolator()).start();
        this.fab.animate().setDuration(animDurationTwo).setStartDelay(0L).translationX((-this.bar.getWidth()) / 3).setInterpolator(new AccelerateInterpolator(2.0f)).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.behance.sdk.ui.animations.BehanceSDKFabToBarAnimator.2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f1263b = false;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (!this.f1263b && BehanceSDKFabToBarAnimator.this.fab.getX() < (BehanceSDKFabToBarAnimator.this.bar.getWidth() * 3) / 4) {
                    this.f1263b = true;
                    Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(BehanceSDKFabToBarAnimator.this.bar, BehanceSDKFabToBarAnimator.this.bar.getWidth() / 2, BehanceSDKFabToBarAnimator.this.bar.getHeight() / 2, 0.0f, (float) Math.hypot(BehanceSDKFabToBarAnimator.this.bar.getWidth() / 2, BehanceSDKFabToBarAnimator.this.bar.getHeight()));
                    BehanceSDKFabToBarAnimator.this.bar.setVisibility(0);
                    animatorCreateCircularReveal.setInterpolator(new DecelerateInterpolator(1.5f));
                    if (BehanceSDKFabToBarAnimator.this.bar.getVisibility() == 0) {
                        animatorCreateCircularReveal.setDuration(BehanceSDKFabToBarAnimator.animDurationThree);
                        animatorCreateCircularReveal.addListener(new Animator.AnimatorListener() { // from class: com.behance.sdk.ui.animations.BehanceSDKFabToBarAnimator.2.1
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                BehanceSDKFabToBarAnimator.this.open = true;
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }
                        });
                        BehanceSDKFabToBarAnimator.this.bar.setTranslationX((BehanceSDKFabToBarAnimator.this.fab.getX() + (BehanceSDKFabToBarAnimator.this.fab.getWidth() / 2)) - (BehanceSDKFabToBarAnimator.this.bar.getWidth() / 2));
                        BehanceSDKFabToBarAnimator.this.bar.setScaleX(0.5f);
                        BehanceSDKFabToBarAnimator.this.bar.animate().translationX(0.0f).setDuration(BehanceSDKFabToBarAnimator.animDurationThree).setInterpolator(new DecelerateInterpolator(1.8f)).start();
                        BehanceSDKFabToBarAnimator.this.bar.animate().setDuration(BehanceSDKFabToBarAnimator.animDurationThree).scaleX(1.0f).setInterpolator(new DecelerateInterpolator(1.2f)).start();
                        animatorCreateCircularReveal.start();
                        BehanceSDKFabToBarAnimator.this.bar.setEnabled(true);
                    }
                }
            }
        }).start();
        valueAnimatorOfObject.start();
    }

    @TargetApi(21)
    private void animateBarToFab() {
        this.bar.setEnabled(false);
        final ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.context.getResources().getColor(R.color.bsdk_card_color)), Integer.valueOf(this.context.getResources().getColor(R.color.bsdk_behance_blue)));
        valueAnimatorOfObject.setDuration(animDurationOne);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.behance.sdk.ui.animations.BehanceSDKFabToBarAnimator.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BehanceSDKFabToBarAnimator.this.fab.setBackgroundTintList(ColorStateList.valueOf(((Integer) valueAnimator.getAnimatedValue()).intValue()));
            }
        });
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(this.bar, this.bar.getWidth() / 2, this.bar.getHeight() / 2, (float) Math.hypot(this.bar.getWidth() / 2, this.bar.getHeight()), 0.0f);
        this.bar.setVisibility(0);
        animatorCreateCircularReveal.setInterpolator(new AccelerateInterpolator(1.5f));
        if (this.bar.getVisibility() == 0) {
            animatorCreateCircularReveal.setDuration(animDurationThree);
            animatorCreateCircularReveal.addListener(new Animator.AnimatorListener() { // from class: com.behance.sdk.ui.animations.BehanceSDKFabToBarAnimator.4
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BehanceSDKFabToBarAnimator.this.bar.setVisibility(4);
                    valueAnimatorOfObject.start();
                    BehanceSDKFabToBarAnimator.this.fab.setEnabled(true);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }
            });
            animatorCreateCircularReveal.start();
            this.bar.animate().translationX(this.bar.getWidth() / 3).setDuration(animDurationThree).setInterpolator(new AccelerateInterpolator(1.8f)).start();
            this.bar.animate().setDuration(animDurationThree).scaleX(0.5f).setInterpolator(new AccelerateInterpolator(1.2f)).start();
            this.fab.animate().setStartDelay(animDurationTwo).setDuration(animDurationTwo).translationY(0.0f).setInterpolator(new AccelerateDecelerateInterpolator()).start();
            this.fab.animate().setStartDelay(animDurationTwo).setDuration(animDurationTwo).translationX(0.0f).setInterpolator(new DecelerateInterpolator(2.0f)).setListener(new Animator.AnimatorListener() { // from class: com.behance.sdk.ui.animations.BehanceSDKFabToBarAnimator.5
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BehanceSDKFabToBarAnimator.this.open = false;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }
            }).start();
        }
    }
}
