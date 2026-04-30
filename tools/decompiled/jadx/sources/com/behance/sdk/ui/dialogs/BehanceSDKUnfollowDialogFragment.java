package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKUnfollowDialogFragment extends DialogFragment implements View.OnClickListener {
    private View rootView;
    private TextView title;
    private Button unfollowBtn;

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        setStyle(1, R.style.BsdkDialogTheme);
        dialogOnCreateDialog.requestWindowFeature(1);
        return dialogOnCreateDialog;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        this.rootView = layoutInflater.inflate(R.layout.bsdk_dialog_fragment_unfollow, viewGroup, false);
        this.title = (TextView) this.rootView.findViewById(R.id.bsdk_unfollowDialogTitleTxtView);
        Bundle arguments = getArguments();
        if (arguments != null) {
            bundle = arguments;
        }
        if (bundle != null) {
            this.title.setText(bundle.getString("INTENT_EXTRA_MESSAGE"));
        }
        this.unfollowBtn = (Button) this.rootView.findViewById(R.id.bsdk_unfollowButton);
        this.unfollowBtn.setOnClickListener(this);
        return this.rootView;
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.bsdk_unfollowButton) {
            handleUnfollowClick();
        }
    }

    private void handleUnfollowClick() {
        getTargetFragment().onActivityResult(getTargetRequestCode(), 1, getActivity().getIntent());
        dismissAllowingStateLoss();
    }
}
