package com.adobe.premiereclip.sharing;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.ConfirmDialog;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.util.ProjectPosterView;
import com.h.a.d;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.af;
import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.aj;
import com.twitter.sdk.android.core.c;
import com.twitter.sdk.android.core.identity.TwitterLoginButton;
import com.twitter.sdk.android.core.s;

/* JADX INFO: loaded from: classes2.dex */
public class TwitterSettingsActivity extends TopOfEditorActivity {
    private static final int MAX_CHAR_LIMIT = 116;
    private static final String PREF_ACCOUNT_NAME = "accountName";
    private static final String PREF_ACCOUNT_SECRET = "accountSecret";
    private static final String PREF_ACCOUNT_TOKEN = "accountToken";
    String accountName;
    TextView charCount;
    TextWatcher charCountWatcher;
    EditText descText;
    String projKey;
    String projName;
    Button publishBtn;
    TwitterLoginButton signInUser;
    TextView signOutBtn;
    TwitterAuthToken twitterAuthToken;
    TextView userName;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_twitter_settings);
        d.a(this);
        Intent intent = getIntent();
        this.projKey = intent.getStringExtra("project_key");
        this.projName = intent.getStringExtra("project_name");
        this.signInUser = (TwitterLoginButton) findViewById(R.id.sign_in_user);
        this.publishBtn = (Button) findViewById(R.id.publish_button);
        this.signOutBtn = (TextView) findViewById(R.id.sign_out);
        this.userName = (TextView) findViewById(R.id.user_name);
        this.charCount = (TextView) findViewById(R.id.char_count);
        this.descText = (EditText) findViewById(R.id.text_desc);
        this.twitterAuthToken = null;
        this.charCountWatcher = new TextWatcher() { // from class: com.adobe.premiereclip.sharing.TwitterSettingsActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                TwitterSettingsActivity.this.setCharCount();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        };
        final ImageView imageView = (ImageView) findViewById(R.id.publish_project_thumb);
        imageView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.adobe.premiereclip.sharing.TwitterSettingsActivity.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                imageView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                Log.d("PublishInfoActivity", "w = " + imageView.getMeasuredWidth() + ", h = " + imageView.getMeasuredHeight());
                ProjectPosterView.load(TwitterSettingsActivity.this.projKey, ProjectManager.getInstance().getProjectWithKey(TwitterSettingsActivity.this.projKey).getPosterPath(), imageView, false, new ProjectPosterView.PosterViewListener() { // from class: com.adobe.premiereclip.sharing.TwitterSettingsActivity.2.1
                    @Override // com.adobe.premiereclip.util.ProjectPosterView.PosterViewListener
                    public void onSuccessImageLoad(String str, Bitmap bitmap) {
                        if (str.equals(TwitterSettingsActivity.this.projKey)) {
                            imageView.setImageBitmap(bitmap);
                        }
                    }
                });
            }
        });
        setUserState();
        addPublishListener();
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
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.signInUser.a(i, i2, intent);
    }

    public final void closeAndGoBack(View view) {
        onBackPressed();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCharCount() {
        int length = this.descText.getText().toString().trim().length();
        this.charCount.setText(String.valueOf(116 - (length <= 116 ? length : 116)));
    }

    private void setUserState() {
        SharedPreferences preferences = getPreferences(0);
        this.accountName = preferences.getString(PREF_ACCOUNT_NAME, null);
        String string = preferences.getString(PREF_ACCOUNT_TOKEN, null);
        String string2 = preferences.getString(PREF_ACCOUNT_SECRET, null);
        if (this.accountName != null && string != null && string2 != null) {
            this.twitterAuthToken = new TwitterAuthToken(string, string2);
            setSignedInState();
        } else {
            setSignedOutState();
        }
    }

    private void addSignOutListener() {
        this.signOutBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.TwitterSettingsActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ConfirmDialog confirmDialog = new ConfirmDialog(TwitterSettingsActivity.this, TwitterSettingsActivity.this.getString(R.string.youtube_sign_out_confirm_title), TwitterSettingsActivity.this.getString(R.string.youtube_sign_out_confirm_message), true);
                confirmDialog.setAcceptButton(TwitterSettingsActivity.this.getString(R.string.youtube_sign_out_confirm), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.sharing.TwitterSettingsActivity.3.1
                    @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
                    public void onClick() {
                        af.a().f().c();
                        TwitterSettingsActivity.this.setSignedOutState();
                    }
                });
                confirmDialog.setRejectButton(TwitterSettingsActivity.this.getString(R.string.youtube_sign_out_reject), null);
                confirmDialog.show();
            }
        });
    }

    private void addSignInListener() {
        this.signInUser.setCallback(new c<aj>() { // from class: com.adobe.premiereclip.sharing.TwitterSettingsActivity.4
            @Override // com.twitter.sdk.android.core.c
            public void success(s<aj> sVar) {
                TwitterSettingsActivity.this.twitterAuthToken = sVar.f4108a.a();
                TwitterSettingsActivity.this.accountName = sVar.f4108a.c();
                TwitterSettingsActivity.this.setSignedInState();
            }

            @Override // com.twitter.sdk.android.core.c
            public void failure(ah ahVar) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSignedInState() {
        SharedPreferences.Editor editorEdit = getPreferences(0).edit();
        editorEdit.putString(PREF_ACCOUNT_NAME, this.accountName);
        editorEdit.putString(PREF_ACCOUNT_TOKEN, this.twitterAuthToken.f3818b);
        editorEdit.putString(PREF_ACCOUNT_SECRET, this.twitterAuthToken.f3819c);
        editorEdit.commit();
        this.signInUser.setVisibility(8);
        this.userName.setVisibility(0);
        this.userName.setText("@" + this.accountName);
        this.charCount.setVisibility(0);
        setCharCount();
        this.descText.addTextChangedListener(this.charCountWatcher);
        this.signOutBtn.setVisibility(0);
        addSignOutListener();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSignedOutState() {
        this.accountName = null;
        this.twitterAuthToken = null;
        this.signOutBtn.setVisibility(4);
        this.userName.setVisibility(8);
        this.charCount.setVisibility(8);
        this.descText.removeTextChangedListener(this.charCountWatcher);
        this.signInUser.setVisibility(0);
        addSignInListener();
        SharedPreferences.Editor editorEdit = getPreferences(0).edit();
        editorEdit.putString(PREF_ACCOUNT_NAME, null);
        editorEdit.putString(PREF_ACCOUNT_TOKEN, null);
        editorEdit.putString(PREF_ACCOUNT_SECRET, null);
        editorEdit.commit();
    }

    private void addPublishListener() {
        this.publishBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.TwitterSettingsActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TwitterSettingsActivity.this.publishToTwitterBtnClicked();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void publishToTwitterBtnClicked() {
        String string = this.descText.getText().toString();
        if (this.twitterAuthToken == null || this.accountName == null) {
            new MessageDialog(this, getString(R.string.youtube_no_account_alert_title), getString(R.string.twitter_no_account_alert_message), true).show();
        } else if (string.trim().length() == 0) {
            new MessageDialog(this, getString(R.string.youtube_no_title_alert_title), getString(R.string.twitter_no_title_alert_message), true).show();
        } else {
            publishVideoToTwitter();
        }
    }

    protected void publishVideoToTwitter() {
        if (this.accountName != null && this.twitterAuthToken != null) {
            Intent intent = new Intent();
            intent.putExtra("twitter_upload", true);
            intent.putExtra("token", this.twitterAuthToken.f3818b);
            intent.putExtra("secret", this.twitterAuthToken.f3819c);
            String strTrim = this.descText.getText().toString().trim();
            if (strTrim.length() > 116) {
                strTrim = strTrim.substring(0, 115);
            }
            intent.putExtra("tweet", strTrim);
            setResult(-1, intent);
            onBackPressed();
        }
    }
}
