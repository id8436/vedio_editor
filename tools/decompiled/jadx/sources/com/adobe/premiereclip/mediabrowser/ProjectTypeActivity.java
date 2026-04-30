package com.adobe.premiereclip.mediabrowser;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class ProjectTypeActivity extends Activity {
    public static final int AUTO_EDIT_MODE = 1;
    public static final int FREEFORM_EDIT_MODE = 2;
    public static final String PROJECT_TYPE_KEY = "ProjectType";
    private int projectType;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_project_type);
        setUX();
        d.a(this);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Config.collectLifecycleData(this);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        Config.pauseCollectingLifecycleData();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverResult() {
        Intent intent = new Intent();
        intent.putExtra(PROJECT_TYPE_KEY, this.projectType);
        setResult(-1, intent);
        finish();
    }

    private void setUX() {
        ((ImageView) findViewById(R.id.back_button)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.ProjectTypeActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectTypeActivity.this.onBackPressed();
            }
        });
        setOnClickListeners();
    }

    private void setOnClickListeners() {
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.auto_mode_layout);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(R.id.freeform_mode_layout);
        d.a(relativeLayout);
        d.a(relativeLayout2);
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.ProjectTypeActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectTypeActivity.this.projectType = 1;
                ProjectTypeActivity.this.deliverResult();
            }
        });
        relativeLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.ProjectTypeActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectTypeActivity.this.projectType = 2;
                ProjectTypeActivity.this.deliverResult();
            }
        });
    }
}
