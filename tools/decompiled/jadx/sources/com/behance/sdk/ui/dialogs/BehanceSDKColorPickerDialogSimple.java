package com.behance.sdk.ui.dialogs;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Point;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.behance.sdk.R;
import com.behance.sdk.listeners.IBehanceSDKColorCallback;
import com.behance.sdk.ui.components.BehanceSDKColorPickerSquare;
import com.behance.sdk.util.BehanceSDKColorUtils;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColorPickerDialogSimple extends DialogFragment {
    private static final String KEY_BUNDLE_EXTRA_CURRENT_COLOR = "KEY_BUNDLE_EXTRA_CURRENT_COLOR";
    private static final String KEY_BUNDLE_EXTRA_FULLSCREEN = "KEY_BUNDLE_EXTRA_FULLSCREEN";
    private static final String KEY_BUNDLE_EXTRA_START_COLOR = "KEY_BUNDLE_EXTRA_START_COLOR";
    private Point anchor;
    private View bsdkColorPickerDialogBackground;
    private LinearLayout bsdkColorPickerDialogContainer;
    private LinearLayout bsdkColorPickerDialogContentTop;
    private EditText bsdkColorPickerDialogHexInput;
    private BehanceSDKColorPickerSquare bsdkColorPickerDialogPicker;
    private View bsdkColorPickerDialogPointer;
    private RelativeLayout bsdkColorPickerDialogRoot;
    private View bsdkColorPickerDialogSampleCurrent;
    private View bsdkColorPickerDialogSampleOrig;
    private IBehanceSDKColorCallback colorCallback;
    private int currentColor;
    int dialogHeight;
    int dialogPointerDiagonal;
    int dialogWidth;
    private boolean fullscreen;
    private int startColor;

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
            if (bundle.containsKey(KEY_BUNDLE_EXTRA_START_COLOR)) {
                this.startColor = bundle.getInt(KEY_BUNDLE_EXTRA_START_COLOR);
            }
            if (bundle.containsKey(KEY_BUNDLE_EXTRA_CURRENT_COLOR)) {
                this.currentColor = bundle.getInt(KEY_BUNDLE_EXTRA_CURRENT_COLOR);
            }
        }
        return dialogOnCreateDialog;
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_dialog_color_picker_simple, viewGroup, false);
        initView(viewInflate);
        if (this.fullscreen) {
            this.bsdkColorPickerDialogContainer.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        } else {
            this.bsdkColorPickerDialogRoot.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialogSimple.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKColorPickerDialogSimple.this.dismiss();
                }
            });
            this.dialogHeight = getResources().getDimensionPixelSize(R.dimen.bsdk_color_picker_default_width);
            this.dialogWidth = getResources().getDimensionPixelSize(R.dimen.bsdk_color_picker_default_width);
            this.dialogPointerDiagonal = getResources().getDimensionPixelSize(R.dimen.bsdk_color_picker_default_pointer_diagonal);
            handleNewAnchor();
        }
        this.bsdkColorPickerDialogSampleOrig.setBackgroundColor(this.startColor);
        this.bsdkColorPickerDialogSampleCurrent.setBackgroundColor(this.currentColor);
        this.bsdkColorPickerDialogPicker.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialogSimple.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPicker.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPicker.setSelectedColor(BehanceSDKColorPickerDialogSimple.this.startColor);
            }
        });
        this.bsdkColorPickerDialogSampleOrig.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialogSimple.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKColorPickerDialogSimple.this.currentColor = BehanceSDKColorPickerDialogSimple.this.startColor;
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPicker.setSelectedColor(BehanceSDKColorPickerDialogSimple.this.currentColor);
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogSampleCurrent.setBackgroundColor(BehanceSDKColorPickerDialogSimple.this.currentColor);
            }
        });
        this.bsdkColorPickerDialogPicker.setColorCallback(new IBehanceSDKColorCallback() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialogSimple.4
            @Override // com.behance.sdk.listeners.IBehanceSDKColorCallback
            public void onColorSelected(int i) {
                BehanceSDKColorPickerDialogSimple.this.currentColor = i;
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogHexInput.setText(BehanceSDKColorPickerDialogSimple.this.getResources().getString(R.string.bsdk_color_picker_hex_format, BehanceSDKColorUtils.getHexColorString(i).toUpperCase()));
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogHexInput.setSelection(BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogHexInput.length());
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogSampleCurrent.setBackgroundColor(BehanceSDKColorPickerDialogSimple.this.currentColor);
            }
        });
        this.bsdkColorPickerDialogHexInput.addTextChangedListener(new TextWatcher() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialogSimple.5

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f1264b = false;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 0) {
                    editable.append('#');
                    return;
                }
                if (editable.charAt(0) != '#') {
                    editable.insert(0, "#");
                    return;
                }
                if (editable.length() == 7) {
                    if (this.f1264b && !editable.toString().substring(1).contains("#")) {
                        BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPicker.setSelectedColor(BehanceSDKColorUtils.getColorFromHexString(editable.toString().substring(1)));
                        this.f1264b = false;
                        return;
                    }
                    return;
                }
                this.f1264b = true;
            }
        });
        this.bsdkColorPickerDialogContainer.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialogSimple.6
            @Override // android.view.View.OnLayoutChangeListener
            @TargetApi(21)
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                view.removeOnLayoutChangeListener(this);
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogBackground.animate().alpha(1.0f).setDuration(150L).start();
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogContainer.setPivotY(BehanceSDKColorPickerDialogSimple.this.anchor == null ? BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogContainer.getHeight() / 2 : BehanceSDKColorPickerDialogSimple.this.anchor.y >= BehanceSDKColorPickerDialogSimple.this.getResources().getDisplayMetrics().heightPixels / 2 ? BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogContainer.getHeight() : 0.0f);
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPointer.animate().scaleY(1.0f).scaleX(1.0f).setDuration(50L).start();
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPointer.setTranslationY((BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPointer.getTranslationY() - BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPointer.getHeight()) + BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPointer.getHeight());
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPointer.animate().alpha(1.0f).start();
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogContentTop.animate().alpha(1.0f).setStartDelay(100L).setDuration(75L).start();
                BehanceSDKColorPickerDialogSimple.this.bsdkColorPickerDialogPicker.animate().alpha(1.0f).setStartDelay(100L).setDuration(75L).start();
                view.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(140L).setInterpolator(new DecelerateInterpolator(1.0f)).start();
            }
        });
        this.bsdkColorPickerDialogContainer.setScaleY(0.0f);
        this.bsdkColorPickerDialogPointer.setScaleY(0.0f);
        this.bsdkColorPickerDialogPointer.setScaleX(0.0f);
        this.bsdkColorPickerDialogBackground.setAlpha(0.0f);
        this.bsdkColorPickerDialogContentTop.setAlpha(0.0f);
        this.bsdkColorPickerDialogPicker.setAlpha(0.0f);
        return viewInflate;
    }

    private void initView(View view) {
        this.bsdkColorPickerDialogContainer = (LinearLayout) view.findViewById(R.id.bsdk_color_picker_dialog_container);
        this.bsdkColorPickerDialogRoot = (RelativeLayout) view.findViewById(R.id.bsdk_color_picker_dialog_root);
        this.bsdkColorPickerDialogSampleOrig = view.findViewById(R.id.bsdk_color_picker_dialog_sample_orig);
        this.bsdkColorPickerDialogSampleCurrent = view.findViewById(R.id.bsdk_color_picker_dialog_sample_current);
        this.bsdkColorPickerDialogPointer = view.findViewById(R.id.bsdk_color_picker_dialog_pointer);
        this.bsdkColorPickerDialogPicker = (BehanceSDKColorPickerSquare) view.findViewById(R.id.bsdk_color_picker_dialog_picker);
        this.bsdkColorPickerDialogHexInput = (EditText) view.findViewById(R.id.bsdk_color_picker_dialog_hex_input);
        this.bsdkColorPickerDialogBackground = view.findViewById(R.id.bsdk_color_picker_dialog_background);
        this.bsdkColorPickerDialogContentTop = (LinearLayout) view.findViewById(R.id.bsdk_color_picker_dialog_content_top);
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
        this.startColor = i;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_BUNDLE_EXTRA_FULLSCREEN, this.fullscreen);
        bundle.putInt(KEY_BUNDLE_EXTRA_START_COLOR, this.startColor);
        bundle.putInt(KEY_BUNDLE_EXTRA_CURRENT_COLOR, this.currentColor);
    }

    public void setColorCallback(IBehanceSDKColorCallback iBehanceSDKColorCallback) {
        this.colorCallback = iBehanceSDKColorCallback;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.colorCallback != null) {
            this.colorCallback.onColorSelected(this.currentColor);
        }
        super.onDismiss(dialogInterface);
    }
}
