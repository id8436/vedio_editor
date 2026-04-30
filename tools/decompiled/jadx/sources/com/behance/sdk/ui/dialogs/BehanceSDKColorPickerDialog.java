package com.behance.sdk.ui.dialogs;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.BottomNavigationView;
import android.support.v4.app.DialogFragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ViewFlipper;
import com.behance.sdk.R;
import com.behance.sdk.listeners.IBehanceSDKColorCallback;
import com.behance.sdk.ui.components.BehanceSDKColorPickerCMYK;
import com.behance.sdk.ui.components.BehanceSDKColorPickerRGB;
import com.behance.sdk.ui.components.BehanceSDKColorPickerWheel;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColorPickerDialog extends DialogFragment {
    private static final String KEY_BUNDLE_EXTRA_COLOR = "KEY_BUNDLE_EXTRA_COLOR";
    private static final String KEY_BUNDLE_EXTRA_FULLSCREEN = "KEY_BUNDLE_EXTRA_FULLSCREEN";
    private Point anchor;
    private BehanceSDKColorPickerCMYK bsdkColorPickerDialogCmyk;
    private LinearLayout bsdkColorPickerDialogContainer;
    private EditText bsdkColorPickerDialogHexInput;
    private View bsdkColorPickerDialogPointer;
    private BehanceSDKColorPickerRGB bsdkColorPickerDialogRgb;
    private RelativeLayout bsdkColorPickerDialogRoot;
    private ViewFlipper bsdkColorPickerDialogViewFlipper;
    private BehanceSDKColorPickerWheel bsdkColorPickerDialogWheel;
    private View bsdkColorPickerHexPreview;
    private BottomNavigationView bsdkColorPickerMenu;
    private int color;
    private IBehanceSDKColorCallback colorCallback;
    int dialogHeight;
    int dialogPointerDiagonal;
    int dialogWidth;
    private boolean fullscreen;

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkDialogTheme_TransparentBG);
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        if (bundle != null) {
            if (bundle.containsKey(KEY_BUNDLE_EXTRA_FULLSCREEN)) {
                this.fullscreen = bundle.getBoolean(KEY_BUNDLE_EXTRA_FULLSCREEN);
            }
            if (bundle.containsKey(KEY_BUNDLE_EXTRA_COLOR)) {
                this.color = bundle.getInt(KEY_BUNDLE_EXTRA_COLOR);
            }
        }
        return dialogOnCreateDialog;
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_dialog_color_picker, viewGroup, false);
        initView(viewInflate);
        if (this.fullscreen) {
            this.bsdkColorPickerDialogContainer.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        } else {
            this.bsdkColorPickerDialogRoot.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialog.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKColorPickerDialog.this.dismiss();
                }
            });
            this.dialogHeight = getResources().getDimensionPixelSize(R.dimen.bsdk_color_picker_default_height);
            this.dialogWidth = getResources().getDimensionPixelSize(R.dimen.bsdk_color_picker_default_width);
            this.dialogPointerDiagonal = getResources().getDimensionPixelSize(R.dimen.bsdk_color_picker_default_pointer_diagonal);
            handleNewAnchor();
        }
        this.bsdkColorPickerDialogWheel.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialog.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogWheel.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogWheel.setSelectedColor(BehanceSDKColorPickerDialog.this.color);
            }
        });
        this.bsdkColorPickerMenu.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialog.3
            @Override // android.support.design.widget.BottomNavigationView.OnNavigationItemSelectedListener
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                BehanceSDKColorPickerDialog.this.setColorFromActiveView();
                if (menuItem.getItemId() == R.id.bsdk_picker_wheel) {
                    if (BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.getDisplayedChild() == 0) {
                        return true;
                    }
                    BehanceSDKColorPickerDialog.this.setViewFlipperAnimation(false);
                    BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogWheel.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialog.3.1
                        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                        public void onGlobalLayout() {
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogWheel.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogWheel.setSelectedColor(BehanceSDKColorPickerDialog.this.color);
                        }
                    });
                    BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.setDisplayedChild(0);
                    return true;
                }
                if (menuItem.getItemId() == R.id.bsdk_picker_rgb) {
                    if (BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.getDisplayedChild() == 1) {
                        return true;
                    }
                    BehanceSDKColorPickerDialog.this.setViewFlipperAnimation(1 > BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.getDisplayedChild());
                    BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogRgb.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialog.3.2
                        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                        public void onGlobalLayout() {
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogRgb.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogRgb.setSelectedColor(BehanceSDKColorPickerDialog.this.color);
                        }
                    });
                    BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.setDisplayedChild(1);
                    return true;
                }
                if (menuItem.getItemId() == R.id.bsdk_picker_cmyk) {
                    if (BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.getDisplayedChild() == 2) {
                        return true;
                    }
                    BehanceSDKColorPickerDialog.this.setViewFlipperAnimation(2 > BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.getDisplayedChild());
                    BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogCmyk.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialog.3.3
                        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                        public void onGlobalLayout() {
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogCmyk.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogCmyk.setSelectedColor(BehanceSDKColorPickerDialog.this.color);
                        }
                    });
                    BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.setDisplayedChild(2);
                    return true;
                }
                if (menuItem.getItemId() != R.id.bsdk_picker_hex) {
                    return false;
                }
                if (BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.getDisplayedChild() == 3) {
                    return true;
                }
                BehanceSDKColorPickerDialog.this.setViewFlipperAnimation(true);
                BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogViewFlipper.setDisplayedChild(3);
                BehanceSDKColorPickerDialog.this.bsdkColorPickerHexPreview.setBackgroundColor(BehanceSDKColorPickerDialog.this.color);
                BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogHexInput.setText(String.format("%02X", Integer.valueOf(Color.red(BehanceSDKColorPickerDialog.this.color) & 255)) + String.format("%02X", Integer.valueOf(Color.green(BehanceSDKColorPickerDialog.this.color) & 255)) + String.format("%02X", Integer.valueOf(Color.blue(BehanceSDKColorPickerDialog.this.color) & 255)));
                return true;
            }
        });
        this.bsdkColorPickerDialogHexInput.addTextChangedListener(new TextWatcher() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialog.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 6) {
                    BehanceSDKColorPickerDialog.this.bsdkColorPickerHexPreview.setBackgroundColor(Color.rgb(Integer.parseInt(editable.toString().substring(0, 2), 16), Integer.parseInt(editable.toString().substring(2, 4), 16), Integer.parseInt(editable.toString().substring(4, 6), 16)));
                }
            }
        });
        if (this.anchor != null && Build.VERSION.SDK_INT >= 21) {
            this.bsdkColorPickerDialogContainer.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialog.5
                @Override // android.view.View.OnLayoutChangeListener
                @TargetApi(21)
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    view.removeOnLayoutChangeListener(this);
                    int height = view.getHeight() / 2;
                    int width = view.getWidth() / 2;
                    Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, width, height, 0.0f, (float) Math.hypot(width, height));
                    animatorCreateCircularReveal.setDuration(250L);
                    view.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(250L).setListener(new Animator.AnimatorListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialog.5.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogPointer.animate().alpha(1.0f).start();
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogPointer.setTranslationY(BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogPointer.getTranslationY() - BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogPointer.getHeight());
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogPointer.setAlpha(1.0f);
                            BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogPointer.animate().translationYBy(BehanceSDKColorPickerDialog.this.bsdkColorPickerDialogPointer.getHeight()).setInterpolator(new DecelerateInterpolator()).start();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }
                    }).start();
                    view.setVisibility(0);
                    animatorCreateCircularReveal.start();
                }
            });
            this.bsdkColorPickerDialogContainer.setVisibility(4);
            this.bsdkColorPickerDialogContainer.setScaleX(0.85f);
            this.bsdkColorPickerDialogContainer.setScaleY(0.85f);
            this.bsdkColorPickerDialogContainer.setAlpha(0.0f);
            this.bsdkColorPickerDialogPointer.setAlpha(0.0f);
        }
        return viewInflate;
    }

    private void initView(View view) {
        this.bsdkColorPickerDialogContainer = (LinearLayout) view.findViewById(R.id.bsdk_color_picker_dialog_container);
        this.bsdkColorPickerDialogRoot = (RelativeLayout) view.findViewById(R.id.bsdk_color_picker_dialog_root);
        this.bsdkColorPickerDialogWheel = (BehanceSDKColorPickerWheel) view.findViewById(R.id.bsdk_color_picker_dialog_wheel);
        this.bsdkColorPickerDialogViewFlipper = (ViewFlipper) view.findViewById(R.id.bsdk_color_picker_dialog_view_flipper);
        this.bsdkColorPickerDialogRgb = (BehanceSDKColorPickerRGB) view.findViewById(R.id.bsdk_color_picker_dialog_rgb);
        this.bsdkColorPickerDialogCmyk = (BehanceSDKColorPickerCMYK) view.findViewById(R.id.bsdk_color_picker_dialog_cmyk);
        this.bsdkColorPickerHexPreview = view.findViewById(R.id.bsdk_color_picker_hex_preview);
        this.bsdkColorPickerMenu = (BottomNavigationView) view.findViewById(R.id.bsdk_color_picker_menu);
        this.bsdkColorPickerDialogHexInput = (EditText) view.findViewById(R.id.bsdk_color_picker_dialog_hex_input);
        this.bsdkColorPickerDialogPointer = view.findViewById(R.id.bsdk_color_picker_dialog_pointer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewFlipperAnimation(boolean z) {
        this.bsdkColorPickerDialogViewFlipper.setInAnimation(getActivity(), z ? R.anim.bsdk_slide_in_from_right : R.anim.bsdk_slide_in_from_left);
        this.bsdkColorPickerDialogViewFlipper.setOutAnimation(getActivity(), z ? R.anim.bsdk_slide_out_to_left : R.anim.bsdk_slide_out_to_right);
    }

    private void handleNewAnchor() {
        if (this.anchor == null) {
            this.bsdkColorPickerDialogContainer.setTranslationX(0.0f);
            this.bsdkColorPickerDialogContainer.setTranslationY(0.0f);
            this.bsdkColorPickerDialogPointer.setTranslationX(0.0f);
            this.bsdkColorPickerDialogPointer.setTranslationY(0.0f);
            return;
        }
        int i = getResources().getDisplayMetrics().widthPixels;
        int i2 = getResources().getDisplayMetrics().heightPixels;
        this.bsdkColorPickerDialogPointer.setTranslationX(this.anchor.x - (i / 2));
        if (this.anchor.x >= i / 2) {
            if (this.anchor.x > ((this.dialogWidth + i) / 2) - this.dialogPointerDiagonal) {
                this.bsdkColorPickerDialogContainer.setTranslationX(Math.min((i - this.dialogWidth) / 2, (this.anchor.x - ((i + this.dialogWidth) / 2)) + this.dialogPointerDiagonal));
            } else {
                this.bsdkColorPickerDialogContainer.setTranslationX(0.0f);
            }
        } else if (this.anchor.x < ((i - this.dialogWidth) / 2) + this.dialogPointerDiagonal) {
            this.bsdkColorPickerDialogContainer.setTranslationX(Math.max((this.dialogWidth - i) / 2, (this.anchor.x - ((i - this.dialogWidth) / 2)) - this.dialogPointerDiagonal));
        } else {
            this.bsdkColorPickerDialogContainer.setTranslationX(0.0f);
        }
        if (this.anchor.y >= i2 / 2) {
            this.bsdkColorPickerDialogPointer.setTranslationY(this.anchor.y - (i2 / 2));
            this.bsdkColorPickerDialogContainer.setTranslationY((this.anchor.y - (i2 / 2)) - (this.dialogHeight / 2));
        } else {
            this.bsdkColorPickerDialogPointer.setTranslationY((this.anchor.y - (i2 / 2)) + this.dialogPointerDiagonal);
            this.bsdkColorPickerDialogContainer.setTranslationY((this.anchor.y - (i2 / 2)) + (this.dialogHeight / 2) + this.dialogPointerDiagonal);
        }
    }

    private void handleNewAnchorAnim() {
        if (this.anchor == null) {
            this.bsdkColorPickerDialogContainer.animate().translationX(0.0f);
            this.bsdkColorPickerDialogContainer.animate().translationY(0.0f);
            this.bsdkColorPickerDialogPointer.animate().translationX(0.0f);
            this.bsdkColorPickerDialogPointer.animate().translationY(0.0f);
            return;
        }
        int i = getResources().getDisplayMetrics().widthPixels;
        int i2 = getResources().getDisplayMetrics().heightPixels;
        this.bsdkColorPickerDialogPointer.animate().translationX(this.anchor.x - (i / 2));
        if (this.anchor.x >= i / 2) {
            if (this.anchor.x > ((this.dialogWidth + i) / 2) - this.dialogPointerDiagonal) {
                this.bsdkColorPickerDialogContainer.animate().translationX(Math.min((i - this.dialogWidth) / 2, (this.anchor.x - ((i + this.dialogWidth) / 2)) + this.dialogPointerDiagonal));
            } else {
                this.bsdkColorPickerDialogContainer.animate().translationX(0.0f);
            }
        } else if (this.anchor.x < ((i - this.dialogWidth) / 2) + this.dialogPointerDiagonal) {
            this.bsdkColorPickerDialogContainer.animate().translationX(Math.max((this.dialogWidth - i) / 2, (this.anchor.x - ((i - this.dialogWidth) / 2)) - this.dialogPointerDiagonal));
        } else {
            this.bsdkColorPickerDialogContainer.animate().translationX(0.0f);
        }
        if (this.anchor.y >= i2 / 2) {
            this.bsdkColorPickerDialogPointer.animate().translationY(this.anchor.y - (i2 / 2));
            this.bsdkColorPickerDialogContainer.animate().translationY((this.anchor.y - (i2 / 2)) - (this.dialogHeight / 2));
        } else {
            this.bsdkColorPickerDialogPointer.animate().translationY((this.anchor.y - (i2 / 2)) + this.dialogPointerDiagonal);
            this.bsdkColorPickerDialogContainer.animate().translationY((this.anchor.y - (i2 / 2)) + (this.dialogHeight / 2) + this.dialogPointerDiagonal);
        }
    }

    public void setFullscreen() {
        this.fullscreen = true;
    }

    public void setFloating(@Nullable Point point) {
        this.fullscreen = false;
        this.anchor = point;
    }

    public void updateAnchor(@Nullable Point point, boolean z) {
        if (!this.fullscreen) {
            this.anchor = point;
            if (z) {
                handleNewAnchorAnim();
            } else {
                handleNewAnchor();
            }
        }
    }

    public void setStartingColor(int i) {
        this.color = i;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_BUNDLE_EXTRA_FULLSCREEN, this.fullscreen);
        setColorFromActiveView();
        bundle.putInt(KEY_BUNDLE_EXTRA_COLOR, this.color);
    }

    public void setColorCallback(IBehanceSDKColorCallback iBehanceSDKColorCallback) {
        this.colorCallback = iBehanceSDKColorCallback;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        setColorFromActiveView();
        if (this.colorCallback != null) {
            this.colorCallback.onColorSelected(this.color);
        }
        super.onDismiss(dialogInterface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setColorFromActiveView() {
        switch (this.bsdkColorPickerDialogViewFlipper.getDisplayedChild()) {
            case 0:
                this.color = this.bsdkColorPickerDialogWheel.getSelectedColor();
                break;
            case 1:
                this.color = this.bsdkColorPickerDialogRgb.getSelectedColor();
                break;
            case 2:
                this.color = this.bsdkColorPickerDialogCmyk.getSelectedColor();
                break;
            case 3:
                String string = this.bsdkColorPickerDialogHexInput.getText().toString();
                if (string.length() == 6) {
                    this.color = Color.rgb(Integer.parseInt(string.substring(0, 2), 16), Integer.parseInt(string.substring(2, 4), 16), Integer.parseInt(string.substring(4, 6), 16));
                }
                break;
        }
    }
}
