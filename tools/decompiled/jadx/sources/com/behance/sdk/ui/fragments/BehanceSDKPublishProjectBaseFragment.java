package com.behance.sdk.ui.fragments;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.behance.sdk.R;
import com.behance.sdk.listeners.IBehanceSDKPublishProjectNavigationListener;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class BehanceSDKPublishProjectBaseFragment extends Fragment {
    private View actionBarBackButton;
    protected TextView actionBarForwardButton;
    private TextView actionBarTitle;
    private IBehanceSDKPublishProjectNavigationListener navigationListener;
    protected View rootView;

    protected abstract int getLayout();

    protected abstract int getTitle();

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(true);
        this.rootView = layoutInflater.inflate(getLayout(), viewGroup, false);
        createActionBar();
        return this.rootView;
    }

    protected void hideSoftKeyBoardIfActive(View view) {
        ((InputMethodManager) getActivity().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    protected void createActionBar() {
        updateNavigationControls();
    }

    protected void updateNavigationControls() {
        this.actionBarTitle = (TextView) this.rootView.findViewById(getTitleViewID());
        this.actionBarTitle.setText(getTitle());
        this.actionBarBackButton = this.rootView.findViewById(getBackButtonID());
        this.actionBarBackButton.setVisibility(0);
        this.actionBarBackButton.setOnClickListener(getLeftNavigationHandler());
        this.actionBarForwardButton = (TextView) this.rootView.findViewById(getForwardButtonID());
        this.actionBarForwardButton.setText(getForwardButtonText());
        this.actionBarForwardButton.setOnClickListener(getRightNavigationHandler());
    }

    protected void backButtonPressed() {
        this.navigationListener.showPrevious();
    }

    protected void nextButtonPressed() {
        this.navigationListener.showNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.navigationListener = (IBehanceSDKPublishProjectNavigationListener) activity;
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.navigationListener = null;
    }

    private View.OnClickListener getRightNavigationHandler() {
        return new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKPublishProjectBaseFragment.this.nextButtonPressed();
            }
        };
    }

    private View.OnClickListener getLeftNavigationHandler() {
        return new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKPublishProjectBaseFragment.this.backButtonPressed();
            }
        };
    }

    public boolean closeWorkflow() {
        return false;
    }

    protected int getForwardButtonText() {
        return R.string.bsdk_addproject_custom_actionbar_forward_nav_default_txt;
    }

    protected int getBackButtonID() {
        return R.id.bsdkPublishProjectTitlebarBackBtnLayout;
    }

    protected int getForwardButtonID() {
        return R.id.bsdkPublishProjectTitlebarActionBtnTxtView;
    }

    protected int getTitleViewID() {
        return R.id.bsdkPublishProjectTitlebarTitleTxtView;
    }

    protected void changeTitle(int i) {
        if (this.actionBarTitle != null) {
            this.actionBarTitle.setText(i);
        }
    }

    protected void changeTitle(String str) {
        if (this.actionBarTitle != null) {
            this.actionBarTitle.setText(str);
        }
    }

    protected void disableActionBarRightNav() {
        if (this.actionBarForwardButton != null) {
            this.actionBarForwardButton.setEnabled(false);
        }
    }

    protected void enableActionBarRightNav() {
        if (this.actionBarForwardButton != null) {
            this.actionBarForwardButton.setEnabled(true);
        }
    }
}
