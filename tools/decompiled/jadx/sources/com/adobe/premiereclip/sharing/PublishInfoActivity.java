package com.adobe.premiereclip.sharing;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.util.ProjectPosterView;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class PublishInfoActivity extends TopOfEditorActivity {
    private String projKey;
    private String projName;
    EditText projectName;
    ImageView projectThumb;
    ImageView publishArrow;
    private boolean unlisted;
    ImageView unlistedArrow;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_publish_info);
        d.a(this);
        Metrics.sharedInstance().didShowCCVExportView();
        this.projKey = getIntent().getStringExtra("project_key");
        this.unlisted = false;
        final Project projectWithKey = ProjectManager.getInstance().getProjectWithKey(this.projKey);
        this.projName = projectWithKey.getProjectName();
        this.projectThumb = (ImageView) findViewById(R.id.publish_project_thumb);
        this.projectThumb.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.adobe.premiereclip.sharing.PublishInfoActivity.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                PublishInfoActivity.this.projectThumb.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                Log.d("PublishInfoActivity", "w = " + PublishInfoActivity.this.projectThumb.getMeasuredWidth() + ", h = " + PublishInfoActivity.this.projectThumb.getMeasuredHeight());
                ProjectPosterView.load(PublishInfoActivity.this.projKey, projectWithKey.getPosterPath(), PublishInfoActivity.this.projectThumb, false, new ProjectPosterView.PosterViewListener() { // from class: com.adobe.premiereclip.sharing.PublishInfoActivity.1.1
                    @Override // com.adobe.premiereclip.util.ProjectPosterView.PosterViewListener
                    public void onSuccessImageLoad(String str, Bitmap bitmap) {
                        if (str.equals(PublishInfoActivity.this.projKey)) {
                            PublishInfoActivity.this.projectThumb.setImageBitmap(bitmap);
                        }
                    }
                });
            }
        });
        this.publishArrow = (ImageView) findViewById(R.id.publish_arrow);
        this.unlistedArrow = (ImageView) findViewById(R.id.unlisted_arrow);
        addEditTextListener();
        addPublicOnClickListener();
        addUnlistedOnClickListener();
        addPrepareVideoListener();
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

    public final void clearText(View view) {
        this.projectName.setText("");
    }

    private void addPublicOnClickListener() {
        ((LinearLayout) findViewById(R.id.publish_layout)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.PublishInfoActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PublishInfoActivity.this.publishArrow.setVisibility(0);
                PublishInfoActivity.this.unlistedArrow.setVisibility(8);
                PublishInfoActivity.this.unlisted = false;
            }
        });
    }

    private void addEditTextListener() {
        this.projectName = (EditText) findViewById(R.id.publish_info_project_name);
        this.projectName.setText(this.projName);
        this.projectName.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.PublishInfoActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Metrics.sharedInstance().didTapProjectTitleInProjectExport();
            }
        });
    }

    private void addUnlistedOnClickListener() {
        ((LinearLayout) findViewById(R.id.unlisted_layout)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.PublishInfoActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PublishInfoActivity.this.publishArrow.setVisibility(8);
                PublishInfoActivity.this.unlistedArrow.setVisibility(0);
                PublishInfoActivity.this.unlisted = true;
            }
        });
    }

    public final void closeAndGoBack(View view) {
        onBackPressed();
    }

    private void addPrepareVideoListener() {
        ((Button) findViewById(R.id.publish_button)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.PublishInfoActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = PublishInfoActivity.this.projectName.getText().toString();
                if (string.equals("")) {
                    string = PublishInfoActivity.this.projName;
                }
                if (!string.equals(PublishInfoActivity.this.projName)) {
                    Metrics.sharedInstance().didEditExportProjectTitle(string);
                }
                Intent intent = new Intent();
                intent.putExtra("publish_video_ccv", true);
                intent.putExtra("title", string);
                intent.putExtra("unlisted", PublishInfoActivity.this.unlisted);
                PublishInfoActivity.this.setResult(-1, intent);
                PublishInfoActivity.this.onBackPressed();
            }
        });
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }
}
