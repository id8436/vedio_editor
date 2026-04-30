package com.adobe.creativeapps.settings.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.SwitchCompat;
import android.support.v7.widget.Toolbar;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.adobe.creativeapps.settings.R;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.utility.analytics.TrackingUtility;
import com.h.a.d;

/* JADX INFO: loaded from: classes.dex */
public class AboutAppFragment extends Fragment {
    private ICCAppSettingsPreference ccAppSettingsPreference;
    private TextView mLearnMore;
    private ClickableSpan mLearnMoreURL;
    private View mPrivacyPolicy;
    private SwitchCompat mSendUsageReportsSwitch;
    private View mTermsOfUse;
    private View mThirdPartyNotices;
    private TextView mTitle;
    private Toolbar mToolbar;
    private boolean sendUsageReports;
    private String[] mFeaturesList = {"Feature 1"};
    private String[] mFeaturesDescriptionList = {"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "};

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        this.sendUsageReports = TrackingUtility.getInstance().getTrackingValue();
        View viewInflate = layoutInflater.inflate(R.layout.activity_about_app, viewGroup, false);
        d.a(viewInflate);
        try {
            ((TextView) viewInflate.findViewById(R.id.currentVersion)).setText(getResources().getString(R.string.version_number) + " " + getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0).versionName);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        this.mSendUsageReportsSwitch = (SwitchCompat) viewInflate.findViewById(R.id.sendUsageReportsSwitch);
        this.mSendUsageReportsSwitch.setChecked(this.sendUsageReports);
        getActivity();
        this.mSendUsageReportsSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.creativeapps.settings.activity.AboutAppFragment.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    TrackingUtility.getInstance().setTrackingValue(true);
                } else {
                    TrackingUtility.getInstance().setTrackingValue(false);
                }
                AboutAppFragment.this.mSendUsageReportsSwitch.setChecked(z);
                Metrics.sharedInstance().didModifyAnalyticsCollection(Boolean.valueOf(z));
            }
        });
        this.mLearnMore = (TextView) viewInflate.findViewById(R.id.usageReportLearnMore);
        SpannableString spannableString = new SpannableString(getResources().getString(R.string.usageReport_text));
        SpannableString spannableString2 = new SpannableString(getResources().getString(R.string.learnMore_text));
        spannableString2.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.settings_primary)), 0, spannableString2.length(), 33);
        this.mLearnMoreURL = new ClickableSpan() { // from class: com.adobe.creativeapps.settings.activity.AboutAppFragment.2
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                try {
                    AboutAppFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(AboutAppFragment.this.getString(R.string.url_learnMore))));
                } catch (ActivityNotFoundException e3) {
                    e3.printStackTrace();
                }
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setUnderlineText(false);
            }
        };
        spannableString2.setSpan(this.mLearnMoreURL, 0, spannableString2.length(), 33);
        this.mLearnMore.setText(TextUtils.concat(spannableString, " ", spannableString2));
        this.mLearnMore.setMovementMethod(LinkMovementMethod.getInstance());
        this.mTermsOfUse = viewInflate.findViewById(R.id.termsOfUse);
        this.mPrivacyPolicy = viewInflate.findViewById(R.id.privacyPolicy);
        this.mThirdPartyNotices = viewInflate.findViewById(R.id.thirdPartyNotices);
        this.mTermsOfUse.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.AboutAppFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = AboutAppFragment.this.getString(R.string.url_termsOfUse);
                try {
                    AboutAppFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                } catch (ActivityNotFoundException e3) {
                    e3.printStackTrace();
                }
                AboutAppFragment.this.ccAppSettingsPreference.didTapSettingsLink(string);
            }
        });
        this.mPrivacyPolicy.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.AboutAppFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = AboutAppFragment.this.getString(R.string.url_privacyPolicy);
                try {
                    AboutAppFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                } catch (ActivityNotFoundException e3) {
                    e3.printStackTrace();
                }
                AboutAppFragment.this.ccAppSettingsPreference.didTapSettingsLink(string);
            }
        });
        this.mThirdPartyNotices.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.AboutAppFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = AboutAppFragment.this.getString(R.string.url_thirdPartyNotices);
                try {
                    AboutAppFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                } catch (ActivityNotFoundException e3) {
                    e3.printStackTrace();
                }
                AboutAppFragment.this.ccAppSettingsPreference.didTapSettingsLink(string);
            }
        });
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.ccAppSettingsPreference = (ICCAppSettingsPreference) activity;
    }
}
