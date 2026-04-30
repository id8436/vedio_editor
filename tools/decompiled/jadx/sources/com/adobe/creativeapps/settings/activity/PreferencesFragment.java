package com.adobe.creativeapps.settings.activity;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.SwitchCompat;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativeapps.settings.R;
import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.h.a.d;

/* JADX INFO: loaded from: classes.dex */
public class PreferencesFragment extends Fragment {
    public static final String DROPBOX_ACCESS_KEY = "ACCESS_KEY";
    public static final String DROPBOX_ACCESS_SECRET = "ACCESS_SECRET";
    public static final String GOOGLE_ACCOUNT_NAME = "googleAccount";
    private Activity activity;
    private ICCAppSettingsPreference ccAppSettingsPreference;
    private Context context;
    private int exportResolution;
    private SwitchCompat mAddBumperSwitch;
    public TextView mDropboxLinkTextView;
    private Spinner mExportResSpinner;
    public TextView mGoogleSignInTextView;
    private RelativeLayout mResetCoachMark;
    private TextView mTitle;
    private Toolbar mToolbar;
    private RelativeLayout resetBrandingPreference;
    private boolean resetCoachMarks;
    private SharedPreferences sharedPreferences;

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.context = getActivity();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View viewInflate = layoutInflater.inflate(R.layout.activity_settings, viewGroup, false);
        d.a(viewInflate);
        this.sharedPreferences = this.context.getSharedPreferences(this.context.getString(R.string.preferenceFile), 0);
        setUX(viewInflate);
        return viewInflate;
    }

    public void onRestoreFragment() {
        setUX(getView());
    }

    private void setUX(View view) {
        setExportResSpinnerUX(view);
        setPlaceOverlayUX(view);
        setBumperUX(view);
        setCoachMarksUX(view);
        setResetBrandingUX(view);
        setAccountsUX(view);
    }

    private void setAccountsUX(View view) {
        this.mDropboxLinkTextView = (TextView) view.findViewById(R.id.linkTextView);
        String string = this.sharedPreferences.getString("ACCESS_KEY", null);
        String string2 = this.sharedPreferences.getString("ACCESS_SECRET", null);
        if (string == null || string2 == null) {
            this.mDropboxLinkTextView.setText(getString(R.string.settings_link));
        } else {
            this.mDropboxLinkTextView.setText(getString(R.string.settings_unlink));
        }
        this.mDropboxLinkTextView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.PreferencesFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PreferencesFragment.this.checkDropboxLink();
            }
        });
        this.mGoogleSignInTextView = (TextView) view.findViewById(R.id.googleSignInTextView);
        if (this.sharedPreferences.getString("googleAccount", null) != null) {
            this.mGoogleSignInTextView.setText(getString(R.string.settings_unlink));
        } else {
            this.mGoogleSignInTextView.setText(getString(R.string.settings_link));
        }
        this.mGoogleSignInTextView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.PreferencesFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PreferencesFragment.this.checkGoogleSignIn();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkGoogleSignIn() {
        String string = this.sharedPreferences.getString("googleAccount", null);
        if (string != null) {
            SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
            editorEdit.putString("googleAccount", null);
            editorEdit.commit();
            this.ccAppSettingsPreference.showLinkUnlinkDialog(false, "google");
            this.mGoogleSignInTextView.setText(getString(R.string.settings_link));
            Log.d("Preferences", "account name = " + string);
            return;
        }
        this.ccAppSettingsPreference.pickUserAccount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDropboxLink() {
        String string = this.sharedPreferences.getString("ACCESS_KEY", null);
        String string2 = this.sharedPreferences.getString("ACCESS_SECRET", null);
        if (string == null || string2 == null) {
            this.ccAppSettingsPreference.linkDropbox();
            return;
        }
        this.mDropboxLinkTextView.setText(getString(R.string.settings_link));
        this.ccAppSettingsPreference.unlinkDropbox();
        this.ccAppSettingsPreference.showLinkUnlinkDialog(false, GalleryActivity.SOURCE_DROPBOX);
    }

    private void setExportResSpinnerUX(View view) {
        int i;
        this.mExportResSpinner = (Spinner) view.findViewById(R.id.exportResSpinner);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.context, R.layout.view_spinner, this.context.getResources().getStringArray(R.array.export_res_options));
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.mExportResSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
        switch (this.exportResolution) {
            case -1:
            case Sequence.EXPORT_HD_HEIGHT /* 720 */:
                i = 1;
                break;
            case 1080:
                i = 2;
                break;
            case Sequence.EXPORT_UHD_HEIGHT /* 2160 */:
                i = 3;
                break;
            default:
                i = 0;
                break;
        }
        this.mExportResSpinner.setSelection(i);
        if (this.exportResolution == -1) {
            this.mExportResSpinner.setEnabled(false);
            this.mExportResSpinner.setClickable(false);
            this.mExportResSpinner.setFocusable(false);
            view.findViewById(R.id.settings_export_res).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.PreferencesFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Toast.makeText(PreferencesFragment.this.context, PreferencesFragment.this.getString(R.string.high_res_export_not_supported), 1).show();
                }
            });
            return;
        }
        this.mExportResSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.adobe.creativeapps.settings.activity.PreferencesFragment.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view2, int i2, long j) {
                switch (i2) {
                    case 0:
                        PreferencesFragment.this.exportResolution = 0;
                        break;
                    case 1:
                        PreferencesFragment.this.exportResolution = Sequence.EXPORT_HD_HEIGHT;
                        break;
                    case 2:
                        PreferencesFragment.this.exportResolution = 1080;
                        break;
                    case 3:
                        PreferencesFragment.this.exportResolution = Sequence.EXPORT_UHD_HEIGHT;
                        break;
                }
                PreferencesFragment.this.ccAppSettingsPreference.setExportResolution(PreferencesFragment.this.exportResolution);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
    }

    private void setBumperUX(View view) {
        String string;
        boolean bumperState = this.ccAppSettingsPreference.getBumperState();
        boolean zIsBumperPremiereClip = this.ccAppSettingsPreference.isBumperPremiereClip();
        ((RelativeLayout) view.findViewById(R.id.settings_add_bumper)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.PreferencesFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PreferencesFragment.this.ccAppSettingsPreference.openBumperPreferenceFragment();
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.add_bumper_state);
        if (bumperState) {
            if (zIsBumperPremiereClip) {
                string = this.context.getResources().getString(R.string.settings_clip_bumper);
            } else {
                string = this.context.getResources().getString(R.string.settings_custom_bumper);
            }
        } else {
            string = this.context.getResources().getString(R.string.settings_disabled);
        }
        textView.setText(string);
    }

    private void setPlaceOverlayUX(View view) {
        ((RelativeLayout) view.findViewById(R.id.settings_place_overlay)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.PreferencesFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PreferencesFragment.this.ccAppSettingsPreference.openBugPreferenceFragment();
            }
        });
        ((TextView) view.findViewById(R.id.place_overlay_state)).setText(this.ccAppSettingsPreference.getBugState() ? R.string.settings_enabled : R.string.settings_disabled);
    }

    private void setResetBrandingUX(View view) {
        this.resetBrandingPreference = (RelativeLayout) view.findViewById(R.id.resetBrandingPreferences);
        this.resetBrandingPreference.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.PreferencesFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PreferencesFragment.this.ccAppSettingsPreference.resetBrandingPreferences();
            }
        });
    }

    private void setCoachMarksUX(View view) {
        this.mResetCoachMark = (RelativeLayout) view.findViewById(R.id.resetCoachMarks);
        this.mResetCoachMark.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.PreferencesFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PreferencesFragment.this.resetCoachMarks = true;
                Toast.makeText(PreferencesFragment.this.getActivity(), PreferencesFragment.this.getString(R.string.Coachmark_toast), 0).show();
                PreferencesFragment.this.ccAppSettingsPreference.setCoachMarkEnabled(PreferencesFragment.this.resetCoachMarks ? false : true);
            }
        });
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
        this.activity = activity;
        this.ccAppSettingsPreference = (ICCAppSettingsPreference) activity;
        this.resetCoachMarks = false;
        this.exportResolution = this.ccAppSettingsPreference.getExportResolution();
    }
}
