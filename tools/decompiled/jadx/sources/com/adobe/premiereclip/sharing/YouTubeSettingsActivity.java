package com.adobe.premiereclip.sharing;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.ConfirmDialog;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.adobe.premiereclip.util.MarshmallowUtils;
import com.google.android.gms.common.AccountPicker;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAccountCredential;
import com.google.gdata.data.photos.GphotoAccess;
import com.google.gdata.data.photos.TagData;
import com.h.a.d;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class YouTubeSettingsActivity extends TopOfEditorActivity {
    private static final Level LOGGING_LEVEL = Level.ALL;
    private static final String PREF_ACCOUNT_NAME = "accountName";
    static final int REQUEST_ACCOUNT_PICKER = 2;
    static final int REQUEST_AUTHORIZATION = 1;
    static final int REQUEST_GOOGLE_PLAY_SERVICES = 0;
    static final int REQUEST_USER_AUTHORIZATION = 3;
    static final String TAG = "YoutubeSampleActivity";
    private final int MY_PERMISSIONS_REQUEST_READ_CONTACTS = 71;
    String Youtube_scope = "oauth2:https://www.googleapis.com/auth/youtube.upload";
    String accountName;
    GoogleAccountCredential credential;
    EditText descText;
    String description;
    Button privateBtn;
    String projKey;
    String projName;
    EditText projNameText;
    Button publicBtn;
    Button publishBtn;
    TextView signInUser;
    TextView signOutBtn;
    String tag;
    EditText tagText;
    String title;
    Button unlistedBtn;
    String videoAccess;
    public YouTubeLoadingDialog youTubeLoadingDialog;
    TextView youtubeDisclaimer;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_youtube_settings);
        d.a(this);
        Intent intent = getIntent();
        this.projKey = intent.getStringExtra("project_key");
        this.projName = intent.getStringExtra("project_name");
        this.publicBtn = (Button) findViewById(R.id.public_btn);
        this.privateBtn = (Button) findViewById(R.id.private_btn);
        this.unlistedBtn = (Button) findViewById(R.id.unlisted_btn);
        this.signInUser = (TextView) findViewById(R.id.sign_in_user);
        this.publishBtn = (Button) findViewById(R.id.publish_button);
        this.signOutBtn = (TextView) findViewById(R.id.sign_out);
        this.projNameText = (EditText) findViewById(R.id.text_proj_name);
        this.descText = (EditText) findViewById(R.id.text_desc);
        this.tagText = (EditText) findViewById(R.id.text_tag);
        this.youtubeDisclaimer = (TextView) findViewById(R.id.youtube_disclaimer);
        this.youTubeLoadingDialog = new YouTubeLoadingDialog(this);
        this.videoAccess = "public";
        this.projNameText.setText(this.projName);
        this.youtubeDisclaimer.setText(Html.fromHtml(getString(R.string.youtube_disclaimer) + "<a href=\"http://m.youtube.com/terms\">http://m.youtube.com/terms</a> "));
        this.youtubeDisclaimer.setMovementMethod(LinkMovementMethod.getInstance());
        getSavedUserName();
        addPrivateButtonListner();
        addPublicButtonListner();
        addUnlistedButtonListner();
        addSignInListner();
        addPublishListner();
        addSignOutListner();
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

    private void getSavedUserName() {
        if (checkGooglePlayServicesAvailable()) {
            this.accountName = getPreferences(0).getString(PREF_ACCOUNT_NAME, null);
            if (this.accountName != null) {
                setUserAccountName();
            } else {
                pickUserAccount();
            }
        }
    }

    private void addSignInListner() {
        this.signInUser.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.YouTubeSettingsActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (YouTubeSettingsActivity.this.checkGooglePlayServicesAvailable()) {
                    YouTubeSettingsActivity.this.pickUserAccount();
                }
            }
        });
    }

    private void addSignOutListner() {
        this.signOutBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.YouTubeSettingsActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ConfirmDialog confirmDialog = new ConfirmDialog(YouTubeSettingsActivity.this, YouTubeSettingsActivity.this.getString(R.string.youtube_sign_out_confirm_title), YouTubeSettingsActivity.this.getString(R.string.youtube_sign_out_confirm_message), true);
                confirmDialog.setAcceptButton(YouTubeSettingsActivity.this.getString(R.string.youtube_sign_out_confirm), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.sharing.YouTubeSettingsActivity.2.1
                    @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
                    public void onClick() {
                        YouTubeSettingsActivity.this.signOutFromAccount();
                    }
                });
                confirmDialog.setRejectButton(YouTubeSettingsActivity.this.getString(R.string.youtube_sign_out_reject), null);
                confirmDialog.show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void signOutFromAccount() {
        this.accountName = null;
        this.signOutBtn.setVisibility(4);
        this.signInUser.setText(R.string.youtube_signin_text);
        SharedPreferences.Editor editorEdit = getPreferences(0).edit();
        editorEdit.putString(PREF_ACCOUNT_NAME, null);
        editorEdit.commit();
    }

    private void addPublishListner() {
        this.publishBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.YouTubeSettingsActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MarshmallowUtils.getPermission(71, "android.permission.READ_CONTACTS", YouTubeSettingsActivity.this)) {
                    YouTubeSettingsActivity.this.publishToYoutubeBtnClicked();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void publishToYoutubeBtnClicked() {
        if (checkGooglePlayServicesAvailable()) {
            this.title = this.projNameText.getText().toString();
            this.description = this.descText.getText().toString();
            this.tag = this.tagText.getText().toString();
            Log.d(TAG, this.title + this.description + this.accountName + this.tag);
            if (this.accountName == null) {
                new MessageDialog(this, getString(R.string.youtube_no_account_alert_title), getString(R.string.youtube_no_account_alert_message), true).show();
                return;
            }
            if (this.title.trim().length() == 0 || this.description.trim().length() == 0) {
                new MessageDialog(this, getString(R.string.youtube_no_title_alert_title), getString(R.string.youtube_no_title_alert_message), true).show();
                return;
            }
            this.credential = new GoogleAccountCredential(this, this.Youtube_scope);
            this.credential.setSelectedAccountName(this.accountName);
            this.youTubeLoadingDialog.show();
            this.youTubeLoadingDialog.setCancelable(false);
            YouTubeGetTokenAsync.run(this);
        }
    }

    protected void publishVideoToYouTube() {
        if (this.accountName != null && this.title != null && this.description != null) {
            this.youTubeLoadingDialog.dismiss();
            Intent intent = new Intent();
            intent.putExtra("youtube_upload", true);
            intent.putExtra("account_name", this.accountName);
            intent.putExtra("video_access", this.videoAccess);
            intent.putExtra("title", this.title);
            intent.putExtra("description", this.description);
            intent.putExtra(TagData.KIND, this.tag);
            setResult(-1, intent);
            onBackPressed();
        }
    }

    protected void pickUserAccount() {
        startActivityForResult(AccountPicker.newChooseAccountIntent(null, null, new String[]{"com.google"}, true, null, null, null, null), 2);
    }

    private void setUserAccountName() {
        this.signInUser.setPaintFlags(this.signInUser.getPaintFlags() | 8);
        this.signInUser.setText(getString(R.string.youtube_sign_in_text) + " " + this.accountName);
        this.signOutBtn.setVisibility(0);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 2 && intent != null && intent.getExtras() != null && i2 == -1) {
            this.accountName = intent.getExtras().getString("authAccount");
            if (this.accountName != null) {
                SharedPreferences.Editor editorEdit = getPreferences(0).edit();
                editorEdit.putString(PREF_ACCOUNT_NAME, this.accountName);
                editorEdit.commit();
                setUserAccountName();
            }
        }
        if (i == 3) {
            if (i2 == -1) {
                YouTubeGetTokenAsync.run(this);
                return;
            }
            this.youTubeLoadingDialog.dismiss();
            this.youTubeLoadingDialog.dismiss();
            new MessageDialog(this, getString(R.string.youtube_access_error), getString(R.string.youtube_user_permission_dialog), true).show();
        }
    }

    private void addPublicButtonListner() {
        this.publicBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.YouTubeSettingsActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                YouTubeSettingsActivity.this.publicBtn.setBackgroundColor(Color.parseColor("#ff6f36a0"));
                YouTubeSettingsActivity.this.publicBtn.setTextColor(-1);
                YouTubeSettingsActivity.this.privateBtn.setBackgroundColor(-1);
                YouTubeSettingsActivity.this.privateBtn.setTextColor(Color.parseColor("#ff6f36a0"));
                YouTubeSettingsActivity.this.unlistedBtn.setBackgroundColor(-1);
                YouTubeSettingsActivity.this.unlistedBtn.setTextColor(Color.parseColor("#ff6f36a0"));
                YouTubeSettingsActivity.this.videoAccess = "public";
                Log.d("SELECT", YouTubeSettingsActivity.this.videoAccess);
            }
        });
    }

    private void addPrivateButtonListner() {
        this.privateBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.YouTubeSettingsActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                YouTubeSettingsActivity.this.privateBtn.setBackgroundColor(Color.parseColor("#ff6f36a0"));
                YouTubeSettingsActivity.this.privateBtn.setTextColor(-1);
                YouTubeSettingsActivity.this.publicBtn.setBackgroundColor(-1);
                YouTubeSettingsActivity.this.publicBtn.setTextColor(Color.parseColor("#ff6f36a0"));
                YouTubeSettingsActivity.this.unlistedBtn.setBackgroundColor(-1);
                YouTubeSettingsActivity.this.unlistedBtn.setTextColor(Color.parseColor("#ff6f36a0"));
                YouTubeSettingsActivity.this.videoAccess = GphotoAccess.Value.PRIVATE;
                Log.d("SELECT", YouTubeSettingsActivity.this.videoAccess);
            }
        });
    }

    private void addUnlistedButtonListner() {
        this.unlistedBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.YouTubeSettingsActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                YouTubeSettingsActivity.this.unlistedBtn.setBackgroundColor(Color.parseColor("#ff6f36a0"));
                YouTubeSettingsActivity.this.unlistedBtn.setTextColor(-1);
                YouTubeSettingsActivity.this.publicBtn.setBackgroundColor(-1);
                YouTubeSettingsActivity.this.publicBtn.setTextColor(Color.parseColor("#ff6f36a0"));
                YouTubeSettingsActivity.this.privateBtn.setBackgroundColor(-1);
                YouTubeSettingsActivity.this.privateBtn.setTextColor(Color.parseColor("#ff6f36a0"));
                YouTubeSettingsActivity.this.videoAccess = "unlisted";
                Log.d("SELECT", YouTubeSettingsActivity.this.videoAccess);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkGooglePlayServicesAvailable() {
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this);
        if (!GooglePlayServicesUtil.isUserRecoverableError(iIsGooglePlayServicesAvailable)) {
            return true;
        }
        showGooglePlayServicesAvailabilityErrorDialog(iIsGooglePlayServicesAvailable);
        return false;
    }

    void showGooglePlayServicesAvailabilityErrorDialog(final int i) {
        runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.sharing.YouTubeSettingsActivity.7
            @Override // java.lang.Runnable
            public void run() {
                GooglePlayServicesUtil.getErrorDialog(i, YouTubeSettingsActivity.this, 0).show();
            }
        });
    }

    void showNetworkError() {
        this.youTubeLoadingDialog.dismiss();
        new MessageDialog(this, getString(R.string.youtube_network_error), getString(R.string.youtube_network_error_dialog), true).show();
    }

    void showGenericError() {
        this.youTubeLoadingDialog.dismiss();
        new MessageDialog(this, getString(R.string.youtube_generic_error), getString(R.string.youtube_generic_error_dialog), true).show();
    }

    public final void closeAndGoBack(View view) {
        onBackPressed();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 71:
                if (iArr.length > 0 && iArr[0] == 0) {
                    publishToYoutubeBtnClicked();
                } else if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_CONTACTS")) {
                    new MessageDialog(this, getString(R.string.read_contacts_access_alert), getString(R.string.contacts_access_settings_path), true).show();
                }
                break;
        }
    }
}
