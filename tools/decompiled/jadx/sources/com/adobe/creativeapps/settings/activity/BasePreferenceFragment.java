package com.adobe.creativeapps.settings.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.SwitchCompat;
import android.view.Display;
import android.view.View;
import android.widget.CompoundButton;
import com.adobe.creativeapps.settings.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class BasePreferenceFragment extends Fragment {
    protected String assetName;
    protected String assetPath;
    protected boolean assetState;
    protected ICCAppSettingsPreference ccAppSettingsPreference;
    protected Context context;
    protected int height;
    protected SwitchCompat onOffSwitch;
    protected int width;

    protected abstract void setPreferenceState(boolean z);

    protected abstract void setPreviewUX(View view);

    protected abstract void setUX(View view);

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.context = getActivity();
    }

    public void onRestoreFragment() {
        setUX(getView());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.ccAppSettingsPreference = (ICCAppSettingsPreference) activity;
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.width = point.x - ((int) (2.0f * activity.getResources().getDimension(R.dimen.card_margin)));
        this.height = (this.width * 9) / 16;
    }

    protected void setSwitchUX(View view) {
        this.onOffSwitch = (SwitchCompat) view.findViewById(R.id.addSwitch);
        this.onOffSwitch.setChecked(this.assetState);
        this.onOffSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.creativeapps.settings.activity.BasePreferenceFragment.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                BasePreferenceFragment.this.assetState = z;
                BasePreferenceFragment.this.onOffSwitch.setChecked(z);
                BasePreferenceFragment.this.setPreferenceState(BasePreferenceFragment.this.assetState);
            }
        });
    }
}
