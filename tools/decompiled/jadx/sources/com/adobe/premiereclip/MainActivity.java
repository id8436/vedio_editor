package com.adobe.premiereclip;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.ActionBarDrawerToggle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.webkit.MimeTypeMap;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativeapps.settings.activity.AboutAppFragment;
import com.adobe.creativeapps.settings.activity.BasePreferenceFragment;
import com.adobe.creativeapps.settings.activity.BugPreferenceFragment;
import com.adobe.creativeapps.settings.activity.BumperPreferenceFragment;
import com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference;
import com.adobe.creativeapps.settings.activity.PreferencesFragment;
import com.adobe.creativeapps.settings.activity.ProfileFragment;
import com.adobe.creativeapps.settings.adapters.DrawerOptionAdapter;
import com.adobe.creativeapps.settings.utils.UserProfileHandler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import com.adobe.creativesdk.foundation.storage.AdobePhotoPage;
import com.adobe.creativesdk.foundation.storage.IAdobePhotoAssetsListRequestCompletionHandler;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.analytics.ABTestNotification;
import com.adobe.premiereclip.base.BaseActivity;
import com.adobe.premiereclip.coachmarks.CoachMarks;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.dcx.DCXPreferencesManager;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.dcx.DCXSyncStatusActivity;
import com.adobe.premiereclip.dcx.DCXSyncStatusButton;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.ConfirmDialog;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.dialogs.SyncDialog;
import com.adobe.premiereclip.downloadmanager.CCDownloadSession;
import com.adobe.premiereclip.editor.EditorActivity;
import com.adobe.premiereclip.editor.MediaCaptureOptionsView;
import com.adobe.premiereclip.editor.automatic.AutomaticActivity;
import com.adobe.premiereclip.featuredVideos.CommunityVideosFragment;
import com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment;
import com.adobe.premiereclip.media.AddMediaManager;
import com.adobe.premiereclip.media.MediaInfo;
import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.mediabrowser.MediaSelectorView;
import com.adobe.premiereclip.mediabrowser.ProjectTypeActivity;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.notification.ClipNotificationManager;
import com.adobe.premiereclip.project.NewProjectData;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;
import com.adobe.premiereclip.source.CreativeCloudSource;
import com.adobe.premiereclip.util.CustomFrameHelper;
import com.adobe.premiereclip.util.FileOps;
import com.adobe.premiereclip.util.LollipopUtils;
import com.adobe.premiereclip.util.MarshmallowUtils;
import com.adobe.premiereclip.util.Navigator;
import com.adobe.premiereclip.util.Utilities;
import com.dropbox.core.android.Auth;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.getbase.floatingactionbutton.h;
import com.google.android.gms.common.AccountPicker;
import com.h.a.d;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends BaseActivity implements ICCAppSettingsPreference, DrawerOptionAdapter.OnItemClickListener, CommunityVideosFragment.CommunityFeedTitleListener {
    private static final String APP_KEY = "nd82cy66iibva6b";
    private static final String APP_SECRET = "6fq9hvl1cu0g86a";
    private static final int NUM_PAGES = 3;
    private static final int PROJECT_TYPE_REQUEST = 20010;
    private static final int REQUEST_ACCOUNT_PICKER = 2;
    private BottomSheetView bottomSheetView;
    private boolean cancelLRProject;
    private CCDownloadSession ccDownloadSession;
    private Dialog creatingLRProjectMessageDialog;
    private DCXSyncStatusButton dcxSyncStatusButton;
    private FloatingActionsMenu floatingActionsMenu;
    private boolean isDrawerOpen;
    private CoachMarks mCoachmark;
    private DrawerOptionAdapter mDrawerAdapter;
    private DrawerLayout mDrawerLayout;
    private RecyclerView mDrawerList;
    private String[] mDrawerOptions;
    private ActionBarDrawerToggle mDrawerToggle;
    private ViewPager mPager;
    private Toolbar mToolbar;
    private MediaCaptureOptionsView mediaCaptureOptionsView;
    private MediaSelectorView mediaSelectorView;
    private BroadcastReceiver networkStateReceiver;
    private Observer network_reachability_observer;
    private ArrayList<String> pageTitles;
    private ImageButton placeHolderButton;
    private int projectType;
    private TextView subview_fragmentView;
    private ImageView syncCloudButton;
    private TabLayout tabLayout;
    private ViewPagerAdapter viewPagerAdapter;
    private String TAG = "MainActivity";
    final int maxAssetAllowedFromLR = 100;
    private int previousTabID = -1;
    private Class fragmentClass = null;
    private FragmentManager fragmentManager = null;
    private Fragment fragment = null;
    private final int MY_PERMISSIONS_REQUEST_CAMERA = 11;
    private final int MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE = 14;
    private final int PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_WATERMARK = 15;
    private final int PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_BUMPER = 16;
    private final int PERMISSIONS_REQUEST_READ_WRITE_EXTERNAL_STORAGE_FOR_PROJECT_FROM_OTHER_APPS = 17;
    private final int MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_PHOTOS = 71;
    private final int PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE = 72;
    private final int PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE_2 = 74;
    private final int PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX = 73;
    private final int PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX_2 = 75;
    private String bugAssetPath = null;
    private String bumperAssetPath = null;
    private final int ITEM_PROFILE = 0;
    private final int ITEM_MAIN = 1;
    private final int ITEM_ABOUT = 2;
    private final int ITEM_PREFERENCES = 3;
    private final int ITEM_SEPARATOR = 4;
    private final int ITEM_FEEDBACK = 5;
    private final int ITEM_OVERLAY_PREFERENCE = 6;
    private final int ITEM_BUMPER_PREFERENCE = 7;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws Throwable {
        int i = R.drawable.ic_menu;
        super.onCreate(bundle);
        String adobeIdWrapped = Utilities.getAdobeIdWrapped();
        if (adobeIdWrapped == null) {
            switchToTourView();
            finish();
            return;
        }
        setContentView(R.layout.activity_main);
        this.fragmentManager = getSupportFragmentManager();
        this.subview_fragmentView = (TextView) findViewById(R.id.subview_fragment);
        this.pageTitles = new ArrayList<>();
        this.pageTitles.add(getResources().getString(R.string.page_title_projects));
        this.pageTitles.add(getResources().getString(R.string.page_title_community));
        this.pageTitles.add(getResources().getString(R.string.page_title_published));
        this.previousTabID = -1;
        this.mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        this.mDrawerList = (RecyclerView) findViewById(R.id.left_drawer);
        this.mPager = (ViewPager) findViewById(R.id.main_pager);
        this.mDrawerOptions = getResources().getStringArray(R.array.drawer_options);
        this.mDrawerList.setHasFixedSize(true);
        this.mDrawerList.setLayoutManager(new LinearLayoutManager(this));
        this.mDrawerAdapter = new DrawerOptionAdapter(this.mDrawerOptions, this, this);
        this.mDrawerList.setAdapter(this.mDrawerAdapter);
        this.mToolbar = (Toolbar) findViewById(R.id.main_toolbar);
        setSupportActionBar(this.mToolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.mToolbar.setNavigationIcon(R.drawable.ic_menu);
        this.mToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.MainActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.mDrawerLayout.openDrawer(MainActivity.this.mDrawerList);
            }
        });
        ((TextView) findViewById(R.id.lib_name)).setText(R.string.title_activity_drawer);
        this.mDrawerToggle = new ActionBarDrawerToggle(this, this.mDrawerLayout, i, R.string.drawer_open, R.string.drawer_close) { // from class: com.adobe.premiereclip.MainActivity.2
            @Override // android.support.v4.app.ActionBarDrawerToggle, android.support.v4.widget.DrawerLayout.DrawerListener
            public void onDrawerClosed(View view) {
                MainActivity.this.isDrawerOpen = false;
                MainActivity.this.invalidateOptionsMenu();
            }

            @Override // android.support.v4.app.ActionBarDrawerToggle, android.support.v4.widget.DrawerLayout.DrawerListener
            public void onDrawerOpened(View view) {
                MainActivity.this.isDrawerOpen = true;
                MainActivity.this.invalidateOptionsMenu();
            }

            @Override // android.support.v4.app.ActionBarDrawerToggle, android.support.v4.widget.DrawerLayout.DrawerListener
            public void onDrawerStateChanged(int i2) {
                super.onDrawerStateChanged(i2);
                if (i2 != 0) {
                    MainActivity.this.isDrawerOpen = true;
                }
            }
        };
        this.mDrawerLayout.setDrawerListener(this.mDrawerToggle);
        if (bundle == null) {
            this.mDrawerLayout.closeDrawer(this.mDrawerList);
        }
        this.floatingActionsMenu = (FloatingActionsMenu) findViewById(R.id.open_project);
        this.floatingActionsMenu.setOnFloatingActionsMenuUpdateListener(new h() { // from class: com.adobe.premiereclip.MainActivity.3
            @Override // com.getbase.floatingactionbutton.h
            public void onMenuExpanded() {
                Metrics.sharedInstance().didTapNewProject();
                MainActivity.this.findViewById(R.id.background_for_menu).setVisibility(0);
                MainActivity.this.bottomSheetView.openView();
            }

            @Override // com.getbase.floatingactionbutton.h
            public void onMenuCollapsed() {
                MainActivity.this.findViewById(R.id.background_for_menu).setVisibility(8);
                if (MainActivity.this.bottomSheetView.isOpen()) {
                    MainActivity.this.bottomSheetView.closeView();
                }
            }
        });
        setupViewPager(this.mPager);
        this.tabLayout = (TabLayout) findViewById(R.id.main_tabs);
        this.tabLayout.setTabsFromPagerAdapter(this.viewPagerAdapter);
        this.tabLayout.setTabMode(0);
        this.tabLayout.setOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.adobe.premiereclip.MainActivity.4
            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                MainActivity.this.refreshAnalyticsForSelectedTab(MainActivity.this.getPreviousTabID(), tab.getPosition());
                int position = tab.getPosition();
                MainActivity.this.mPager.setCurrentItem(position);
                if (position == 1 || position == 2) {
                    FeaturedVideosBaseFragment.displayErrorIfNoInternet();
                }
            }

            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }
        });
        this.mPager.setOnPageChangeListener(new TabLayout.TabLayoutOnPageChangeListener(this.tabLayout));
        this.projectType = 2;
        this.mCoachmark = new CoachMarks(this, true);
        setCoachmarkListener();
        d.a(this);
        this.mediaSelectorView = new MediaSelectorView(this);
        setMediaSelectorCallbacks();
        this.mediaCaptureOptionsView = new MediaCaptureOptionsView(this);
        this.ccDownloadSession = new CCDownloadSession(this, getPreferenceProjectKey());
        this.bottomSheetView = new BottomSheetView(this);
        this.bottomSheetView.background.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.MainActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.bottomSheetView.closeView();
                MainActivity.this.findViewById(R.id.background_for_menu).setVisibility(8);
                MainActivity.this.floatingActionsMenu.a();
            }
        });
        if (!DCXModelController.getInstance().isInitialized()) {
            DCXModelController.getInstance().initalize(PremiereClipApplication.getContext(), adobeIdWrapped);
        }
        if (!DCXModelController.getInstance().isSyncInitialized()) {
            DCXModelController.getInstance().initializeSync();
        }
        this.syncCloudButton = (ImageView) findViewById(R.id.editorIconBarCloudBtn2);
        this.placeHolderButton = (ImageButton) findViewById(R.id.placeHolderViewForSyncBtn);
        if (ProjectManager.getInstance().getProjectsList().isEmpty()) {
            this.mPager.setCurrentItem(1);
        } else {
            this.mPager.setCurrentItem(0);
        }
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            if (extras.getBoolean("LightRoomProject")) {
                if (Utilities.isConnectedToInternet(this)) {
                    this.cancelLRProject = false;
                    Metrics.sharedInstance().didOpenClipProjectsCreateURL("lightroomURL");
                    this.creatingLRProjectMessageDialog = new CreatingLRProjectDialog(this, new PrepareVideoDialog.Listener() { // from class: com.adobe.premiereclip.MainActivity.6
                        @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
                        public void onPreparingCancelled() {
                            MainActivity.this.cancelLRProjectCreation();
                            MainActivity.this.creatingLRProjectMessageDialog.dismiss();
                        }

                        @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
                        public void onSavingCancelled() {
                        }

                        @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
                        public void onPublished() {
                        }

                        @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
                        public void onDismissed() {
                        }
                    });
                    this.creatingLRProjectMessageDialog.show();
                    getCCAssetsList(extras.getString("albumId"), extras.getString("projectName"), intent);
                } else {
                    showErrorDialogForLRImport();
                }
            } else if (extras.getBoolean("LightroomClipIdNotSame")) {
                new MessageDialog(this, getString(R.string.lr_alert_title), getString(R.string.lr_clip_id_not_same_message), true).show();
            } else {
                handleMediaFromExternalApp(intent);
            }
            if (extras.getBoolean("ab_testing")) {
                new ABTestNotification(this).setABTestSuccess();
                Log.d("ClipService", "ab test success");
            }
        }
        ClipNotificationManager.getInstance(this).initNotification(true);
        ClipPreferences clipPreferences = ClipPreferences.getInstance(this);
        Set<String> listOfUsers = clipPreferences.getListOfUsers(ClipPreferences.SYNC_DIALOG_USERS_LIST, null);
        if (listOfUsers != null) {
            ArrayList arrayList = new ArrayList(listOfUsers);
            if (!arrayList.contains(adobeIdWrapped)) {
                showSyncDialog();
                arrayList.add(adobeIdWrapped);
                HashSet hashSet = new HashSet();
                hashSet.addAll(arrayList);
                clipPreferences.setListOfUsers(ClipPreferences.SYNC_DIALOG_USERS_LIST, hashSet);
                return;
            }
            return;
        }
        showSyncDialog();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(adobeIdWrapped);
        HashSet hashSet2 = new HashSet();
        hashSet2.addAll(arrayList2);
        clipPreferences.setListOfUsers(ClipPreferences.SYNC_DIALOG_USERS_LIST, hashSet2);
    }

    private void showSyncDialog() {
        new SyncDialog(this).show();
    }

    private void handleMediaFromExternalApp(Intent intent) throws Throwable {
        String action = intent.getAction();
        String type = intent.getType();
        if ("android.intent.action.SEND_MULTIPLE".equals(action) && type != null) {
            Log.d(this.TAG, "ACTION_SEND_MULTIPLE " + type);
            handleMediaUrisFromExternalApp(intent.getParcelableArrayListExtra("android.intent.extra.STREAM"));
        }
    }

    private void handleMediaUrisFromExternalApp(ArrayList<Uri> arrayList) throws Throwable {
        Intent intentCreateGalleryLikeIntentFromURIArrayList = createGalleryLikeIntentFromURIArrayList(arrayList);
        if (intentCreateGalleryLikeIntentFromURIArrayList != null) {
            selectProjectType(AddMediaManager.DEVICE_MEDIA_REQUEST, intentCreateGalleryLikeIntentFromURIArrayList);
        }
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void pickUserAccount() {
        Log.d(this.TAG, "pickuseraccount");
        startActivityForResult(AccountPicker.newChooseAccountIntent(null, null, new String[]{"com.google"}, true, null, null, null, null), 2);
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void linkDropbox() {
        loginToDropbox();
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void unlinkDropbox() {
        GalleryActivity.setClient(null);
        Log.d(this.TAG, "unlinking account, removing oauth token");
        ClipPreferences.getInstance(this).removePreference("ACCESS_KEY");
        ClipPreferences.getInstance(this).removePreference("ACCESS_SECRET");
    }

    private void loginToDropbox() {
        System.out.println("in loginToDropbox: Gallery");
        if (!loadAuth()) {
            Auth.startOAuth2Authentication(getApplicationContext(), APP_KEY);
        }
    }

    private boolean loadAuth() {
        String string = ClipPreferences.getInstance(this).getString("ACCESS_KEY", null);
        String string2 = ClipPreferences.getInstance(this).getString("ACCESS_SECRET", null);
        return (string == null || string2 == null || string.length() == 0 || string2.length() == 0) ? false : true;
    }

    private void storeAuth() {
        System.out.println("in storeAuth: Main");
        String oAuth2Token = Auth.getOAuth2Token();
        System.out.println("in storeAuth: Main: token = " + oAuth2Token);
        if (oAuth2Token != null) {
            Log.d("Preferences", "in store auth");
            ClipPreferences.getInstance(this).setString("ACCESS_KEY", "oauth2:");
            ClipPreferences.getInstance(this).setString("ACCESS_SECRET", oAuth2Token);
        }
    }

    private Intent createGalleryLikeIntentFromURIArrayList(ArrayList<Uri> arrayList) throws Throwable {
        ArrayList<String> arrayList2 = new ArrayList<>();
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            Uri uri = arrayList.get(i);
            String realPathFromUri = Utilities.getRealPathFromUri(this, uri);
            if (realPathFromUri != null) {
                if (Utilities.getMimeTypefromPath(realPathFromUri).isEmpty()) {
                    z = true;
                } else {
                    arrayList2.add(realPathFromUri);
                }
            } else if (uri.getScheme() != null && uri.getScheme().equals("content")) {
                String type = getContentResolver().getType(uri);
                MimeTypeMap.getSingleton().getExtensionFromMimeType(type);
                if (type.isEmpty()) {
                    z = true;
                } else {
                    String str = getApplicationInfo().dataDir + File.separator + "externalapp" + File.separator + uri.toString().substring(10);
                    if (new File(str).exists()) {
                        arrayList2.add(str);
                    } else {
                        try {
                            Utilities.copyFileProviderUri(uri, str, PremiereClipApplication.getContext());
                            arrayList2.add(str);
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }
        if (arrayList2.size() == 0) {
            new MessageDialog(this, getString(R.string.unsupported_file_types_title), getString(R.string.unsupported_file_types_message), true).show();
            return null;
        }
        if (z) {
            Toast.makeText(this, getString(R.string.unsupported_file_types_toast), 1).show();
        }
        Intent intent = new Intent();
        intent.putStringArrayListExtra(GalleryActivity.INTENT_EXTRA_LIST, arrayList2);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelLRProjectCreation() {
        this.cancelLRProject = true;
    }

    private void registerNetworkChangeNotification() {
        if (this.network_reachability_observer == null) {
            this.network_reachability_observer = new Observer() { // from class: com.adobe.premiereclip.MainActivity.7
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    if (DCXModelController.getInstance().isSyncInitialized()) {
                        MainActivity.this.initDCXSyncStatusButton();
                    }
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this.network_reachability_observer);
    }

    private void unRegisterNetworkChangeNotification() {
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this.network_reachability_observer);
    }

    private void setupViewPager(ViewPager viewPager) {
        viewPager.setOffscreenPageLimit(1);
        this.viewPagerAdapter = new ViewPagerAdapter(getSupportFragmentManager());
        viewPager.setAdapter(this.viewPagerAdapter);
        setPageChangeListenerForViewPager(viewPager);
    }

    private void setPageChangeListenerForViewPager(ViewPager viewPager) {
        viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.adobe.premiereclip.MainActivity.8
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f2, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                if (i == 0) {
                    Log.d("MainActivity", "page selected 0 calling refresh message view");
                    MainActivity.this.updateSyncMessageProjectsListFragment();
                }
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initDCXSyncStatusButton() {
        this.dcxSyncStatusButton = new DCXSyncStatusButton(getSyncStatusButtonListener(), null);
        addOnClickListenerForSyncButton();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        if (!AdobeAuthManager.sharedAuthManager().isAuthenticated()) {
            this.mDrawerList.setAdapter(null);
            Navigator.goToSplashActivity(this);
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        Log.d("ActivityLifeCycle", "onStart of MainActivity called");
        super.onStart();
        registerNetworkChangeNotification();
        initDCXSyncStatusButton();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        Log.d("ActivityLifeCycle", "onStart of MainActivity called");
        super.onResume();
        if (!DCXModelController.getInstance().isInitialized()) {
            DCXModelController.getInstance().initalize(getApplicationContext(), CreativeCloudSource.getInstance().getAdobeId());
        }
        if (!DCXModelController.getInstance().isProjectSyncing() && DCXModelController.getInstance().isInitialized() && !DCXModelController.getInstance().isSyncInitialized()) {
            DCXModelController.getInstance().initializeSync();
        }
        updatePreferenceFragmentsView();
        this.mDrawerAdapter.notifyDataSetChanged();
        new UserProfileHandler.IAdobeGetUserProfileListener() { // from class: com.adobe.premiereclip.MainActivity.9
            @Override // com.adobe.creativeapps.settings.utils.UserProfileHandler.IAdobeGetUserProfileListener
            public void onGetUserProfileSuccess() {
                MainActivity.this.mDrawerAdapter.notifyDataSetChanged();
            }
        };
        Config.collectLifecycleData(this);
        Log.d("Preferences", "after successful authentication");
        try {
            storeAuth();
            if (this.fragmentManager.findFragmentByTag("FragmentTag3") != null) {
                PreferencesFragment preferencesFragment = (PreferencesFragment) this.fragmentManager.findFragmentByTag("FragmentTag3");
                if (preferencesFragment.mDropboxLinkTextView.getText().equals(getString(R.string.settings_link)) && ClipPreferences.getInstance(this).getString("ACCESS_KEY", null) != null) {
                    preferencesFragment.mDropboxLinkTextView.setText(getString(R.string.settings_unlink));
                    showLinkUnlinkDialog(true, GalleryActivity.SOURCE_DROPBOX);
                }
            }
        } catch (IllegalStateException e2) {
            Log.i(this.TAG, "Error authenticating", e2);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        Config.pauseCollectingLifecycleData();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        unRegisterNetworkChangeNotification();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public final void onBackPressed() {
        onInterruptCoachmarks();
        if (this.mDrawerLayout.isDrawerOpen(GravityCompat.START)) {
            this.mDrawerLayout.closeDrawer(GravityCompat.START);
            return;
        }
        if (this.mediaCaptureOptionsView.isOpen()) {
            this.mediaCaptureOptionsView.closeView();
            return;
        }
        if (this.mediaSelectorView.isOpen()) {
            this.mediaSelectorView.closeView();
            return;
        }
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
            this.floatingActionsMenu.a();
            return;
        }
        if (this.fragmentManager.getBackStackEntryCount() > 1) {
            this.fragmentManager.popBackStackImmediate();
            updatePreferenceFragmentsView();
        } else {
            if (this.fragmentManager.getBackStackEntryCount() == 1) {
                this.fragmentManager.popBackStackImmediate();
                updateToolbar(1);
                invalidateOptionsMenu();
                this.mDrawerAdapter.setActiveRowIndex(1);
                this.mDrawerAdapter.notifyDataSetChanged();
                initDCXSyncStatusButton();
                updateSyncMessageProjectsListFragment();
                return;
            }
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePreferenceFragmentsView() {
        Fragment fragmentFindFragmentById = this.fragmentManager.findFragmentById(R.id.main_view_container);
        if (fragmentFindFragmentById instanceof PreferencesFragment) {
            ((PreferencesFragment) fragmentFindFragmentById).onRestoreFragment();
            updateToolbar(3);
        } else if (fragmentFindFragmentById instanceof BasePreferenceFragment) {
            ((BasePreferenceFragment) fragmentFindFragmentById).onRestoreFragment();
        }
    }

    private void selectItem(int i) {
        this.mDrawerAdapter.setActiveRowIndex(i);
        this.mDrawerAdapter.notifyDataSetChanged();
        this.fragment = null;
        if (i < 5 && this.fragmentManager.getBackStackEntryCount() > 0) {
            if (this.fragmentManager.findFragmentByTag("FragmentTag" + i) == null) {
                this.fragmentManager.popBackStackImmediate((String) null, 1);
            } else {
                this.mDrawerLayout.closeDrawer(this.mDrawerList);
                return;
            }
        }
        this.mDrawerLayout.closeDrawer(this.mDrawerList);
        Log.d("DrawerActivity", "clicked on: " + i);
        Bundle bundle = new Bundle();
        switch (i) {
            case 0:
                bundle.putBoolean(getString(R.string.syncOnlyOnWifi), DCXModelController.getInstance().isSyncEnabled());
                this.fragmentClass = ProfileFragment.class;
                hideSyncButton();
                break;
            case 1:
                this.fragmentClass = null;
                findViewById(R.id.main_view_container).setVisibility(4);
                this.mPager.setCurrentItem(0);
                initDCXSyncStatusButton();
                updateSyncMessageProjectsListFragment();
                break;
            case 2:
                this.fragmentClass = AboutAppFragment.class;
                hideSyncButton();
                break;
            case 3:
                this.fragmentClass = PreferencesFragment.class;
                hideSyncButton();
                break;
            case 5:
                this.fragmentClass = null;
                Intent intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", "clipandroidfeedback@adobe.com", null));
                intent.putExtra("android.intent.extra.SUBJECT", getString(R.string.feedback_email_subject, new Object[]{Utilities.getAppVersionCode()}));
                intent.putExtra("android.intent.extra.TEXT", Utilities.constructDeviceDetails(this));
                startActivity(Intent.createChooser(intent, getString(R.string.send_feedback)));
                break;
            case 6:
                this.fragmentClass = BugPreferenceFragment.class;
                hideSyncButton();
                break;
            case 7:
                this.fragmentClass = BumperPreferenceFragment.class;
                hideSyncButton();
                break;
        }
        if (this.fragmentClass != null) {
            try {
                this.fragment = (Fragment) this.fragmentClass.newInstance();
                this.fragment.setArguments(bundle);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            findViewById(R.id.main_view_container).setVisibility(0);
            if (this.fragmentManager.findFragmentByTag("FragmentTag" + i) == null) {
                this.fragmentManager.beginTransaction().add(R.id.main_view_container, this.fragment, "FragmentTag" + i).addToBackStack(null).commitAllowingStateLoss();
            }
        }
        if (i != 4) {
            updateToolbar(i);
            invalidateOptionsMenu();
            this.mDrawerAdapter.notifyDataSetChanged();
        }
    }

    private void hideSyncButton() {
        this.syncCloudButton.clearAnimation();
        this.syncCloudButton.setVisibility(8);
        this.placeHolderButton.setVisibility(8);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return i == 82 || super.onKeyUp(i, keyEvent);
    }

    private void updateToolbar(int i) {
        TextView textView = (TextView) findViewById(R.id.lib_name);
        switch (i) {
            case 0:
                this.subview_fragmentView.setVisibility(0);
                this.tabLayout.setVisibility(8);
                this.mDrawerList.setVisibility(8);
                this.floatingActionsMenu.setVisibility(8);
                this.mPager.setVisibility(8);
                textView.setText(R.string.title_activity_profile);
                LollipopUtils.setElevation(findViewById(R.id.app_bar_layout), 0.0f);
                break;
            case 1:
                this.tabLayout.setVisibility(0);
                this.mDrawerList.setVisibility(0);
                this.floatingActionsMenu.setVisibility(0);
                this.mPager.setVisibility(0);
                textView.setText(R.string.title_activity_drawer);
                LollipopUtils.setElevation(findViewById(R.id.app_bar_layout), getResources().getDimension(R.dimen.app_bar_elevation));
                break;
            case 2:
                hideMainViewWidgets();
                textView.setText(R.string.title_activity_about_app);
                break;
            case 3:
                hideMainViewWidgets();
                textView.setText(R.string.title_activity_settings);
                break;
            case 5:
                this.subview_fragmentView.setVisibility(0);
                break;
            case 6:
                hideMainViewWidgets();
                textView.setText(R.string.title_fragment_overlay);
                break;
            case 7:
                hideMainViewWidgets();
                textView.setText(R.string.title_fragment_bumper);
                break;
        }
    }

    private void hideMainViewWidgets() {
        this.tabLayout.setVisibility(8);
        this.mDrawerList.setVisibility(8);
        this.floatingActionsMenu.setVisibility(8);
        this.mPager.setVisibility(8);
        this.subview_fragmentView.setVisibility(0);
        LollipopUtils.setElevation(findViewById(R.id.app_bar_layout), getResources().getDimension(R.dimen.app_bar_elevation));
    }

    @Override // com.adobe.creativeapps.settings.adapters.DrawerOptionAdapter.OnItemClickListener
    public void onClick(View view, int i) {
        selectItem(i);
    }

    @Override // com.adobe.premiereclip.base.BaseActivity
    public String getActivityName() {
        return getLocalClassName();
    }

    public void closeMenu(View view) {
        this.floatingActionsMenu.a();
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
        }
    }

    public void addMediaFromDevice(View view) {
        Metrics.sharedInstance().didTapMediaPickerOnMyDevice();
        if (MarshmallowUtils.getPermission(14, "android.permission.READ_EXTERNAL_STORAGE", this)) {
            Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
            intent.putExtra("type", GalleryActivity.SOURCE_MOMENTS);
            startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
            overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
        }
    }

    public void addMediaFromGooglePhotos(View view) {
        Metrics.sharedInstance().didTapMediaPickerRemoteSource(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS);
        if (MarshmallowUtils.getMultiplePermission(71, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_CONTACTS"}, this)) {
            Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
            intent.putExtra("type", GalleryActivity.SOURCE_GOOGLE_PHOTOS);
            startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
            overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
        }
    }

    public void addMediaFromGoogleDrive(View view) {
        Metrics.sharedInstance().didTapMediaPickerRemoteSource(Metrics.REMOTE_SOURCE_GOOGLE_DRIVE);
        if (MarshmallowUtils.getMultiplePermission(72, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_CONTACTS"}, this)) {
            Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
            intent.putExtra("type", GalleryActivity.SOURCE_GOOGLE_DRIVE);
            startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
            overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
        }
    }

    public void addMediaFromDropbox(View view) {
        Metrics.sharedInstance().didTapMediaPickerRemoteSource(Metrics.REMOTE_SOURCE_DROPBOX);
        if (MarshmallowUtils.getMultiplePermission(73, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_CONTACTS"}, this)) {
            Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
            intent.putExtra("type", GalleryActivity.SOURCE_DROPBOX);
            startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
            overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
        }
    }

    public void addMediaFromLightRoom(View view) {
        Metrics.sharedInstance().didAttemptImportOfCreativeCloudPhotoAssetInMediaPicker();
        CreativeCloudSource.getInstance().openCreativeCloudImagePicker(this, EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourcePhotos));
        this.floatingActionsMenu.a();
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
        }
    }

    public void addMediaFromCamera(View view) {
        Metrics.sharedInstance().didTapMediaPickerUseCamera();
        if (MarshmallowUtils.getMultiplePermission(11, new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE"}, this)) {
            CameraCaptureManager.getInstance().showMediaCaptureOptions(this, this.mediaCaptureOptionsView, AddMediaManager.CAMERA_CAPTURE_REQUEST);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
        }
    }

    public void addMediaFromCC(View view) {
        Metrics.sharedInstance().didAttemptImportOfCreativeCloudFileAssetInMediaPicker();
        CreativeCloudSource.getInstance().openCreativeCloudImagePicker(this, EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourceFiles));
        this.floatingActionsMenu.a();
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBrandingMediaFromGoogleDrive() {
        int i;
        Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
        intent.putExtra("type", GalleryActivity.SOURCE_GOOGLE_DRIVE);
        intent.putExtra(GalleryActivity.INTENT_ARG_SINGLE_SELECTION, true);
        if (this.fragmentClass == BugPreferenceFragment.class) {
            i = AddMediaManager.GALLERY_FOR_WATERMARK_REQUEST;
            intent.putExtra(GalleryActivity.INTENT_ARG_MEDIA_TYPE, 2);
        } else if (this.fragmentClass == BumperPreferenceFragment.class) {
            i = AddMediaManager.GALLERY_FOR_BUMPER_REQUEST;
            intent.putExtra(GalleryActivity.INTENT_ARG_MEDIA_TYPE, 3);
        } else {
            return;
        }
        startActivityForResult(intent, i);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBrandingMediaFromDropbox() {
        int i;
        Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
        intent.putExtra("type", GalleryActivity.SOURCE_DROPBOX);
        intent.putExtra(GalleryActivity.INTENT_ARG_SINGLE_SELECTION, true);
        if (this.fragmentClass == BugPreferenceFragment.class) {
            i = AddMediaManager.GALLERY_FOR_WATERMARK_REQUEST;
            intent.putExtra(GalleryActivity.INTENT_ARG_MEDIA_TYPE, 2);
        } else if (this.fragmentClass == BumperPreferenceFragment.class) {
            i = AddMediaManager.GALLERY_FOR_BUMPER_REQUEST;
            intent.putExtra(GalleryActivity.INTENT_ARG_MEDIA_TYPE, 3);
        } else {
            return;
        }
        startActivityForResult(intent, i);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLightRoomProject(Intent intent) {
        NewProjectData.getInstance().setMediaRequestType(9002);
        NewProjectData.getInstance().setMediaRequestResult(intent);
        ArrayList arrayList = (ArrayList) intent.getSerializableExtra("AdobeAssetCollection");
        if (!Utilities.canDownloadLRAssets(arrayList, this)) {
            Toast.makeText(this, getString(R.string.cc_download_reject_low_space), 1).show();
        } else if (Utilities.areAllLRAssetsLargerThanMaxFileSize(arrayList, this)) {
            Toast.makeText(this, getString(R.string.cc_download_reject), 1).show();
        } else {
            this.projectType = 1;
            createNewProject(intent.getStringExtra("ProjectName"));
        }
    }

    private void openEditor(Project project) {
        Intent intent;
        if (project.getEditMode() == 1) {
            intent = new Intent(this, (Class<?>) AutomaticActivity.class);
        } else {
            intent = new Intent(this, (Class<?>) EditorActivity.class);
        }
        intent.putExtra("project_key", project.projectKey);
        intent.putExtra("newProject", true);
        startActivity(intent);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    private void createNewProject(String str) {
        if (str.length() > 0) {
            Project projectCreateProject = ProjectManager.getInstance().createProject(str, this.projectType);
            ProjectManager.getInstance().addProject(projectCreateProject);
            projectCreateProject.setEditMode(this.projectType);
            Metrics.sharedInstance().setCurrentProjectInfoWithTitle(projectCreateProject.getProjectName(), projectCreateProject.projectKey, projectCreateProject.getProjectName(), false, projectCreateProject.getEditMode() != 1 ? 0 : 1, null, null);
            Metrics.sharedInstance().didCreateNewProject();
            openEditor(projectCreateProject);
            this.mPager.setCurrentItem(0);
        }
    }

    private void createNewProject() {
        Log.i("MainActivity", "CreateNewProject " + this.projectType);
        createNewProject(getCurrentTimeStamp());
    }

    private String getCurrentTimeStamp() {
        DateFormat dateInstance = DateFormat.getDateInstance(1);
        DateFormat timeInstance = DateFormat.getTimeInstance(3);
        Date time = Calendar.getInstance().getTime();
        return getString(R.string.project_name_format, new Object[]{dateInstance.format(time), timeInstance.format(time).toLowerCase()});
    }

    private void goToTourView() {
        Intent intent = new Intent(this, (Class<?>) TourViewActivity.class);
        intent.setFlags(268468224);
        startActivity(intent);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 11:
                if (iArr.length > 0 && iArr[0] == 0) {
                    CameraCaptureManager.getInstance().showMediaCaptureOptions(this, this.mediaCaptureOptionsView, AddMediaManager.CAMERA_CAPTURE_REQUEST);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.CAMERA")) {
                    new MessageDialog(this, getString(R.string.camera_access_alert), getString(R.string.camera_access_settings_path), true).show();
                }
                break;
            case 14:
                if (iArr.length > 0 && iArr[0] == 0) {
                    Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent.putExtra("type", GalleryActivity.SOURCE_MOMENTS);
                    startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
                    overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_EXTERNAL_STORAGE")) {
                    new MessageDialog(this, getString(R.string.external_storage_access_alert), getString(R.string.external_storage_access_settings_path), true).show();
                }
                break;
            case 15:
                if (iArr.length > 0 && iArr[0] == 0) {
                    selectItem(6);
                    break;
                }
                break;
            case 16:
                if (iArr.length > 0 && iArr[0] == 0) {
                    selectItem(7);
                    break;
                }
                break;
            case 71:
                int length = iArr.length;
                if ((length == 1 && iArr[0] == 0) || (length == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    Intent intent2 = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent2.putExtra("type", GalleryActivity.SOURCE_GOOGLE_PHOTOS);
                    startActivityForResult(intent2, AddMediaManager.DEVICE_MEDIA_REQUEST);
                    overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else {
                    showEnableStorageAndContactsPermissionDialog();
                }
                break;
            case 72:
                int length2 = iArr.length;
                if ((length2 == 1 && iArr[0] == 0) || (length2 == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    Intent intent3 = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent3.putExtra("type", GalleryActivity.SOURCE_GOOGLE_DRIVE);
                    startActivityForResult(intent3, AddMediaManager.DEVICE_MEDIA_REQUEST);
                    overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else {
                    showEnableStorageAndContactsPermissionDialog();
                }
                break;
            case 73:
                int length3 = iArr.length;
                if ((length3 == 1 && iArr[0] == 0) || (length3 == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    Intent intent4 = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent4.putExtra("type", GalleryActivity.SOURCE_DROPBOX);
                    startActivityForResult(intent4, AddMediaManager.DEVICE_MEDIA_REQUEST);
                    overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else {
                    showEnableStorageAndContactsPermissionDialog();
                }
                break;
            case 74:
                int length4 = iArr.length;
                if ((length4 == 1 && iArr[0] == 0) || (length4 == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    addBrandingMediaFromGoogleDrive();
                } else {
                    showEnableStorageAndContactsPermissionDialog();
                }
                break;
            case 75:
                int length5 = iArr.length;
                if ((length5 == 1 && iArr[0] == 0) || (length5 == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    addBrandingMediaFromDropbox();
                } else {
                    showEnableStorageAndContactsPermissionDialog();
                }
                break;
        }
    }

    private void showEnableStorageAndContactsPermissionDialog() {
        if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE") || !ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_CONTACTS")) {
            new MessageDialog(this, getString(R.string.need_access), getString(R.string.enable_storage_and_contacts_permission), true).show();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0091  */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onActivityResult(int r5, int r6, android.content.Intent r7) {
        /*
            Method dump skipped, instruction units count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.MainActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    private void startPreferenceAssetDownload(int i, int i2, Intent intent, boolean z) {
        this.ccDownloadSession.startDownload(getPreferenceProjectKey(), i, i2, intent, getCCPreferenceAssetDownloadCallback(z));
    }

    private String getPreferenceProjectKey() {
        return "preferenceproject";
    }

    private void prepareAndUpdatePreferenceData(Intent intent, boolean z) {
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra(GalleryActivity.INTENT_EXTRA_LIST);
        if (stringArrayListExtra != null && stringArrayListExtra.size() > 0) {
            updatePreferenceData(stringArrayListExtra.get(0), intent.getStringExtra(GalleryActivity.INTENT_RESULT_MEDIA_NAME), new Date(intent.getLongExtra(GalleryActivity.INTENT_RESULT_MEDIA_DATE, 0L)).toString(), z);
        }
    }

    private void selectProjectType(int i, Intent intent) {
        NewProjectData.getInstance().setMediaRequestType(i);
        NewProjectData.getInstance().setMediaRequestResult(intent);
        startActivityForResult(new Intent(this, (Class<?>) ProjectTypeActivity.class), PROJECT_TYPE_REQUEST);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    private void setPreviousTabID(int i) {
        this.previousTabID = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPreviousTabID() {
        return this.previousTabID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAnalyticsForSelectedTab(int i, int i2) {
        switch (i2) {
            case 1:
                if (i != i2) {
                    Metrics.sharedInstance().didScrollOrganizerToCommunityVideos();
                    Metrics.sharedInstance().didShowCommunityVideosView();
                    setPreviousTabID(i2);
                }
                break;
            case 2:
                if (i != i2) {
                    Metrics.sharedInstance().didScrollOrganizerToMyPublishedVideos();
                    Metrics.sharedInstance().didShowMyPublishedVideosView();
                    setPreviousTabID(i2);
                }
                break;
            default:
                if (i != i2) {
                    Metrics.sharedInstance().didScrollOrganizerToMyProjects();
                    Metrics.sharedInstance().didShowMyProjectsView();
                    setPreviousTabID(i2);
                }
                break;
        }
    }

    @Override // com.adobe.premiereclip.featuredVideos.CommunityVideosFragment.CommunityFeedTitleListener
    public void onResetCommunityFeedTitle(final String str) {
        this.pageTitles.set(1, str);
        runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.MainActivity.10
            @Override // java.lang.Runnable
            public void run() {
                TabLayout.Tab tabAt = MainActivity.this.tabLayout.getTabAt(1);
                if (tabAt != null) {
                    tabAt.setText(str);
                    d.a(MainActivity.this.tabLayout);
                }
            }
        });
    }

    /* JADX INFO: loaded from: classes2.dex */
    class ViewPagerAdapter extends FragmentPagerAdapter {
        public ViewPagerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // android.support.v4.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            switch (i) {
            }
            return ProjectsListFragment.newInstance();
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return 3;
        }

        @Override // android.support.v4.view.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return (CharSequence) MainActivity.this.pageTitles.get(i);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            showCoachmarks();
        }
    }

    public void onInterruptCoachmarks() {
        this.mCoachmark.onBackPressed();
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void showLinkUnlinkDialog(boolean z, String str) {
        String string;
        MessageDialog messageDialog;
        String string2;
        if (z) {
            if (str.equals("google")) {
                string2 = getString(R.string.successfully_linked_google_text);
            } else {
                string2 = getString(R.string.successfully_linked_dropbox_text);
            }
            messageDialog = new MessageDialog(this, getString(R.string.linked), string2, true);
        } else {
            if (str.equals("google")) {
                string = getString(R.string.successfully_unlinked_google_text);
            } else {
                string = getString(R.string.successfully_unlinked_dropbox_text);
            }
            messageDialog = new MessageDialog(this, getString(R.string.unlinked), string, true);
        }
        messageDialog.show();
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void setSyncEnabledOnlyOnWifi(boolean z) {
        DCXModelController.getInstance().setSyncEnabled(z);
        Metrics.sharedInstance().didToggleWifiOnly(!z);
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void handleLogout() {
        Metrics.sharedInstance().didAttemptSignOutWithAdobeID();
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void sendUsageReport(boolean z) {
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public int getExportResolution() {
        if (!Utilities.is1080pExportSupported(this)) {
            return -1;
        }
        if (ClipPreferences.getInstance(this).isDefaultExportResolutionSet()) {
            return ClipPreferences.getInstance(this).getExportResolution();
        }
        return 0;
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void setExportResolution(int i) {
        ClipPreferences.getInstance(this).setExportResolution(i);
        ClipPreferences.getInstance(this).setDefaultExportResolution(i != 0);
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public boolean getBumperState() {
        return DCXReader.getPreferenceBumperState(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public boolean isBumperPremiereClip() {
        return DCXReader.isPreferenceBumperPremiereClip(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void setBumperState(boolean z) {
        DCXWriter.setPreferenceBrandingState(DCXProjectKeys.kDCXKey_BumperNode_absolutePath, z, AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
        Metrics.sharedInstance().didToggleAddBumperSetting(Boolean.valueOf(z));
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public String getBumperPath() {
        return DCXReader.getPreferenceBumperPath(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public String getBumperName() {
        return DCXReader.getPreferenceBumperName();
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void defaultBumper() {
        String adobeID = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID();
        this.bumperAssetPath = DCXPreferencesManager.defaultBumperPath;
        FileOps.copyRawFileToStorage(this, R.raw.promo_roll, this.bumperAssetPath);
        DCXWriter.setBumperPreference(this.bumperAssetPath, DCXProjectKeys.kDCXKey_Sequence_Bumper_Video_Default, DCXUtils.getLastModifiedDateFromFilePath(this.bumperAssetPath), true, adobeID);
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void setCoachMarkEnabled(boolean z) {
        if (!z) {
            ClipPreferences.getInstance(this).resetCoachmarks();
            showCoachmarks();
            Metrics.sharedInstance().didTapResetTooltips();
        }
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void didTapSettingsLink(String str) {
        Metrics.sharedInstance().didTapSettingsLink(str);
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void changeCloud() {
        DCXModelController.getInstance().changeCloud();
        String adobeId = CreativeCloudSource.getInstance().getAdobeId();
        ClipPreferences clipPreferences = ClipPreferences.getInstance(getApplicationContext());
        AdobeCloud defaultCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        if (!clipPreferences.contains("hasLoggedInOnce_" + adobeId + defaultCloud.getGUID())) {
            clipPreferences.setPreference("hasLoggedInOnce_" + adobeId + defaultCloud.getGUID(), true);
        }
        DCXModelController.getInstance().initializeSync();
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void showLogoutDialog() {
        ConfirmDialog confirmDialog = new ConfirmDialog(this, getString(R.string.sign_out_dialog), getString(R.string.sign_out_message), true);
        confirmDialog.setAcceptButton(getString(R.string.sign_out_accept), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.MainActivity.11
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                Fragment fragmentFindFragmentByTag = MainActivity.this.fragmentManager.findFragmentByTag("FragmentTag0");
                if (fragmentFindFragmentByTag != null) {
                    ((ProfileFragment) fragmentFindFragmentByTag).onLogoutAccepted();
                }
            }
        });
        confirmDialog.setRejectButton(getString(R.string.decline), null);
        confirmDialog.show();
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public boolean getBugState() {
        return DCXReader.getPreferenceOverlayState(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void setBugState(boolean z) {
        DCXWriter.setPreferenceBrandingState(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath, z, AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
        Metrics.sharedInstance().didToggleAddWatermarkSetting(Boolean.valueOf(z));
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public String getBugPath() {
        this.bugAssetPath = DCXReader.getPreferenceOverlayPath(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
        return this.bugAssetPath;
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public String getBugName() {
        return DCXReader.getPreferenceOverlayName();
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void resetBrandingPreferences() {
        ConfirmDialog confirmDialog = new ConfirmDialog(this, getString(R.string.reset_branding_title), getString(R.string.reset_branding_message), true);
        confirmDialog.setAcceptButton(getString(R.string.delete_positive), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.MainActivity.12
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                DCXPreferencesManager.getInstance().resetPreferences();
                MainActivity.this.updatePreferenceFragmentsView();
            }
        });
        confirmDialog.setRejectButton(getString(R.string.delete_negative), null);
        confirmDialog.show();
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void openBugPreferenceFragment() {
        if (MarshmallowUtils.getPermission(15, "android.permission.READ_EXTERNAL_STORAGE", this)) {
            selectItem(6);
        }
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void openBumperPreferenceFragment() {
        if (MarshmallowUtils.getPermission(16, "android.permission.READ_EXTERNAL_STORAGE", this)) {
            selectItem(7);
        }
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public Bitmap generateBumperPreview(String str, int i, int i2) {
        CustomFrameHelper customFrameHelper = CustomFrameHelper.getInstance();
        customFrameHelper.setParams(str, i, i2);
        customFrameHelper.setOnCompletionListener(new CustomFrameHelper.OnCompletionListener() { // from class: com.adobe.premiereclip.MainActivity.13
            @Override // com.adobe.premiereclip.util.CustomFrameHelper.OnCompletionListener
            public void onComplete(Bitmap bitmap) {
                MainActivity.this.postBumperPreview(bitmap);
            }
        });
        customFrameHelper.executeOnExecutor(Utilities.THREAD_POOL_EXECUTOR, new Void[0]);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postBumperPreview(Bitmap bitmap) {
        Fragment fragmentFindFragmentById = this.fragmentManager.findFragmentById(R.id.main_view_container);
        if (fragmentFindFragmentById instanceof BumperPreferenceFragment) {
            ((BumperPreferenceFragment) fragmentFindFragmentById).postBumperPreview(bitmap);
        }
    }

    @Override // com.adobe.creativeapps.settings.activity.ICCAppSettingsPreference
    public void onRequestMedia() {
        this.mediaSelectorView.openView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePreferenceData(String str, String str2, String str3, boolean z) {
        String adobeID = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID();
        if (z) {
            DCXWriter.setBumperPreference(str, str2, str3, false, adobeID);
            this.bumperAssetPath = str;
        } else {
            DCXWriter.setOverlayPreference(str, str2, str3, adobeID);
            this.bugAssetPath = str;
        }
    }

    private CCDownloadSession.Listener getCCPreferenceAssetDownloadCallback(final boolean z) {
        return new CCDownloadSession.Listener() { // from class: com.adobe.premiereclip.MainActivity.14
            @Override // com.adobe.premiereclip.downloadmanager.CCDownloadSession.Listener
            public void onDownloadStart() {
            }

            @Override // com.adobe.premiereclip.downloadmanager.CCDownloadSession.Listener
            public void onDownloadProgress(double d2) {
            }

            @Override // com.adobe.premiereclip.downloadmanager.CCDownloadSession.Listener
            public void onDownloadComplete(ArrayList<MediaInfo> arrayList, int i, int i2) {
                int size = arrayList.size();
                if (i2 > 0) {
                    Toast.makeText(MainActivity.this, MainActivity.this.getResources().getString(R.string.cc_download_reject), 1).show();
                }
                int i3 = (i - i2) - size;
                if (i3 > 0) {
                    new MessageDialog(MainActivity.this, MainActivity.this.getResources().getString(R.string.cc_downloaded_header), MainActivity.this.getString(R.string.cc_downloaded_text, new Object[]{Integer.valueOf(size), Integer.valueOf(i3)}), false).show();
                }
                if (size > 0) {
                    String assetUrl = arrayList.get(0).getAssetUrl();
                    MainActivity.this.updatePreferenceData(arrayList.get(0).getLocalPath(), assetUrl.substring(assetUrl.lastIndexOf(File.separator) + 1), arrayList.get(0).getAssetDate(), z);
                    MainActivity.this.updatePreferenceFragmentsView();
                }
            }

            @Override // com.adobe.premiereclip.downloadmanager.CCDownloadSession.Listener
            public void onDownloadCancel(int i) {
            }
        };
    }

    private void setMediaSelectorCallbacks() {
        this.mediaSelectorView.setListener(new MediaSelectorView.OptionSelectionListener() { // from class: com.adobe.premiereclip.MainActivity.15
            @Override // com.adobe.premiereclip.mediabrowser.MediaSelectorView.OptionSelectionListener
            public void optionSelected(int i) {
                switch (i) {
                    case 101:
                        Metrics.sharedInstance().didTapMediaPickerCreativeCloud();
                        if (MainActivity.this.fragmentClass != BugPreferenceFragment.class) {
                            if (MainActivity.this.fragmentClass == BumperPreferenceFragment.class) {
                                CreativeCloudSource.getInstance().openCreativeCloudPickerForBumper(MainActivity.this);
                            }
                        } else {
                            CreativeCloudSource.getInstance().openCreativeCloudImagePickerForBug(MainActivity.this);
                        }
                        break;
                    case 102:
                        Metrics.sharedInstance().didTapMediaPickerRemoteSource(Metrics.REMOTE_SOURCE_GOOGLE_DRIVE);
                        if (MarshmallowUtils.getMultiplePermission(74, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_CONTACTS"}, MainActivity.this)) {
                            MainActivity.this.addBrandingMediaFromGoogleDrive();
                        }
                        break;
                    case 103:
                        Metrics.sharedInstance().didTapMediaPickerRemoteSource(Metrics.REMOTE_SOURCE_DROPBOX);
                        if (MarshmallowUtils.getMultiplePermission(75, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_CONTACTS"}, MainActivity.this)) {
                            MainActivity.this.addBrandingMediaFromDropbox();
                        }
                        break;
                }
                MainActivity.this.mediaSelectorView.closeView();
            }
        });
    }

    public void closeMediaOptions(View view) {
        this.mediaSelectorView.closeView();
    }

    private void setCoachmarkListener() {
        this.mCoachmark.setListener(new CoachMarks.Listener() { // from class: com.adobe.premiereclip.MainActivity.16
            @Override // com.adobe.premiereclip.coachmarks.CoachMarks.Listener
            public boolean isViewAvailable() {
                return (MainActivity.this.isDrawerOpen || MainActivity.this.floatingActionsMenu.d() || MainActivity.this.mediaCaptureOptionsView.isOpen()) ? false : true;
            }
        });
    }

    private void showCoachmarks() {
        ClipPreferences clipPreferences = ClipPreferences.getInstance(this);
        if (clipPreferences.getPreference(ClipPreferences.ORGANIZER_PLUS_BUTTON, true)) {
            CoachMarks.CoachmarkParam coachmarkParam = new CoachMarks.CoachmarkParam(getString(R.string.coachmark_organizer_plus_title), getString(R.string.coachmark_organizer_plus_message), ClipPreferences.ORGANIZER_PLUS_BUTTON, (LinearLayout) findViewById(R.id.OpenCamera), false, null, null, null, true);
            coachmarkParam.delay = 1000L;
            this.mCoachmark.showCoachMarkWithOk(coachmarkParam);
            return;
        }
        if (clipPreferences.getPreference(ClipPreferences.ORGANIZER_BROWSE, true)) {
            this.mCoachmark.showCoachMarkWithOk(new CoachMarks.CoachmarkParam(getString(R.string.coachmark_organizer_browse_title), getString(R.string.coachmark_organizer_browse_message), ClipPreferences.ORGANIZER_BROWSE, this.tabLayout, true, null, null, null, true));
        }
    }

    private void addOnClickListenerForSyncButton() {
        this.syncCloudButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.MainActivity.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.dcxSyncStatusButton.handleMediaSyncIndicatorButtonTapped();
            }
        });
    }

    private DCXSyncStatusButton.Listener getSyncStatusButtonListener() {
        return new DCXSyncStatusButton.Listener() { // from class: com.adobe.premiereclip.MainActivity.18
            @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
            public void showConnectionFailureIcon() {
                MainActivity mainActivity = MainActivity.this;
                if (mainActivity != null) {
                    mainActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.MainActivity.18.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MainActivity.this.placeHolderButton.setVisibility(0);
                            MainActivity.this.syncCloudButton.setVisibility(0);
                            MainActivity.this.syncCloudButton.clearAnimation();
                            MainActivity.this.syncCloudButton.setImageResource(R.drawable.gra_errorsign_2x);
                        }
                    });
                }
            }

            @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
            public void startAnimation() {
                MainActivity mainActivity = MainActivity.this;
                if (mainActivity != null) {
                    mainActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.MainActivity.18.2
                        @Override // java.lang.Runnable
                        public void run() {
                            MainActivity.this.placeHolderButton.setVisibility(0);
                            MainActivity.this.syncCloudButton.setImageResource(R.drawable.btn_sync_white);
                            MainActivity.this.syncCloudButton.setVisibility(0);
                            MainActivity.this.syncCloudButton.startAnimation(AnimationUtils.loadAnimation(MainActivity.this, R.anim.rotate_indefinitely));
                        }
                    });
                }
            }

            @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
            public void stopAnimation() {
                MainActivity mainActivity = MainActivity.this;
                if (mainActivity != null) {
                    mainActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.MainActivity.18.3
                        @Override // java.lang.Runnable
                        public void run() {
                            MainActivity.this.syncCloudButton.clearAnimation();
                            MainActivity.this.syncCloudButton.setVisibility(8);
                            MainActivity.this.placeHolderButton.setVisibility(8);
                        }
                    });
                }
            }

            @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
            public void showConnectionFailureDialog(boolean z) {
                MainActivity mainActivity = MainActivity.this;
                if (mainActivity != null) {
                    String string = MainActivity.this.getString(R.string.dcx_no_wifi_message);
                    if (!z) {
                        string = MainActivity.this.getString(R.string.dcx_no_internet_message);
                    }
                    new MessageDialog(mainActivity, MainActivity.this.getString(R.string.dcx_no_internet_title), string, true).show();
                }
            }

            @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
            public void openSyncTableView() {
                MainActivity.this.startActivity(new Intent(MainActivity.this, (Class<?>) DCXSyncStatusActivity.class));
            }

            @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
            public void retryPendingPPro() {
            }

            @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
            public void showProjectSyncingText() {
                if (MainActivity.this != null) {
                    Fragment fragmentFindFragmentByTag = MainActivity.this.getSupportFragmentManager().findFragmentByTag("android:switcher:2131887384:" + MainActivity.this.mPager.getCurrentItem());
                    if (fragmentFindFragmentByTag != null && (fragmentFindFragmentByTag instanceof CommunityVideosFragment)) {
                        Log.d("MainActivity", "currently in communityfragment");
                    }
                    ArrayList<Project> projectsList = ProjectManager.getInstance().getProjectsList();
                    boolean z = projectsList.size() == 1 && projectsList.get(0).projectKey.equals("preferences");
                    if (fragmentFindFragmentByTag != null && (fragmentFindFragmentByTag instanceof ProjectsListFragment)) {
                        if (ProjectManager.getInstance().getProjectsList().isEmpty() || z) {
                            Log.d("MainActivity", "currently in projectslistfragment");
                            ((ProjectsListFragment) fragmentFindFragmentByTag).showProjectDownloadingText();
                        }
                    }
                }
            }

            @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
            public void removeProjectSyncingText() {
                Fragment fragmentFindFragmentByTag;
                if (MainActivity.this != null && (fragmentFindFragmentByTag = MainActivity.this.getSupportFragmentManager().findFragmentByTag("android:switcher:2131887384:" + MainActivity.this.mPager.getCurrentItem())) != null && (fragmentFindFragmentByTag instanceof ProjectsListFragment)) {
                    ArrayList<Project> projectsList = ProjectManager.getInstance().getProjectsList();
                    boolean z = projectsList.size() == 1 && projectsList.get(0).projectKey.equals("preferences");
                    if (ProjectManager.getInstance().getProjectsList().isEmpty() || z) {
                        ((ProjectsListFragment) fragmentFindFragmentByTag).showNoProjectCreatedText();
                    } else {
                        ((ProjectsListFragment) fragmentFindFragmentByTag).removeProjectViewMessageText();
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSyncMessageProjectsListFragment() {
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag("android:switcher:2131887384:0");
        if (fragmentFindFragmentByTag != null && (fragmentFindFragmentByTag instanceof ProjectsListFragment)) {
            ((ProjectsListFragment) fragmentFindFragmentByTag).handleProjectViewMessageText();
        }
    }

    /* JADX INFO: renamed from: com.adobe.premiereclip.MainActivity$19, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class AnonymousClass19 implements IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>> {
        int totalAssetsCount;
        final /* synthetic */ String val$collectionId;
        final /* synthetic */ Intent val$intent;
        IAdobeGenericCompletionCallback<Integer> getAssetCountSuccess = new IAdobeGenericCompletionCallback<Integer>() { // from class: com.adobe.premiereclip.MainActivity.19.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Integer num) {
                AnonymousClass19.this.totalAssetsCount = num.intValue();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> getAssetCountError = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.premiereclip.MainActivity.19.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                Log.e(MainActivity.this.TAG, "getAssetCountError");
                MainActivity.this.creatingLRProjectMessageDialog.dismiss();
                MainActivity.this.showErrorDialogForLRImport();
            }
        };
        IAdobePhotoAssetsListRequestCompletionHandler listAssetsOnPageSuccess = new IAdobePhotoAssetsListRequestCompletionHandler() { // from class: com.adobe.premiereclip.MainActivity.19.3
            @Override // com.adobe.creativesdk.foundation.storage.IAdobePhotoAssetsListRequestCompletionHandler
            public void onCompletion(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoPage adobePhotoPage, AdobePhotoPage adobePhotoPage2) {
                AnonymousClass19.this.val$intent.putExtra("AdobeAssetCollection", arrayList);
                if (AnonymousClass19.this.totalAssetsCount > 100) {
                    AnonymousClass19.this.val$intent.putExtra("AssetCountMoreThanMax", true);
                } else {
                    AnonymousClass19.this.val$intent.putExtra("AssetCountMoreThanMax", false);
                }
                MainActivity.this.creatingLRProjectMessageDialog.dismiss();
                if (!MainActivity.this.cancelLRProject) {
                    MainActivity.this.openLightRoomProject(AnonymousClass19.this.val$intent);
                }
            }
        };
        final IAdobeGenericErrorCallback<AdobeCSDKException> listAssetsOnPageError = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.premiereclip.MainActivity.19.4
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                Log.e(MainActivity.this.TAG, "listAssetsOnPageError");
                MainActivity.this.creatingLRProjectMessageDialog.dismiss();
                MainActivity.this.showErrorDialogForLRImport();
            }
        };

        AnonymousClass19(Intent intent, String str) {
            this.val$intent = intent;
            this.val$collectionId = str;
        }

        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
        public void onCompletion(ArrayList<AdobePhotoCollection> arrayList) {
            boolean z;
            Iterator<AdobePhotoCollection> it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                AdobePhotoCollection next = it.next();
                if (next.getGUID().equals(this.val$collectionId)) {
                    next.assetCount(this.getAssetCountSuccess, this.getAssetCountError);
                    next.listAssetsOnPage(null, AdobePhotoCollection.AdobePhotoCollectionSort.ADOBE_PHOTO_COLLECTION_SORT_BY_DATE, 100, AdobePhotoCollection.AdobePhotoCollectionFlag.ADOBE_PHOTO_COLLECTION_FLAG_ALL, this.listAssetsOnPageSuccess, this.listAssetsOnPageError);
                    z = true;
                    break;
                }
            }
            if (!z) {
                MainActivity.this.creatingLRProjectMessageDialog.dismiss();
                new MessageDialog(MainActivity.this, MainActivity.this.getString(R.string.lr_alert_title), MainActivity.this.getString(R.string.lr_collection_not_found_message), true).show();
            }
        }
    }

    private void getCCAssetsList(String str, String str2, Intent intent) {
        final AnonymousClass19 anonymousClass19 = new AnonymousClass19(intent, str);
        final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.premiereclip.MainActivity.20
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                Log.e(MainActivity.this.TAG, "listCollectionsAfterNameError");
                MainActivity.this.creatingLRProjectMessageDialog.dismiss();
                MainActivity.this.showErrorDialogForLRImport();
            }
        };
        AdobePhotoCatalog.listCatalogOfType(AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCatalog>>() { // from class: com.adobe.premiereclip.MainActivity.21
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoCatalog> arrayList) {
                Iterator<AdobePhotoCatalog> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().listCollectionsAfterName(null, 100, false, anonymousClass19, iAdobeGenericErrorCallback);
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.premiereclip.MainActivity.22
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                Log.e(MainActivity.this.TAG, "listCatalogOfTypeError");
                MainActivity.this.creatingLRProjectMessageDialog.dismiss();
                MainActivity.this.showErrorDialogForLRImport();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showErrorDialogForLRImport() {
        final MessageDialog messageDialog = new MessageDialog(this, getString(R.string.youtube_generic_error), getString(R.string.dcx_no_internet_title), true);
        messageDialog.setAcceptButtonListener(new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.MainActivity.23
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                messageDialog.dismiss();
            }
        });
        messageDialog.show();
    }

    private void switchToTourView() {
        Intent intent = new Intent(this, (Class<?>) TourViewActivity.class);
        intent.setFlags(67108864);
        startActivity(intent);
    }
}
