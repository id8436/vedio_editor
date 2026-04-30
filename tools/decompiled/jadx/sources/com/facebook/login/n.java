package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.bf;
import com.facebook.bg;
import com.facebook.login.LoginClient;
import com.google.api.gbase.client.ServiceError;

/* JADX INFO: compiled from: LoginFragment.java */
/* JADX INFO: loaded from: classes2.dex */
public class n extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LoginClient f3008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LoginClient.Request f3009c;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f3008b = (LoginClient) bundle.getParcelable("loginClient");
            this.f3008b.a(this);
        } else {
            this.f3008b = new LoginClient(this);
        }
        this.f3008b.a(new o(this));
        FragmentActivity activity = getActivity();
        if (activity != null) {
            a(activity);
            if (activity.getIntent() != null) {
                this.f3009c = (LoginClient.Request) activity.getIntent().getParcelableExtra(ServiceError.REQUEST_TYPE);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.f3008b.f();
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(bg.com_facebook_login_fragment, viewGroup, false);
        this.f3008b.a(new p(this, viewInflate));
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(LoginClient.Result result) {
        this.f3009c = null;
        int i = result.f2973a == m.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (isAdded()) {
            getActivity().setResult(i, intent);
            getActivity().finish();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f3007a == null) {
            Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
            getActivity().finish();
        } else {
            this.f3008b.a(this.f3009c);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        getActivity().findViewById(bf.com_facebook_login_activity_progress_bar).setVisibility(8);
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f3008b.a(i, i2, intent);
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", this.f3008b);
    }

    private void a(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            this.f3007a = callingActivity.getPackageName();
        }
    }
}
