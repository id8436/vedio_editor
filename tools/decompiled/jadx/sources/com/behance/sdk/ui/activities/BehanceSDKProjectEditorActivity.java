package com.behance.sdk.ui.activities;

import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ViewFlipper;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetTextEditorConfigTaskListener;
import com.behance.sdk.dto.editor.BehanceSDKEditorProjectDTO;
import com.behance.sdk.exception.BehanceSDKFileUtilsInitializationException;
import com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment;
import com.behance.sdk.listeners.BehanceSDKProjectEditorServiceCallbacks;
import com.behance.sdk.listeners.IBehanceSDKEditorTextCallbacks;
import com.behance.sdk.services.BehanceSDKProjectEditorService;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;
import com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment;
import com.behance.sdk.ui.fragments.BehanceSDKProjectEditorCoverFragment;
import com.behance.sdk.ui.fragments.BehanceSDKProjectEditorReorderFragment;
import com.behance.sdk.ui.fragments.BehanceSDKProjectEditorSettingsFragment;
import com.behance.sdk.util.BehanceSDKFileUtils;
import com.behance.sdk.util.BehanceSDKProjectEditorParams;
import com.behance.sdk.util.BehanceSDKPublishTextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorActivity extends AppCompatActivity implements BehanceSDKProjectEditorHeadlessFragment.ActivityCallbacks, BehanceSDKProjectEditorServiceCallbacks, IBehanceSDKEditorTextCallbacks {
    private static final String BUNDLE_EXTRA_CURRENT_FRAGMENT = "BUNDLE_EXTRA_CURRENT_FRAGMENT";
    private static final int FRAGMENT_CONTENT = 0;
    private static final int FRAGMENT_COVER = 1;
    private static final int FRAGMENT_NONE = -1;
    private static final int FRAGMENT_SETTINGS = 2;
    public static final String FRAGMENT_TAG_CONTENT = "FRAGMENT_TAG_CONTENT";
    public static final String FRAGMENT_TAG_COVER = "FRAGMENT_TAG_COVER";
    public static final String FRAGMENT_TAG_REORDER = "FRAGMENT_TAG_REORDER";
    public static final String FRAGMENT_TAG_SETTINGS = "FRAGMENT_TAG_SETTINGS";
    public static final String INTENT_EXTRA_PARAMS = "INTENT_EXTRA_PARAMS";
    private FrameLayout activityProjectEditorContentFrame;
    private BehanceSDKTextView activityProjectEditorDone;
    private BehanceSDKTextView activityProjectEditorNext;
    private BehanceSDKTextView activityProjectEditorPublish;
    private BehanceSDKTextView activityProjectEditorReorder;
    private Toolbar activityProjectEditorToolbar;
    private ViewFlipper activityProjectEditorToolbarTitle;
    private BehanceSDKProjectEditorService editorService;
    private BehanceSDKProjectEditorHeadlessFragment headlessFragment;
    private int currentFragment = 0;
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity.8
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            BehanceSDKProjectEditorActivity.this.editorService = ((BehanceSDKProjectEditorService.ProjectEditorBinder) iBinder).getService();
            BehanceSDKProjectEditorActivity.this.editorService.setCallbacks(BehanceSDKProjectEditorActivity.this);
            if (BehanceSDKProjectEditorActivity.this.getIntent().hasExtra("INTENT_EXTRA_PARAMS")) {
                BehanceSDKProjectEditorParams behanceSDKProjectEditorParams = (BehanceSDKProjectEditorParams) BehanceSDKProjectEditorActivity.this.getIntent().getSerializableExtra("INTENT_EXTRA_PARAMS");
                if (behanceSDKProjectEditorParams.getProjectId() != null) {
                    BehanceSDKProjectEditorActivity.this.editorService.loadProject(behanceSDKProjectEditorParams.getProjectId());
                }
                BehanceSDKProjectEditorActivity.this.editorService.setProjectPublishListener(behanceSDKProjectEditorParams.getPublishListener());
                BehanceSDKProjectEditorActivity.this.editorService.setNotificationHandlerActivity(behanceSDKProjectEditorParams.getNotificationHandlerActivityClass());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            BehanceSDKProjectEditorActivity.this.editorService = null;
        }
    };

    private void initView() {
        this.activityProjectEditorContentFrame = (FrameLayout) findViewById(R.id.activity_project_editor_content_frame);
        this.activityProjectEditorToolbar = (Toolbar) findViewById(R.id.activity_project_editor_toolbar);
        this.activityProjectEditorToolbarTitle = (ViewFlipper) findViewById(R.id.activity_project_editor_toolbar_title);
        this.activityProjectEditorDone = (BehanceSDKTextView) findViewById(R.id.activity_project_editor_done);
        this.activityProjectEditorNext = (BehanceSDKTextView) findViewById(R.id.activity_project_editor_next);
        this.activityProjectEditorPublish = (BehanceSDKTextView) findViewById(R.id.activity_project_editor_publish);
        this.activityProjectEditorReorder = (BehanceSDKTextView) findViewById(R.id.activity_project_editor_reorder);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.bsdk_activity_project_editor);
        initView();
        try {
            BehanceSDKFileUtils.initialize(this);
        } catch (BehanceSDKFileUtilsInitializationException e2) {
            e2.printStackTrace();
        }
        this.headlessFragment = (BehanceSDKProjectEditorHeadlessFragment) getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT);
        if (this.headlessFragment == null) {
            this.headlessFragment = new BehanceSDKProjectEditorHeadlessFragment();
            getSupportFragmentManager().beginTransaction().add(this.headlessFragment, BehanceSDKHeadlessFragmentTags.FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT).commit();
            BehanceSDKPublishTextUtils.prepTextEditor(this, new IBehanceSDKGetTextEditorConfigTaskListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity.1
                @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetTextEditorConfigTaskListener
                public void onGetConfigSuccess(Boolean bool) {
                }

                @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetTextEditorConfigTaskListener
                public void onGetConfigFailure(Exception exc) {
                }
            });
        }
        this.headlessFragment.setCallbacks(this);
        setSupportActionBar(this.activityProjectEditorToolbar);
        this.activityProjectEditorContentFrame.removeAllViews();
        this.activityProjectEditorToolbar.setNavigationIcon(R.drawable.bsdk_icon_back);
        this.activityProjectEditorToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKProjectEditorActivity.this.onBackPressed();
            }
        });
        this.activityProjectEditorNext.setVisibility(0);
        this.activityProjectEditorNext.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKProjectEditorActivity.this.nextFragment(true);
            }
        });
        this.activityProjectEditorReorder.setVisibility(0);
        this.activityProjectEditorReorder.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new BehanceSDKProjectEditorReorderFragment().show(BehanceSDKProjectEditorActivity.this.getSupportFragmentManager(), BehanceSDKProjectEditorActivity.FRAGMENT_TAG_REORDER);
            }
        });
        this.activityProjectEditorPublish.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BehanceSDKProjectEditorActivity.this.headlessFragment.publish(true)) {
                    BehanceSDKProjectEditorActivity.this.finish();
                }
            }
        });
        this.activityProjectEditorDone.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKProjectEditorActivity.this.setTextEditHeaderVisibility(false);
                if (BehanceSDKProjectEditorActivity.this.getSupportFragmentManager().findFragmentByTag(BehanceSDKProjectEditorActivity.this.getTag(BehanceSDKProjectEditorActivity.this.currentFragment)) instanceof BehanceSDKProjectEditorContentFragment) {
                    ((BehanceSDKProjectEditorContentFragment) BehanceSDKProjectEditorActivity.this.getSupportFragmentManager().findFragmentByTag(BehanceSDKProjectEditorActivity.this.getTag(BehanceSDKProjectEditorActivity.this.currentFragment))).onEditTextInActive();
                }
            }
        });
        if (bundle == null || !bundle.containsKey(BUNDLE_EXTRA_CURRENT_FRAGMENT)) {
            if (getIntent().hasExtra("INTENT_EXTRA_PARAMS")) {
                BehanceSDKProjectEditorParams behanceSDKProjectEditorParams = (BehanceSDKProjectEditorParams) getIntent().getSerializableExtra("INTENT_EXTRA_PARAMS");
                if (behanceSDKProjectEditorParams.getProjectId() == null) {
                    this.currentFragment = 0;
                    getSupportFragmentManager().beginTransaction().add(this.activityProjectEditorContentFrame.getId(), getFragment(this.currentFragment), getTag(this.currentFragment)).commit();
                    this.headlessFragment.setProjectDetailsFromParams(behanceSDKProjectEditorParams);
                } else {
                    this.currentFragment = -1;
                }
            } else {
                this.currentFragment = 0;
                getSupportFragmentManager().beginTransaction().add(this.activityProjectEditorContentFrame.getId(), getFragment(this.currentFragment), getTag(this.currentFragment)).commit();
            }
        } else {
            this.currentFragment = bundle.getInt(BUNDLE_EXTRA_CURRENT_FRAGMENT, 0);
            fixButtons();
        }
        onModuleCountChanged(this.headlessFragment.getProjectModules().size());
        onPublishEligibilityChanged(this.headlessFragment.isPublishEligible());
    }

    protected void nextFragment(boolean z) {
        if (this.currentFragment != -1) {
            if (!z || this.currentFragment != 1 || ((!this.headlessFragment.getCoverImages().isEmpty() && ((BehanceSDKProjectEditorCoverFragment) getSupportFragmentManager().findFragmentByTag(FRAGMENT_TAG_COVER)).cropAndSave()) || this.headlessFragment.isCoverChosen() || this.headlessFragment.getDraftCover() != null)) {
                this.currentFragment = (z ? 1 : -1) + this.currentFragment;
                if (z) {
                    getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.bsdk_slide_in_from_right, R.anim.bsdk_slide_out_to_left, R.anim.bsdk_slide_in_from_left, R.anim.bsdk_slide_out_to_right).replace(this.activityProjectEditorContentFrame.getId(), getFragment(this.currentFragment), getTag(this.currentFragment)).addToBackStack(null).commitAllowingStateLoss();
                } else {
                    getSupportFragmentManager().popBackStack();
                }
                fixButtons();
            }
        }
    }

    private void fixButtons() {
        if (this.currentFragment == 0) {
            this.activityProjectEditorToolbarTitle.setDisplayedChild(0);
            this.activityProjectEditorDone.setVisibility(4);
            this.activityProjectEditorPublish.setVisibility(4);
            this.activityProjectEditorReorder.setVisibility(0);
            this.activityProjectEditorNext.setVisibility(0);
            return;
        }
        if (this.currentFragment == 1) {
            this.activityProjectEditorToolbarTitle.setDisplayedChild(1);
            this.activityProjectEditorDone.setVisibility(4);
            this.activityProjectEditorPublish.setVisibility(4);
            this.activityProjectEditorReorder.setVisibility(4);
            this.activityProjectEditorNext.setVisibility(0);
            return;
        }
        if (this.currentFragment == 2) {
            this.activityProjectEditorToolbarTitle.setDisplayedChild(2);
            this.activityProjectEditorDone.setVisibility(4);
            this.activityProjectEditorNext.setVisibility(4);
            this.activityProjectEditorReorder.setVisibility(4);
            this.activityProjectEditorPublish.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment getFragment(int i) {
        switch (i) {
            case 0:
                return new BehanceSDKProjectEditorContentFragment();
            case 1:
                return new BehanceSDKProjectEditorCoverFragment();
            case 2:
                return new BehanceSDKProjectEditorSettingsFragment();
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTag(int i) {
        switch (i) {
            case 0:
                return FRAGMENT_TAG_CONTENT;
            case 1:
                return FRAGMENT_TAG_COVER;
            case 2:
                return FRAGMENT_TAG_SETTINGS;
            default:
                return null;
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.ActivityCallbacks
    public void onModuleCountChanged(int i) {
        this.activityProjectEditorNext.setEnabled(i > 0);
        this.activityProjectEditorReorder.setEnabled(i > 0);
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.ActivityCallbacks
    public BehanceSDKProjectEditorService getServiceInstance() {
        return this.editorService;
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.ActivityCallbacks
    public void onPublishEligibilityChanged(boolean z) {
        this.activityProjectEditorPublish.setEnabled(z);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.currentFragment > 0) {
            nextFragment(false);
        } else {
            confirmAndClose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopServiceAndFinish() {
        if (this.editorService != null) {
            this.editorService.stopSelf();
        }
        finish();
    }

    private void confirmAndClose() {
        if (this.headlessFragment.getProjectModules().isEmpty()) {
            stopServiceAndFinish();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                switch (i) {
                    case -3:
                        BehanceSDKProjectEditorActivity.this.stopServiceAndFinish();
                        break;
                    case -2:
                        dialogInterface.dismiss();
                        break;
                    case -1:
                        if (BehanceSDKProjectEditorActivity.this.headlessFragment.publish(false)) {
                            BehanceSDKProjectEditorActivity.this.finish();
                        }
                        break;
                }
            }
        };
        builder.setPositiveButton(R.string.bsdk_project_editor_dialog_close_save, onClickListener);
        builder.setNeutralButton(R.string.bsdk_project_editor_dialog_close_discard, onClickListener);
        builder.setNegativeButton(R.string.bsdk_project_editor_dialog_close_cancel, onClickListener);
        builder.setTitle(R.string.bsdk_project_editor_dialog_close_title);
        builder.setMessage(R.string.bsdk_project_editor_dialog_close_message);
        builder.create().show();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(BUNDLE_EXTRA_CURRENT_FRAGMENT, this.currentFragment);
    }

    public void setToolbarShadow(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 && this.activityProjectEditorToolbar != null) {
            this.activityProjectEditorToolbar.setTranslationZ(z ? 0.0f : -this.activityProjectEditorToolbar.getElevation());
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Intent intent = new Intent(this, (Class<?>) BehanceSDKProjectEditorService.class);
        getApplicationContext().startService(intent);
        getApplicationContext().bindService(intent, this.mConnection, 1);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        getApplicationContext().unbindService(this.mConnection);
    }

    @Override // com.behance.sdk.listeners.BehanceSDKProjectEditorServiceCallbacks
    public void onFileUploadFailed(int i) {
    }

    @Override // com.behance.sdk.listeners.BehanceSDKProjectEditorServiceCallbacks
    public void onEmbedTransformFailed(int i) {
    }

    @Override // com.behance.sdk.listeners.BehanceSDKProjectEditorServiceCallbacks
    public void onProjectLoaded(final BehanceSDKEditorProjectDTO behanceSDKEditorProjectDTO) {
        runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity.9
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorActivity.this.headlessFragment.setProject(behanceSDKEditorProjectDTO);
                if (BehanceSDKProjectEditorActivity.this.getIntent().hasExtra("INTENT_EXTRA_PARAMS")) {
                    BehanceSDKProjectEditorActivity.this.headlessFragment.setProjectDetailsFromParams((BehanceSDKProjectEditorParams) BehanceSDKProjectEditorActivity.this.getIntent().getSerializableExtra("INTENT_EXTRA_PARAMS"));
                }
                BehanceSDKProjectEditorActivity.this.currentFragment = 0;
                BehanceSDKProjectEditorActivity.this.getSupportFragmentManager().beginTransaction().add(BehanceSDKProjectEditorActivity.this.activityProjectEditorContentFrame.getId(), BehanceSDKProjectEditorActivity.this.getFragment(BehanceSDKProjectEditorActivity.this.currentFragment), BehanceSDKProjectEditorActivity.this.getTag(BehanceSDKProjectEditorActivity.this.currentFragment)).commit();
                BehanceSDKProjectEditorActivity.this.onModuleCountChanged(BehanceSDKProjectEditorActivity.this.headlessFragment.getProjectModules().size());
                BehanceSDKProjectEditorActivity.this.onPublishEligibilityChanged(BehanceSDKProjectEditorActivity.this.headlessFragment.isPublishEligible());
            }
        });
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKEditorTextCallbacks
    public void onTextEditorActive() {
        setTextEditHeaderVisibility(true);
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKEditorTextCallbacks
    public void onTextEditorInActive() {
        setTextEditHeaderVisibility(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextEditHeaderVisibility(boolean z) {
        if (z) {
            this.activityProjectEditorNext.setVisibility(4);
            this.activityProjectEditorReorder.setVisibility(4);
            this.activityProjectEditorDone.setVisibility(0);
            return;
        }
        fixButtons();
    }
}
