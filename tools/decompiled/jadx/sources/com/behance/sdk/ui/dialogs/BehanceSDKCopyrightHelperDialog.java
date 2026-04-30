package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialog;
import android.support.design.widget.BottomSheetDialogFragment;
import android.view.View;
import android.widget.ViewFlipper;
import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCopyrightHelperDialog extends BottomSheetDialogFragment implements View.OnClickListener {
    private boolean NC;
    private BehanceSDKTextView bsdkDialogCopyrightHelperAccept;
    private BehanceSDKTextView bsdkDialogCopyrightHelperBack;
    private BehanceSDKTextView bsdkDialogCopyrightHelperCancel;
    private ViewFlipper bsdkDialogCopyrightHelperFlipper;
    private BehanceSDKTextView bsdkDialogCopyrightHelperNo;
    private BehanceSDKTextView bsdkDialogCopyrightHelperRecommendation;
    private BehanceSDKTextView bsdkDialogCopyrightHelperYes;
    private CopyrightCallback callback;
    private BottomSheetBehavior mBehavior;
    private BehanceSDKCopyrightOption selectedCopyright;

    public interface CopyrightCallback {
        void onCopyrightSelected(BehanceSDKCopyrightOption behanceSDKCopyrightOption);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BsdkProjectEditorBottomSheetTheme);
    }

    @Override // android.support.design.widget.BottomSheetDialogFragment, android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) super.onCreateDialog(bundle);
        View viewInflate = View.inflate(getContext(), R.layout.bsdk_dialog_copyright_helper, null);
        initView(viewInflate);
        bottomSheetDialog.setContentView(viewInflate);
        this.mBehavior = BottomSheetBehavior.from((View) viewInflate.getParent());
        this.mBehavior.setSkipCollapsed(true);
        this.mBehavior.setPeekHeight(0);
        this.bsdkDialogCopyrightHelperYes.setOnClickListener(this);
        this.bsdkDialogCopyrightHelperNo.setOnClickListener(this);
        this.bsdkDialogCopyrightHelperBack.setOnClickListener(this);
        this.bsdkDialogCopyrightHelperCancel.setOnClickListener(this);
        this.bsdkDialogCopyrightHelperAccept.setOnClickListener(this);
        return bottomSheetDialog;
    }

    private void initView(View view) {
        this.bsdkDialogCopyrightHelperYes = (BehanceSDKTextView) view.findViewById(R.id.bsdk_dialog_copyright_helper_yes);
        this.bsdkDialogCopyrightHelperNo = (BehanceSDKTextView) view.findViewById(R.id.bsdk_dialog_copyright_helper_no);
        this.bsdkDialogCopyrightHelperBack = (BehanceSDKTextView) view.findViewById(R.id.bsdk_dialog_copyright_helper_back);
        this.bsdkDialogCopyrightHelperCancel = (BehanceSDKTextView) view.findViewById(R.id.bsdk_dialog_copyright_helper_cancel);
        this.bsdkDialogCopyrightHelperAccept = (BehanceSDKTextView) view.findViewById(R.id.bsdk_dialog_copyright_helper_accept);
        this.bsdkDialogCopyrightHelperRecommendation = (BehanceSDKTextView) view.findViewById(R.id.bsdk_dialog_copyright_helper_recommendation);
        this.bsdkDialogCopyrightHelperFlipper = (ViewFlipper) view.findViewById(R.id.bsdk_dialog_copyright_helper_flipper);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.mBehavior.setState(3);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.bsdk_dialog_copyright_helper_yes) {
            evaluateCriteriaAndMoveForward(true);
            return;
        }
        if (view.getId() == R.id.bsdk_dialog_copyright_helper_no) {
            evaluateCriteriaAndMoveForward(false);
            return;
        }
        if (view.getId() == R.id.bsdk_dialog_copyright_helper_back) {
            back();
            return;
        }
        if (view.getId() == R.id.bsdk_dialog_copyright_helper_accept) {
            if (this.callback != null && this.selectedCopyright != null) {
                this.callback.onCopyrightSelected(this.selectedCopyright);
            }
            this.mBehavior.setState(5);
            return;
        }
        if (view.getId() == R.id.bsdk_dialog_copyright_helper_cancel) {
            this.mBehavior.setState(5);
        }
    }

    private void evaluateCriteriaAndMoveForward(boolean z) {
        switch (this.bsdkDialogCopyrightHelperFlipper.getDisplayedChild()) {
            case 0:
                if (z) {
                    forward();
                } else {
                    licenseSelected(BehanceSDKCopyrightOption.NO_USE);
                }
                break;
            case 1:
                this.NC = z;
                forward();
                break;
            case 2:
                if (z) {
                    forward();
                } else {
                    licenseSelected(this.NC ? BehanceSDKCopyrightOption.BY_NC_ND : BehanceSDKCopyrightOption.BY_ND);
                }
                break;
            case 3:
                if (z) {
                    licenseSelected(this.NC ? BehanceSDKCopyrightOption.BY_NC_SA : BehanceSDKCopyrightOption.BY_SA);
                } else {
                    licenseSelected(this.NC ? BehanceSDKCopyrightOption.BY_NC : BehanceSDKCopyrightOption.BY);
                }
                break;
        }
    }

    private void licenseSelected(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.selectedCopyright = behanceSDKCopyrightOption;
        this.bsdkDialogCopyrightHelperRecommendation.setText(getResources().getString(R.string.bsdk_project_editor_copyright_helper_recommendation, behanceSDKCopyrightOption.getDescription(getActivity())));
        this.bsdkDialogCopyrightHelperFlipper.setInAnimation(getActivity(), R.anim.bsdk_slide_in_from_right);
        this.bsdkDialogCopyrightHelperFlipper.setOutAnimation(getActivity(), R.anim.bsdk_slide_out_to_left);
        this.bsdkDialogCopyrightHelperFlipper.setDisplayedChild(4);
        this.bsdkDialogCopyrightHelperYes.setVisibility(8);
        this.bsdkDialogCopyrightHelperNo.setVisibility(8);
        this.bsdkDialogCopyrightHelperBack.setVisibility(8);
        this.bsdkDialogCopyrightHelperCancel.setVisibility(0);
        this.bsdkDialogCopyrightHelperAccept.setVisibility(0);
    }

    private void forward() {
        if (this.bsdkDialogCopyrightHelperFlipper.getDisplayedChild() < this.bsdkDialogCopyrightHelperFlipper.getChildCount() - 1) {
            this.bsdkDialogCopyrightHelperFlipper.setInAnimation(getActivity(), R.anim.bsdk_slide_in_from_right);
            this.bsdkDialogCopyrightHelperFlipper.setOutAnimation(getActivity(), R.anim.bsdk_slide_out_to_left);
            this.bsdkDialogCopyrightHelperFlipper.showNext();
            this.bsdkDialogCopyrightHelperBack.setVisibility(this.bsdkDialogCopyrightHelperFlipper.getDisplayedChild() == 0 ? 8 : 0);
        }
    }

    private void back() {
        if (this.bsdkDialogCopyrightHelperFlipper.getDisplayedChild() > 0) {
            this.bsdkDialogCopyrightHelperFlipper.setInAnimation(getActivity(), R.anim.bsdk_slide_in_from_left);
            this.bsdkDialogCopyrightHelperFlipper.setOutAnimation(getActivity(), R.anim.bsdk_slide_out_to_right);
            this.bsdkDialogCopyrightHelperFlipper.showPrevious();
            this.bsdkDialogCopyrightHelperBack.setVisibility(this.bsdkDialogCopyrightHelperFlipper.getDisplayedChild() == 0 ? 8 : 0);
        }
    }

    public void setCallback(CopyrightCallback copyrightCallback) {
        this.callback = copyrightCallback;
    }
}
