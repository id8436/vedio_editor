package com.adobe.premiereclip.sharing;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.util.ProjectPosterView;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class SharingPublishActivity extends TopOfEditorActivity {
    public static final String videoLinkPrefix = "http://premiereclip.adobe.com/videos/";
    private String projKey;
    private String projTitle;
    private ImageView projectThumb;
    private SharingIntentsOptions sharingIntentsOptions;
    private String uploadId;
    private TextView videoLinkText;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_share_publish);
        d.a(this);
        this.sharingIntentsOptions = new SharingIntentsOptions(this, null);
        this.uploadId = getIntent().getStringExtra("upload_id");
        this.projKey = getIntent().getStringExtra("project_key");
        this.projTitle = getIntent().getStringExtra("project_title");
        final Project projectWithKey = ProjectManager.getInstance().getProjectWithKey(this.projKey);
        this.projectThumb = (ImageView) findViewById(R.id.publish_project_thumb_final_share);
        this.projectThumb.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.adobe.premiereclip.sharing.SharingPublishActivity.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SharingPublishActivity.this.projectThumb.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                SharingPublishActivity.this.projectThumb.getMeasuredWidth();
                SharingPublishActivity.this.projectThumb.getMeasuredHeight();
                ProjectPosterView.load(SharingPublishActivity.this.projKey, projectWithKey.getPosterPath(), SharingPublishActivity.this.projectThumb, false, new ProjectPosterView.PosterViewListener() { // from class: com.adobe.premiereclip.sharing.SharingPublishActivity.1.1
                    @Override // com.adobe.premiereclip.util.ProjectPosterView.PosterViewListener
                    public void onSuccessImageLoad(String str, Bitmap bitmap) {
                        if (str.equals(SharingPublishActivity.this.projKey)) {
                            SharingPublishActivity.this.projectThumb.setImageBitmap(bitmap);
                        }
                    }
                });
            }
        });
        this.videoLinkText = (TextView) findViewById(R.id.video_link);
        this.videoLinkText.setText(videoLinkPrefix + this.uploadId);
        this.videoLinkText.setMovementMethod(LinkMovementMethod.getInstance());
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
    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.sharingIntentsOptions.onShareActivityResult(i, i2, intent);
    }

    public void onShareClick(View view) {
        Metrics.sharedInstance().didTapShareForExportPublishedVideoWithCCVID(this.uploadId, this.projTitle);
        this.sharingIntentsOptions.onShareClicked(videoLinkPrefix + this.uploadId, this.projTitle);
    }

    public final void closeAndGoBack(View view) {
        onBackPressed();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (!this.sharingIntentsOptions.onBackPressed()) {
            super.onBackPressed();
            overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
        }
    }
}
