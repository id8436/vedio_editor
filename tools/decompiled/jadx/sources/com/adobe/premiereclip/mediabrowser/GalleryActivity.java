package com.adobe.premiereclip.mediabrowser;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.coachmarks.ScreenUtil;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.adobe.premiereclip.mediabrowser.SourceListAdapter;
import com.adobe.premiereclip.mediabrowser.source.DeviceMediaSource;
import com.adobe.premiereclip.mediabrowser.source.DropboxSource;
import com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource;
import com.adobe.premiereclip.mediabrowser.source.GallerySource;
import com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource;
import com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource;
import com.adobe.premiereclip.mediabrowser.source.GroupedMediaSource;
import com.adobe.premiereclip.mediabrowser.source.PhotosDownloadDialog;
import com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.util.ThumbnailHelper;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.utility.FontUtils;
import com.alertdialogpro.b;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.android.Auth;
import com.dropbox.core.http.OkHttp3Requestor;
import com.dropbox.core.v2.DbxClientV2;
import com.h.a.a;
import com.h.a.d;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;
import org.apache.commons.io.FileUtils;
import org.solovyev.android.views.llm.LinearLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public class GalleryActivity extends TopOfEditorActivity implements IMediaItemSelectionListener {
    private static final String APP_KEY = "nd82cy66iibva6b";
    private static final String APP_SECRET = "6fq9hvl1cu0g86a";
    private static final int COLUMN_COUNT = 4;
    public static final int GROUPING_ERROR = 55;
    public static final String INTENT_ARG_MEDIA_TYPE = "media_type";
    public static final String INTENT_ARG_SINGLE_SELECTION = "single_selection";
    public static final String INTENT_ARG_SOURCE = "source";
    public static final String INTENT_ARG_TYPE = "type";
    public static final String INTENT_EXTRA_LIST = "Gallery_selected_paths";
    public static final String INTENT_RESULT_MEDIA_DATE = "media_date";
    public static final String INTENT_RESULT_MEDIA_NAME = "media_name";
    public static final int IO_EXCEPTION = 44;
    public static final long MAX_SIZE_LIMIT_IN_BYTES = 5368709120L;
    public static final int MEDIA_ADD_LIMIT = 100;
    public static final int NO_ALBUMS = 22;
    public static final int NO_INTERNET_CONNECTION = 33;
    private static final long ONE_GB = 1073741824;
    private static final int REQUEST_ACCOUNT_PICKER = 2;
    public static final int REQUEST_AUTHORIZATION = 1;
    public static final String SOURCE_DROPBOX = "dropbox";
    public static final String SOURCE_GOOGLE_DRIVE = "google_drive";
    public static final String SOURCE_GOOGLE_PHOTOS = "google_photos";
    private static final String TAG = "GALLERY";
    private static DbxClientV2 sDbxClient;
    private boolean cancelAssetDownload;
    private boolean cancelThumbnailDownload;
    private int downloadCount;
    private ArrayList<Integer> enabledMediaTypes;
    private int imageSize;
    private boolean isConnected;
    private GalleryAdapter mAdapter;
    private ImageView mBackButton;
    private Button mDoneButton;
    private String mDoneString;
    private FileSystemMediaSource mFileSystemSource;
    private GalleryAdapterForFileSystem mGalleryAdapterForFileSystem;
    private GallerySource mGallerySource;
    private b mProgressDialog;
    private RecyclerView mRecyclerView;
    private ArrayList<MediaModel> mSelectedMediaList;
    private SourceListAdapter mSourceListAdapter;
    private RecyclerView mSourceListView;
    private ArrayList<String> mediaPathList;
    private Observer network_reachability_observer;
    private PhotosDownloadDialog photosDownloadDialog;
    private PopupWindow popupWindow;
    public Button signInButton;
    private boolean singleSelection;
    private String sourceName;
    private boolean switchingAccount;
    public TextView textView;
    public RelativeLayout textViewLayout;
    private a tfCollection;
    private int timelineThumbSize;
    private TextView titleTextView;
    private Toolbar toolbar;
    public static final String SOURCE_DEVICE = "device";
    public static final String SOURCE_MOMENTS = "moments";
    private static final String[] sourceNames = {SOURCE_DEVICE, SOURCE_MOMENTS};

    static /* synthetic */ int access$3008(GalleryActivity galleryActivity) {
        int i = galleryActivity.downloadCount;
        galleryActivity.downloadCount = i + 1;
        return i;
    }

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.timelineThumbSize = (point.x - (((int) getResources().getDimension(R.dimen.clip_thumb_margin)) * 5)) / 4;
        this.imageSize = (point.x - (((int) getResources().getDimension(R.dimen.clip_thumb_margin_file_system)) * 5)) / 4;
        setContentView(R.layout.activity_gallery);
        this.mSelectedMediaList = new ArrayList<>();
        this.mDoneButton = (Button) findViewById(R.id.gallery_done);
        this.mBackButton = (ImageView) findViewById(R.id.gallery_back_button);
        this.titleTextView = (TextView) findViewById(R.id.gallery_title);
        this.mRecyclerView = (RecyclerView) findViewById(R.id.gallery_list);
        this.mDoneString = getString(R.string.gallery_done);
        this.mRecyclerView.setHasFixedSize(true);
        this.textViewLayout = (RelativeLayout) findViewById(R.id.textViewLayout);
        this.signInButton = (Button) findViewById(R.id.signInButton);
        this.textView = (TextView) findViewById(R.id.textView);
        this.textView.setText(getString(R.string.request_sign_in));
        this.textViewLayout.setVisibility(8);
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(this, 4));
        FontUtils.getInstance().initializeTypefaceCollections(this);
        this.tfCollection = FontUtils.getInstance().getAdobeCleanLightTypefaceCollection();
        d.a(this.mDoneButton, this.tfCollection);
        d.a(this.titleTextView, this.tfCollection);
        d.a(this.textView, this.tfCollection);
        d.a(this.signInButton, this.tfCollection);
        this.mDoneButton.setEnabled(false);
        this.mDoneButton.setVisibility(8);
        this.mRecyclerView.setPadding(0, 0, 0, 0);
        this.cancelAssetDownload = false;
        this.cancelThumbnailDownload = false;
        this.switchingAccount = false;
        this.toolbar = (Toolbar) findViewById(R.id.top_bar);
        this.toolbar.inflateMenu(R.menu.menu_main);
        this.toolbar.setOnMenuItemClickListener(new Toolbar.OnMenuItemClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.1
            @Override // android.support.v7.widget.Toolbar.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                return GalleryActivity.this.handleMenuOperations(menuItem);
            }
        });
        this.mSourceListAdapter = new SourceListAdapter(this, sourceNames, new SourceListAdapter.SourceChangeListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.2
            @Override // com.adobe.premiereclip.mediabrowser.SourceListAdapter.SourceChangeListener
            public void onSourceChanged(String str) {
                GalleryActivity.this.popupWindow.dismiss();
                if (GalleryActivity.this.mGallerySource != null) {
                    GalleryActivity.this.mGallerySource.cancelDataFetch();
                }
                if (GalleryActivity.this.mAdapter != null) {
                    GalleryActivity.this.mAdapter.clearDataset();
                    GalleryActivity.this.mAdapter.notifyDataSetChanged();
                }
                if (str.equals(GalleryActivity.SOURCE_DEVICE)) {
                    Metrics.sharedInstance().didToggleMediaPickerType("Gallery");
                } else if (str.equals(GalleryActivity.SOURCE_MOMENTS)) {
                    Metrics.sharedInstance().didToggleMediaPickerType("Moments");
                }
                ClipPreferences.getInstance(GalleryActivity.this).setDeviceSource(str);
                GalleryActivity.this.getSource(str);
            }
        });
        this.popupWindow = new PopupWindow(this);
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(R.layout.lib_popup, (ViewGroup) null);
        this.popupWindow.setContentView(viewGroup);
        this.popupWindow.setBackgroundDrawable(getResources().getDrawable(R.drawable.abc_popup_background_mtrl_mult));
        this.mSourceListView = (RecyclerView) viewGroup.findViewById(R.id.lib_popup_listView);
        this.mSourceListView.setAdapter(this.mSourceListAdapter);
        this.mSourceListView.setLayoutManager(new LinearLayoutManager(this, 1, false) { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.3
            @Override // org.solovyev.android.views.llm.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
            public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
                int mode = View.MeasureSpec.getMode(i2);
                int size = View.MeasureSpec.getSize(i2);
                int heightInPx = (int) (ScreenUtil.getHeightInPx(1) / 2.0f);
                Log.d("LooksPopup", "got height : " + size + "   max height : " + heightInPx);
                if (size > heightInPx) {
                    super.onMeasure(recycler, state, i, View.MeasureSpec.makeMeasureSpec(heightInPx, mode));
                } else {
                    super.onMeasure(recycler, state, i, i2);
                }
            }
        });
        final float widthInPx = ScreenUtil.getWidthInPx(1);
        final int i = (int) ((2.0f * widthInPx) / 3.0f);
        this.popupWindow.setWidth(i);
        this.popupWindow.setHeight(-2);
        this.popupWindow.setFocusable(true);
        findViewById(R.id.gallery_name_toolbar).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GalleryActivity.this.mSourceListAdapter.notifyDataSetChanged();
                GalleryActivity.this.popupWindow.showAsDropDown(GalleryActivity.this.toolbar, ((int) ((widthInPx - i) / 2.0f)) - 20, -GalleryActivity.this.toolbar.getHeight());
                GalleryActivity.this.mSourceListAdapter.notifyDataSetChanged();
            }
        });
        Intent intent = getIntent();
        this.sourceName = intent.getStringExtra("type");
        getSource(this.sourceName);
        this.signInButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GalleryActivity.this.getSource(GalleryActivity.this.sourceName);
            }
        });
        Integer numValueOf = Integer.valueOf(intent.getIntExtra(INTENT_ARG_MEDIA_TYPE, 0));
        if (numValueOf.intValue() != 0) {
            this.enabledMediaTypes = new ArrayList<>();
            this.enabledMediaTypes.add(numValueOf);
        }
        this.singleSelection = intent.getBooleanExtra(INTENT_ARG_SINGLE_SELECTION, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMenuOperations(MenuItem menuItem) {
        if (!isNetworkAvailable()) {
            Toast.makeText(this, getString(R.string.toast_no_internet), 0).show();
        } else if (menuItem.getItemId() == R.id.action_switch_account) {
            if (getIntent().getStringExtra("type").equals(SOURCE_DROPBOX)) {
                this.switchingAccount = true;
                sDbxClient = null;
                Log.d(TAG, "switching account, removing oauth token");
                ClipPreferences.getInstance(this).removePreference("ACCESS_KEY");
                ClipPreferences.getInstance(this).removePreference("ACCESS_SECRET");
                if (this.mGalleryAdapterForFileSystem != null) {
                    this.mGalleryAdapterForFileSystem.clearStack();
                    this.mGalleryAdapterForFileSystem.clearDataset();
                }
                login();
                return true;
            }
            Utils.pickUserAccount(this, "com.google", ClipPreferences.getInstance(this).getString("googleAccount", null));
            return true;
        }
        return false;
    }

    public void setTitle(String str) {
        this.titleTextView.setText(str);
    }

    void showView() {
        if (isNetworkAvailable()) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.setVisibility(0);
                return;
            }
            return;
        }
        setTextView(getString(R.string.no_internet_connection));
    }

    void showDoneButton() {
        if (this.mSelectedMediaList.size() > 0) {
            this.mDoneButton.setVisibility(0);
            this.mRecyclerView.setPadding(0, 0, 0, (int) ((getResources().getDisplayMetrics().density * 50.0f) + 0.5f));
            this.mDoneButton.setText(this.mDoneString + " (" + this.mSelectedMediaList.size() + ")");
            this.mDoneButton.setEnabled(true);
        }
    }

    public void setTextView(String str) {
        if (this.mRecyclerView != null) {
            this.mRecyclerView.setVisibility(8);
        }
        this.mDoneButton.setVisibility(8);
        this.textViewLayout.setVisibility(0);
        this.textView.setText(str);
        if (str.equals(getString(R.string.request_sign_in))) {
            this.signInButton.setVisibility(0);
            this.signInButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = GalleryActivity.this.getIntent();
                    GalleryActivity.this.sourceName = intent.getStringExtra("type");
                    GalleryActivity.this.getSource(GalleryActivity.this.sourceName);
                }
            });
        } else {
            this.signInButton.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNetworkAvailable() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private void registerNetworkChangeNotification() {
        if (this.network_reachability_observer == null) {
            this.network_reachability_observer = new Observer() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.7
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    if (!GalleryActivity.this.isNetworkAvailable() || GalleryActivity.this.isConnected) {
                        if (!GalleryActivity.this.isNetworkAvailable() && GalleryActivity.this.isConnected) {
                            Log.d(GalleryActivity.TAG, "Updated network; is not connected");
                            GalleryActivity.this.setTextView(GalleryActivity.this.getString(R.string.no_internet_connection));
                            GalleryActivity.this.isConnected = false;
                            if (GalleryActivity.this.photosDownloadDialog != null && GalleryActivity.this.photosDownloadDialog.isShowing()) {
                                GalleryActivity.this.photosDownloadDialog.dismiss();
                                GalleryActivity.this.cancelAssetDownload = true;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    Log.d(GalleryActivity.TAG, "Updated network; is connected");
                    GalleryActivity.this.isConnected = true;
                    if (GalleryActivity.this.mRecyclerView != null) {
                        GalleryActivity.this.mRecyclerView.setVisibility(0);
                    }
                    GalleryActivity.this.textViewLayout.setVisibility(8);
                    if (GalleryActivity.this.mAdapter != null || GalleryActivity.this.mGalleryAdapterForFileSystem != null) {
                        if (GalleryActivity.this.mAdapter != null) {
                            if (GalleryActivity.this.mAdapter.isDatasetEmpty()) {
                                GalleryActivity.this.textView.setText(GalleryActivity.this.getString(R.string.no_data));
                                GalleryActivity.this.textViewLayout.setVisibility(0);
                                GalleryActivity.this.signInButton.setVisibility(4);
                            }
                        } else if (GalleryActivity.this.mGalleryAdapterForFileSystem != null) {
                            if (!GalleryActivity.this.mGalleryAdapterForFileSystem.isDatasetEmpty()) {
                                GalleryActivity.this.getSource(GalleryActivity.this.sourceName);
                            } else {
                                GalleryActivity.this.textView.setText(GalleryActivity.this.getString(R.string.no_data));
                                GalleryActivity.this.textViewLayout.setVisibility(0);
                                GalleryActivity.this.signInButton.setVisibility(4);
                            }
                        }
                    } else {
                        GalleryActivity.this.getSource(GalleryActivity.this.sourceName);
                    }
                    if (!GalleryActivity.this.mSelectedMediaList.isEmpty()) {
                        GalleryActivity.this.mDoneButton.setVisibility(0);
                    }
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this.network_reachability_observer);
    }

    private void unRegisterNetworkChangeNotification() {
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this.network_reachability_observer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getSource(String str) {
        createButtonListeners();
        if (str.equals(SOURCE_DEVICE) || str.equals(SOURCE_MOMENTS)) {
            str = ClipPreferences.getInstance(this).getDeviceSource();
        }
        this.mGallerySource = GallerySource.createSource(str);
        this.titleTextView.setText(GallerySource.getSourceString(this, str));
        if (this.mGallerySource instanceof DeviceMediaSource) {
            this.toolbar.getMenu().clear();
            loadSourceData();
            return;
        }
        findViewById(R.id.gallery_name_toolbar).setClickable(false);
        findViewById(R.id.drop_down).setVisibility(4);
        if (!isNetworkAvailable()) {
            this.textView.setText(getString(R.string.no_internet_connection));
            this.textViewLayout.setVisibility(0);
            this.signInButton.setVisibility(4);
            this.isConnected = false;
            return;
        }
        this.isConnected = true;
        if (SOURCE_GOOGLE_DRIVE.equals(str)) {
            this.mFileSystemSource = new GoogleDriveSource();
            this.mFileSystemSource.login(getApplicationContext(), this, str, new FileSystemMediaSource.LoginListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.8
                @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.LoginListener
                public void onSuccessfulLogin() {
                    GalleryActivity.this.loadFileSystemData();
                }
            });
        } else {
            if (SOURCE_DROPBOX.equals(str)) {
                this.textView.setText(getString(R.string.request_link_account));
                this.signInButton.setText(getString(R.string.request_link));
                this.mFileSystemSource = new DropboxSource();
                loginToDropbox();
                return;
            }
            if (SOURCE_GOOGLE_PHOTOS.equals(str)) {
                this.mGallerySource = GallerySource.createSource(str);
                ((RemoteMediaSource) this.mGallerySource).login(getApplicationContext(), this, str, new RemoteMediaSource.LoginListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.9
                    @Override // com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource.LoginListener
                    public void onSuccessfulLogin() {
                        GalleryActivity.this.loadSourceData();
                    }
                });
            }
        }
    }

    private void loginToDropbox() {
        System.out.println("in loginToDropbox: Gallery");
        if (this.switchingAccount || !loadAuth()) {
            Auth.startOAuth2Authentication(getApplicationContext(), APP_KEY);
        }
    }

    public static void init(String str) {
        System.out.println("in init: Main");
        if (sDbxClient == null) {
            sDbxClient = new DbxClientV2(DbxRequestConfig.newBuilder("some clientIdentifier").withHttpRequestor(new OkHttp3Requestor(OkHttp3Requestor.defaultOkHttpClient())).build(), str);
            Log.d("Preferences", "init: " + sDbxClient);
        }
    }

    public static DbxClientV2 getClient() {
        return sDbxClient;
    }

    public static void setClient(DbxClientV2 dbxClientV2) {
        sDbxClient = dbxClientV2;
    }

    private boolean loadAuth() {
        String string = ClipPreferences.getInstance(this).getString("ACCESS_KEY", null);
        String string2 = ClipPreferences.getInstance(this).getString("ACCESS_SECRET", null);
        return (string == null || string2 == null || string.length() == 0 || string2.length() == 0) ? false : true;
    }

    private boolean storeAuth() {
        Log.d(TAG, "in storeAuth:");
        String oAuth2Token = Auth.getOAuth2Token();
        String string = ClipPreferences.getInstance(this).getString("ACCESS_SECRET", null);
        if (oAuth2Token != null) {
            Log.d(TAG, "in storeAuth: oauthaccessstoken not null");
            ClipPreferences.getInstance(this).setString("ACCESS_KEY", "oauth2:");
            ClipPreferences.getInstance(this).setString("ACCESS_SECRET", oAuth2Token);
            init(oAuth2Token);
        } else if (string != null) {
            Log.d(TAG, "oauth2AccessToken is null, using secret");
            init(string);
        }
        return (oAuth2Token == null && string == null) ? false : true;
    }

    public boolean isCancelThumbnailDownload() {
        return this.cancelThumbnailDownload;
    }

    public void setCancelThumbnailDownload(boolean z) {
        this.cancelThumbnailDownload = z;
    }

    private void login() {
        getSource(getIntent().getStringExtra("type"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadFileSystemData() {
        resetSelectedMediaList();
        this.downloadCount = 0;
        showSpinner();
        this.cancelAssetDownload = false;
        this.switchingAccount = false;
        this.mFileSystemSource.getChildren(this, null, new Handler(), new FileSystemMediaSource.FolderLoadListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.10
            @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.FolderLoadListener
            public void onFolderLoadSuccess(ArrayList<ThumbnailData> arrayList) {
                GalleryActivity.this.dismissSpinner();
                if (GalleryActivity.this.mGalleryAdapterForFileSystem != null) {
                    GalleryActivity.this.mGalleryAdapterForFileSystem.clearDataset();
                    GalleryActivity.this.mGalleryAdapterForFileSystem.clearStack();
                }
                Log.d(GalleryActivity.TAG, "size = " + arrayList.size());
                if (arrayList.size() > 0) {
                    if (GalleryActivity.this.mRecyclerView != null) {
                        GalleryActivity.this.mGalleryAdapterForFileSystem = new GalleryAdapterForFileSystem(GalleryActivity.this, GalleryActivity.this.enabledMediaTypes, arrayList, GalleryActivity.this.mFileSystemSource, GalleryActivity.this.imageSize, GalleryActivity.this.tfCollection, GalleryActivity.this.mRecyclerView, GalleryActivity.this.singleSelection);
                        GalleryActivity.this.mRecyclerView.setAdapter(GalleryActivity.this.mGalleryAdapterForFileSystem);
                        GalleryActivity.this.mRecyclerView.addOnScrollListener(new Utilities.AdapterImageLoaderOnScrollListener(GalleryActivity.this.mGalleryAdapterForFileSystem, GalleryActivity.this));
                        GalleryActivity.this.textViewLayout.setVisibility(8);
                        GalleryActivity.this.mRecyclerView.setVisibility(0);
                    } else {
                        Toast.makeText(GalleryActivity.this, GalleryActivity.this.getString(R.string.try_again_msg), 0).show();
                    }
                } else {
                    GalleryActivity.this.textView.setText(GalleryActivity.this.getString(R.string.no_data));
                    GalleryActivity.this.textViewLayout.setVisibility(0);
                    GalleryActivity.this.signInButton.setVisibility(4);
                    Log.d(GalleryActivity.TAG, "No files in memory");
                }
                GalleryActivity.this.createButtonListeners();
                ThumbnailHelper.cancelAllUnexecutedTasks();
            }

            @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.FolderLoadListener
            public void onFolderLoadFailure(int i) {
                GalleryActivity.this.createButtonListeners();
                ThumbnailHelper.cancelAllUnexecutedTasks();
                GalleryActivity.this.dismissSpinner();
                if (i == 22) {
                    Log.d(GalleryActivity.TAG, "IN GALLERY DATA ERROR - No Albums");
                    GalleryActivity.this.textView.setText(GalleryActivity.this.getString(R.string.no_data));
                    GalleryActivity.this.textViewLayout.setVisibility(0);
                    GalleryActivity.this.signInButton.setVisibility(4);
                    if (GalleryActivity.this.mGalleryAdapterForFileSystem != null) {
                        GalleryActivity.this.mGalleryAdapterForFileSystem.clearDataset();
                        GalleryActivity.this.mGalleryAdapterForFileSystem.clearStack();
                        return;
                    }
                    return;
                }
                if (i == 33) {
                    Log.d(GalleryActivity.TAG, "IN GALLERY DATA ERROR - No Internet file system");
                    if (GalleryActivity.this.mRecyclerView != null) {
                        GalleryActivity.this.mRecyclerView.setVisibility(8);
                    }
                    GalleryActivity.this.textView.setText(GalleryActivity.this.getString(R.string.no_internet_connection));
                    GalleryActivity.this.textView.setVisibility(0);
                    GalleryActivity.this.textViewLayout.setVisibility(0);
                    GalleryActivity.this.signInButton.setVisibility(4);
                    GalleryActivity.this.isConnected = false;
                    return;
                }
                if (i == 44) {
                    GalleryActivity.this.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(GalleryActivity.this, GalleryActivity.this.getString(R.string.error), 0).show();
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadSourceData() {
        resetSelectedMediaList();
        this.downloadCount = 0;
        this.cancelAssetDownload = false;
        showSpinner();
        this.mGallerySource.fetchData(this, new GallerySource.GalleryDataListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.11
            @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource.GalleryDataListener
            public void onGalleryDataAvailable(ArrayList<ThumbnailData> arrayList) {
                GalleryActivity.this.dismissSpinner();
                if (GalleryActivity.this.mAdapter != null) {
                    GalleryActivity.this.mAdapter.clearDataset();
                }
                if (arrayList != null && arrayList.size() > 0) {
                    if (GalleryActivity.this.mRecyclerView != null) {
                        GalleryActivity.this.mAdapter = new GalleryAdapter(GalleryActivity.this, arrayList, GalleryActivity.this.mGallerySource, GalleryActivity.this.timelineThumbSize, GalleryActivity.this.tfCollection, GalleryActivity.this.mRecyclerView, GalleryActivity.this.mGallerySource instanceof GroupedMediaSource);
                        GalleryActivity.this.mRecyclerView.setAdapter(GalleryActivity.this.mAdapter);
                        GalleryActivity.this.addOnScrollListener(GalleryActivity.this.mAdapter);
                        GalleryActivity.this.textViewLayout.setVisibility(8);
                    } else {
                        Toast.makeText(GalleryActivity.this, GalleryActivity.this.getString(R.string.try_again_msg), 0).show();
                    }
                } else {
                    GalleryActivity.this.textViewLayout.setVisibility(0);
                    GalleryActivity.this.textView.setText(GalleryActivity.this.getString(R.string.no_data));
                    GalleryActivity.this.signInButton.setVisibility(4);
                    Log.d(GalleryActivity.TAG, "No files in memory");
                }
                GalleryActivity.this.createButtonListeners();
                ThumbnailHelper.cancelAllUnexecutedTasks();
            }

            @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource.GalleryDataListener
            public void onGalleryDataError(int i) {
                GalleryActivity.this.createButtonListeners();
                if (!(GalleryActivity.this.mGallerySource instanceof RemoteMediaSource)) {
                    if (GalleryActivity.this.mGallerySource instanceof GroupedMediaSource) {
                        ClipPreferences.getInstance(GalleryActivity.this).setDeviceSource(GalleryActivity.SOURCE_DEVICE);
                        GalleryActivity.this.getSource(GalleryActivity.SOURCE_DEVICE);
                        return;
                    }
                    return;
                }
                GalleryActivity.this.dismissSpinner();
                if (i == 22) {
                    Log.d(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS, "IN GALLERY DATA ERROR - No Albums");
                    GalleryActivity.this.textView.setText(GalleryActivity.this.getString(R.string.no_albums));
                    GalleryActivity.this.textViewLayout.setVisibility(0);
                    GalleryActivity.this.signInButton.setVisibility(4);
                    if (GalleryActivity.this.mAdapter != null) {
                        GalleryActivity.this.mAdapter.clearDataset();
                        return;
                    }
                    return;
                }
                if (i == 33) {
                    Log.d(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS, "IN GALLERY DATA ERROR - No Internet");
                    GalleryActivity.this.textView.setText(GalleryActivity.this.getString(R.string.no_internet_connection));
                    GalleryActivity.this.textViewLayout.setVisibility(0);
                    GalleryActivity.this.signInButton.setVisibility(4);
                    if (GalleryActivity.this.mRecyclerView != null) {
                        GalleryActivity.this.mRecyclerView.setVisibility(8);
                    }
                    GalleryActivity.this.isConnected = false;
                    return;
                }
                if (i == 44) {
                    GalleryActivity.this.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(GalleryActivity.this, GalleryActivity.this.getString(R.string.error), 0).show();
                        }
                    });
                }
            }

            @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource.GalleryDataListener
            public void onUserRecoverableException() {
                GalleryActivity.this.dismissSpinner();
            }
        }, new Handler());
    }

    @Override // android.app.Activity
    public void onResume() {
        Log.d(TAG, "onresume");
        super.onResume();
        Config.collectLifecycleData(this);
        if (this.sourceName.equals(SOURCE_DROPBOX)) {
            if (this.mGalleryAdapterForFileSystem == null) {
                if (this.photosDownloadDialog == null) {
                    Log.d(TAG, "photos dialog null");
                    if (loadAuth() && getClient() != null) {
                        Log.d(TAG, "if: loadAuth is true");
                        loadFileSystemData();
                        return;
                    }
                    Log.d(TAG, "if: loadAuth is false");
                    if (storeAuth()) {
                        Log.d(TAG, "if: storeAuth is true");
                        loadFileSystemData();
                        return;
                    }
                    Log.d(TAG, "if: storeAuth is false");
                    this.textViewLayout.setVisibility(0);
                    this.textView.setText(getString(R.string.request_link_account));
                    this.signInButton.setText(getString(R.string.request_link));
                    this.signInButton.setVisibility(0);
                    return;
                }
                return;
            }
            if (this.photosDownloadDialog == null || !this.photosDownloadDialog.isShowing()) {
                Log.d(TAG, "photos dialog not showing");
                if (this.switchingAccount || !loadAuth()) {
                    Log.d(TAG, "else: loadAuth is false");
                    if (this.switchingAccount) {
                        if (storeAuth()) {
                            Log.d(TAG, "else: storeAuth is true");
                            loadFileSystemData();
                            return;
                        }
                        return;
                    }
                    Log.d(TAG, "!loadauth, !switchingaccount");
                    this.textViewLayout.setVisibility(0);
                    this.textView.setText(getString(R.string.request_link_account));
                    this.signInButton.setText(getString(R.string.request_link));
                    this.signInButton.setVisibility(0);
                    this.mGalleryAdapterForFileSystem.clearStack();
                    this.mGalleryAdapterForFileSystem.clearDataset();
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        Config.pauseCollectingLifecycleData();
    }

    private void resetSelectedMediaList() {
        this.mSelectedMediaList.clear();
        this.mDoneButton.setVisibility(8);
        this.mRecyclerView.setPadding(0, 0, 0, 0);
        this.mDoneButton.setText(this.mDoneString);
        this.mDoneButton.setEnabled(false);
    }

    public boolean isCancelDownload() {
        return this.cancelAssetDownload;
    }

    public void setCancelDownload(boolean z) {
        this.cancelAssetDownload = z;
    }

    public void showSpinner() {
        if (this.mProgressDialog == null) {
            Log.d(TAG, "progress bar null");
            this.mProgressDialog = b.a(this, "", getString(R.string.wait_message));
            this.mProgressDialog.setCancelable(true);
            this.mProgressDialog.setCanceledOnTouchOutside(false);
            this.mProgressDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.12
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    if (i == 4 && GalleryActivity.this.mProgressDialog != null) {
                        GalleryActivity.this.mProgressDialog.dismiss();
                        GalleryActivity.this.onBackPressed();
                        return true;
                    }
                    return true;
                }
            });
            return;
        }
        Log.d(TAG, "progress bar not null");
        if (!this.mProgressDialog.isShowing()) {
            Log.d(TAG, "progress bar not showing");
            this.mProgressDialog.show();
        }
    }

    public void dismissSpinner() {
        if (this.mProgressDialog != null) {
            Log.d(TAG, "progress bar dismiss");
            this.mProgressDialog.dismiss();
            this.mProgressDialog = null;
        }
    }

    public static String getMaximumLimitInGB() {
        return String.valueOf(5.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOnScrollListener(GalleryAdapter galleryAdapter) {
        this.mRecyclerView.addOnScrollListener(new Utilities.AdapterImageLoaderOnScrollListener(galleryAdapter, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createButtonListeners() {
        this.mBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d(GalleryActivity.TAG, "Registering");
                if (GalleryActivity.this.mGalleryAdapterForFileSystem != null) {
                    GalleryActivity.this.mGalleryAdapterForFileSystem.backPressed();
                } else {
                    this.onBackPressed();
                }
            }
        });
        this.mDoneButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.deliverResultToParentActivity();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverResultToParentActivity() {
        final String str;
        if (this.mGallerySource instanceof DeviceMediaSource) {
            this.mediaPathList = new ArrayList<>();
            Iterator<MediaModel> it = this.mSelectedMediaList.iterator();
            while (it.hasNext()) {
                this.mediaPathList.add(it.next().getPath());
            }
            onMediaPathsAvailable(this.mediaPathList);
            return;
        }
        if (this.mGallerySource instanceof GooglePhotosSource) {
            Metrics.sharedInstance().didAttemptImportOfRemoteSourceAssetInMediaPicker(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS);
            this.cancelAssetDownload = false;
            this.cancelThumbnailDownload = true;
            this.mediaPathList = new ArrayList<>();
            this.photosDownloadDialog = new PhotosDownloadDialog(this);
            this.photosDownloadDialog.setCanceledOnTouchOutside(false);
            this.photosDownloadDialog.show();
            this.photosDownloadDialog.maximumProgress(this.mSelectedMediaList.size() * 100);
            this.photosDownloadDialog.setImageSource(R.drawable.sourcepicker_google_photos);
            this.photosDownloadDialog.mCancel.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.15
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GalleryActivity.this.cancelAssetDownload = true;
                    GalleryActivity.this.cancelThumbnailDownload = false;
                    GalleryActivity.this.photosDownloadDialog.dismiss();
                    GalleryActivity.this.mAdapter.setAllBucketDownloadRestart();
                    GalleryActivity.this.deleteTempFolder();
                    Metrics.sharedInstance().didCancelDownloadOfRemoteSourceAssetInMediaPicker(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS);
                }
            });
            this.mAdapter.setAllBucketDownloadCancel();
            Log.e(TAG, "No. of selected assets = " + this.mSelectedMediaList.size());
            this.downloadCount = 0;
            final ArrayList arrayList = new ArrayList();
            for (MediaModel mediaModel : this.mSelectedMediaList) {
                Log.d(TAG, "Adding id = " + mediaModel.getId() + " to list");
                arrayList.add(mediaModel.getId());
            }
            for (final MediaModel mediaModel2 : this.mSelectedMediaList) {
                ((RemoteMediaSource) this.mGallerySource).fetchFiles(mediaModel2, new RemoteMediaSource.MediaFileListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.16
                    @Override // com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource.MediaFileListener
                    public void onFilesAvailable(String str2) throws Throwable {
                        if (!GalleryActivity.this.cancelAssetDownload && arrayList.contains(mediaModel2.getId())) {
                            arrayList.remove(mediaModel2.getId());
                            Log.d(GalleryActivity.TAG, "Removing id = " + mediaModel2.getId() + " from id list; new size = " + arrayList.size());
                            GalleryActivity.access$3008(GalleryActivity.this);
                            GalleryActivity.this.mediaPathList.add(str2);
                            if (GalleryActivity.this.downloadCount == GalleryActivity.this.mSelectedMediaList.size()) {
                                GalleryActivity.this.photosDownloadDialog.dismiss();
                                if (!GalleryActivity.this.cancelAssetDownload) {
                                    GalleryActivity.this.moveFilesToMainFolder();
                                    GalleryActivity.this.deleteTempFolder();
                                    GalleryActivity.this.onMediaPathsAvailable(GalleryActivity.this.mediaPathList);
                                    GalleryActivity.this.cancelAssetDownload = true;
                                }
                                Metrics.sharedInstance().didDownloadRemoteSourceAssetInMediaPicker(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS);
                            }
                        }
                    }

                    @Override // com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource.MediaFileListener
                    public void onFileError(int i, String str2) throws Throwable {
                        if (i == 33) {
                            GalleryActivity.this.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.16.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    GalleryActivity.this.photosDownloadDialog.dismiss();
                                    GalleryActivity.this.mDoneButton.setVisibility(8);
                                    GalleryActivity.this.setTextView(GalleryActivity.this.getString(R.string.no_internet_connection));
                                    GalleryActivity.this.isConnected = false;
                                    GalleryActivity.this.deleteTempFolder();
                                    Metrics.sharedInstance().didFailDownloadOfRemoteSourceAssetInMediaPicker(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS);
                                }
                            });
                            return;
                        }
                        if (i == 44) {
                            if (arrayList.contains(mediaModel2.getId())) {
                                arrayList.remove(mediaModel2.getId());
                                Log.d(GalleryActivity.TAG, "Removing id = " + mediaModel2.getId() + " from id list; new size = " + arrayList.size());
                                GalleryActivity.access$3008(GalleryActivity.this);
                                Log.d(GalleryActivity.TAG, "on file error io exception");
                                GalleryActivity.this.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.16.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Toast.makeText(GalleryActivity.this, GalleryActivity.this.getString(R.string.error), 0).show();
                                    }
                                });
                                File file = new File(str2);
                                if (file.exists()) {
                                    Log.d(GalleryActivity.TAG, "file deleted in io exception = " + file.delete());
                                }
                                Log.d(GalleryActivity.TAG, "asset load io exception, list size = " + GalleryActivity.this.mSelectedMediaList.size());
                                if (GalleryActivity.this.mSelectedMediaList == null || GalleryActivity.this.mSelectedMediaList.size() != 1) {
                                    if (GalleryActivity.this.downloadCount == GalleryActivity.this.mSelectedMediaList.size()) {
                                        GalleryActivity.this.photosDownloadDialog.dismiss();
                                        GalleryActivity.this.onMediaPathsAvailable(GalleryActivity.this.mediaPathList);
                                        GalleryActivity.this.cancelAssetDownload = true;
                                        Metrics.sharedInstance().didDownloadRemoteSourceAssetInMediaPicker(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS);
                                        return;
                                    }
                                    return;
                                }
                                GalleryActivity.this.photosDownloadDialog.dismiss();
                                return;
                            }
                            return;
                        }
                        if (arrayList.contains(mediaModel2.getId())) {
                            arrayList.remove(mediaModel2.getId());
                            Log.d(GalleryActivity.TAG, "Removing id = " + mediaModel2.getId() + " from id list; new size = " + arrayList.size());
                            GalleryActivity.access$3008(GalleryActivity.this);
                            File file2 = new File(str2);
                            if (file2.exists()) {
                                Log.d(GalleryActivity.TAG, "file deleted in io exception = " + file2.delete());
                            }
                            GalleryActivity.this.photosDownloadDialog.setProgress(GalleryActivity.this.downloadCount, GalleryActivity.this.mSelectedMediaList.size());
                            if (GalleryActivity.this.downloadCount == GalleryActivity.this.mSelectedMediaList.size()) {
                                GalleryActivity.this.photosDownloadDialog.dismiss();
                                GalleryActivity.this.moveFilesToMainFolder();
                                GalleryActivity.this.deleteTempFolder();
                                GalleryActivity.this.onMediaPathsAvailable(GalleryActivity.this.mediaPathList);
                                Metrics.sharedInstance().didDownloadRemoteSourceAssetInMediaPicker(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS);
                            }
                        }
                    }
                });
            }
            return;
        }
        if (this.sourceName.equals(SOURCE_GOOGLE_DRIVE)) {
            str = Metrics.REMOTE_SOURCE_GOOGLE_DRIVE;
        } else {
            str = this.sourceName.equals(SOURCE_DROPBOX) ? Metrics.REMOTE_SOURCE_DROPBOX : "??";
        }
        Metrics.sharedInstance().didAttemptImportOfRemoteSourceAssetInMediaPicker(str);
        this.cancelAssetDownload = false;
        this.mediaPathList = new ArrayList<>();
        this.photosDownloadDialog = new PhotosDownloadDialog(this);
        this.photosDownloadDialog.show();
        this.photosDownloadDialog.maximumProgress(this.mSelectedMediaList.size() * 100);
        if (this.sourceName.equals(SOURCE_GOOGLE_DRIVE)) {
            this.photosDownloadDialog.setImageSource(R.drawable.sourcepicker_google_drive);
        } else if (this.sourceName.equals(SOURCE_DROPBOX)) {
            this.photosDownloadDialog.setImageSource(R.drawable.sourcepicker_dropbox);
        }
        this.photosDownloadDialog.mCancel.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GalleryActivity.this.cancelAssetDownload = true;
                GalleryActivity.this.photosDownloadDialog.dismiss();
                GalleryActivity.this.deleteTempFolder();
                Metrics.sharedInstance().didCancelDownloadOfRemoteSourceAssetInMediaPicker(str);
            }
        });
        this.photosDownloadDialog.setCanceledOnTouchOutside(false);
        Log.e(TAG, "No. of selected assets = " + this.mSelectedMediaList.size());
        this.downloadCount = 0;
        final ArrayList arrayList2 = new ArrayList();
        for (MediaModel mediaModel3 : this.mSelectedMediaList) {
            Log.d(TAG, "Adding id = " + mediaModel3.getId() + " to list");
            arrayList2.add(mediaModel3.getId());
        }
        for (final MediaModel mediaModel4 : this.mSelectedMediaList) {
            Log.d(TAG, "in loop, id = " + mediaModel4.getId());
            this.mFileSystemSource.getAsset(mediaModel4, new FileSystemMediaSource.AssetLoadListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.18
                @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.AssetLoadListener
                public void onAssetLoadSuccess(String str2) throws Throwable {
                    if (!GalleryActivity.this.cancelAssetDownload && arrayList2.contains(mediaModel4.getId())) {
                        arrayList2.remove(mediaModel4.getId());
                        Log.d(GalleryActivity.TAG, "Removing id = " + mediaModel4.getId() + " from id list; new size = " + arrayList2.size());
                        GalleryActivity.access$3008(GalleryActivity.this);
                        Log.d(GalleryActivity.TAG, "download count = " + GalleryActivity.this.downloadCount);
                        Log.d(GalleryActivity.TAG, "file path received = " + str2);
                        GalleryActivity.this.mediaPathList.add(str2);
                        if (GalleryActivity.this.downloadCount == GalleryActivity.this.mSelectedMediaList.size()) {
                            Log.d(GalleryActivity.TAG, "download count = list size");
                            GalleryActivity.this.photosDownloadDialog.dismiss();
                            if (!GalleryActivity.this.cancelAssetDownload) {
                                GalleryActivity.this.moveFilesToMainFolder();
                                GalleryActivity.this.deleteTempFolder();
                                GalleryActivity.this.onMediaPathsAvailable(GalleryActivity.this.mediaPathList);
                                GalleryActivity.this.cancelAssetDownload = true;
                            }
                            Metrics.sharedInstance().didDownloadRemoteSourceAssetInMediaPicker(str);
                        }
                    }
                }

                @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.AssetLoadListener
                public void onAssetLoadFailure(int i, String str2) throws Throwable {
                    Log.d(GalleryActivity.TAG, "on asset load failure");
                    if (i == 33) {
                        GalleryActivity.this.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.18.1
                            @Override // java.lang.Runnable
                            public void run() {
                                GalleryActivity.this.photosDownloadDialog.dismiss();
                                GalleryActivity.this.mDoneButton.setVisibility(8);
                                GalleryActivity.this.isConnected = false;
                                GalleryActivity.this.deleteTempFolder();
                                GalleryActivity.this.setTextView(GalleryActivity.this.getString(R.string.no_internet_connection));
                                Metrics.sharedInstance().didFailDownloadOfRemoteSourceAssetInMediaPicker(str);
                            }
                        });
                        return;
                    }
                    if (i == 44) {
                        if (arrayList2.contains(mediaModel4.getId())) {
                            arrayList2.remove(mediaModel4.getId());
                            GalleryActivity.access$3008(GalleryActivity.this);
                            Log.d(GalleryActivity.TAG, "on asset load failure io exception");
                            GalleryActivity.this.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.18.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    Toast.makeText(GalleryActivity.this, GalleryActivity.this.getString(R.string.error), 0).show();
                                }
                            });
                            File file = new File(str2);
                            if (file.exists()) {
                                Log.d(GalleryActivity.TAG, "file deleted in io exception = " + file.delete());
                            }
                            Log.d(GalleryActivity.TAG, "asset load io exception, list size = " + GalleryActivity.this.mSelectedMediaList.size());
                            if (GalleryActivity.this.mSelectedMediaList == null || GalleryActivity.this.mSelectedMediaList.size() != 1) {
                                if (GalleryActivity.this.downloadCount == GalleryActivity.this.mSelectedMediaList.size()) {
                                    GalleryActivity.this.photosDownloadDialog.dismiss();
                                    if (!GalleryActivity.this.cancelAssetDownload) {
                                        GalleryActivity.this.moveFilesToMainFolder();
                                        GalleryActivity.this.deleteTempFolder();
                                        GalleryActivity.this.onMediaPathsAvailable(GalleryActivity.this.mediaPathList);
                                        GalleryActivity.this.cancelAssetDownload = true;
                                    }
                                    Metrics.sharedInstance().didDownloadRemoteSourceAssetInMediaPicker(str);
                                    return;
                                }
                                return;
                            }
                            GalleryActivity.this.photosDownloadDialog.dismiss();
                            return;
                        }
                        return;
                    }
                    if (arrayList2.contains(mediaModel4.getId())) {
                        arrayList2.remove(mediaModel4.getId());
                        GalleryActivity.access$3008(GalleryActivity.this);
                        File file2 = new File(str2);
                        if (file2.exists()) {
                            Log.d(GalleryActivity.TAG, "file deleted in io exception = " + file2.delete());
                        }
                        if (GalleryActivity.this.mSelectedMediaList == null || GalleryActivity.this.mSelectedMediaList.size() != 1) {
                            if (GalleryActivity.this.downloadCount == GalleryActivity.this.mSelectedMediaList.size()) {
                                GalleryActivity.this.photosDownloadDialog.dismiss();
                                GalleryActivity.this.moveFilesToMainFolder();
                                GalleryActivity.this.deleteTempFolder();
                                GalleryActivity.this.onMediaPathsAvailable(GalleryActivity.this.mediaPathList);
                                Metrics.sharedInstance().didDownloadRemoteSourceAssetInMediaPicker(str);
                                return;
                            }
                            return;
                        }
                        GalleryActivity.this.photosDownloadDialog.dismiss();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteTempFolder() {
        String str;
        if (this.sourceName.equals(SOURCE_GOOGLE_PHOTOS)) {
            str = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GooglePhotos/temp";
        } else if (this.sourceName.equals(SOURCE_GOOGLE_DRIVE)) {
            str = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GoogleDrive/temp";
        } else {
            str = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/Dropbox/files/temp";
        }
        File file = new File(str);
        try {
            Log.d(TAG, "File exists? " + file.exists() + "; Deleting temp folder");
            FileUtils.deleteDirectory(file);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveFilesToMainFolder() throws Throwable {
        String str;
        String str2;
        if (this.sourceName.equals(SOURCE_GOOGLE_PHOTOS)) {
            str = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GooglePhotos";
            str2 = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GooglePhotos/temp";
        } else if (this.sourceName.equals(SOURCE_GOOGLE_DRIVE)) {
            str = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GoogleDrive";
            str2 = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GoogleDrive/temp";
        } else {
            str = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/Dropbox/files";
            str2 = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/Dropbox/files/temp";
        }
        File file = new File(str);
        File file2 = new File(str2);
        Log.d(TAG, "in moveFilesToMainFolder");
        if (file2.listFiles() != null) {
            Log.d(TAG, "in moveFilesToMainFolder 1");
            File[] fileArrListFiles = file2.listFiles();
            for (File file3 : fileArrListFiles) {
                Log.d(TAG, "in moveFilesToMainFolder 2");
                try {
                    FileUtils.copyFileToDirectory(file3, file);
                    Log.d(TAG, "Moved file: " + file3.getName());
                } catch (IOException e2) {
                    e2.printStackTrace();
                    Log.e(TAG, "Error in moving file from temp to main folder");
                }
            }
        }
    }

    public void updateProgress(int i) {
        if (this.photosDownloadDialog != null) {
            this.photosDownloadDialog.addProgress(i);
        }
    }

    public void decreaseMaximumProgress() {
        if (this.photosDownloadDialog != null && this.photosDownloadDialog.isShowing()) {
            this.photosDownloadDialog.decreaseMaxProgress();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaPathsAvailable(ArrayList<String> arrayList) {
        Log.d(TAG, "on Media Paths available, size = " + arrayList.size());
        Intent intent = new Intent();
        intent.putStringArrayListExtra(INTENT_EXTRA_LIST, arrayList);
        if (this.singleSelection && (this.sourceName.equals(SOURCE_GOOGLE_DRIVE) || this.sourceName.equals(SOURCE_DROPBOX))) {
            MediaModel mediaModel = this.mSelectedMediaList.get(0);
            if (mediaModel instanceof MediaModelForRemote) {
                intent.putExtra(INTENT_RESULT_MEDIA_NAME, ((MediaModelForRemote) mediaModel).getTitle());
                intent.putExtra(INTENT_RESULT_MEDIA_DATE, mediaModel.getDate());
            }
        }
        if (getParent() == null) {
            setResult(-1, intent);
        } else {
            getParent().setResult(-1, intent);
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        registerNetworkChangeNotification();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.mRecyclerView != null) {
            this.mRecyclerView.setItemAnimator(null);
            this.mRecyclerView.setAdapter(null);
            this.mRecyclerView = null;
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        unRegisterNetworkChangeNotification();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        String string;
        super.onActivityResult(i, i2, intent);
        if (i == 2) {
            if (i2 == -1) {
                if (intent != null && intent.getExtras() != null && (string = intent.getExtras().getString("authAccount")) != null) {
                    ClipPreferences.getInstance(this).setString("googleAccount", string);
                    if (this.mGallerySource != null) {
                        ((GooglePhotosSource) this.mGallerySource).setCredential(getApplicationContext());
                        loadSourceData();
                        return;
                    } else {
                        ((GoogleDriveSource) this.mFileSystemSource).setCredential(getApplication());
                        loadFileSystemData();
                        return;
                    }
                }
                return;
            }
            if (ClipPreferences.getInstance(this).getString("googleAccount", null) == null) {
                this.textView.setText(getString(R.string.request_sign_in));
                this.textViewLayout.setVisibility(0);
                this.signInButton.setVisibility(0);
                this.signInButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.19
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Intent intent2 = GalleryActivity.this.getIntent();
                        GalleryActivity.this.sourceName = intent2.getStringExtra("type");
                        GalleryActivity.this.getSource(GalleryActivity.this.sourceName);
                    }
                });
                return;
            }
            return;
        }
        if (i == 1) {
            if (i2 == -1) {
                if (this.mGallerySource != null) {
                    loadSourceData();
                    return;
                } else {
                    if (this.mFileSystemSource != null) {
                        loadFileSystemData();
                        return;
                    }
                    return;
                }
            }
            if (this.mAdapter != null) {
                this.mAdapter.clearDataset();
            }
            if (this.mGalleryAdapterForFileSystem != null) {
                this.mGalleryAdapterForFileSystem.clearDataset();
                this.mGalleryAdapterForFileSystem.clearStack();
            }
            if (this.sourceName.equals(SOURCE_DROPBOX)) {
                this.textView.setText(getString(R.string.request_link_account));
                this.signInButton.setText(R.string.request_link);
            } else {
                this.textView.setText(getString(R.string.request_sign_in));
            }
            this.textViewLayout.setVisibility(0);
            this.signInButton.setVisibility(0);
            this.signInButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.20
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent2 = GalleryActivity.this.getIntent();
                    GalleryActivity.this.sourceName = intent2.getStringExtra("type");
                    GalleryActivity.this.getSource(GalleryActivity.this.sourceName);
                }
            });
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.mGalleryAdapterForFileSystem != null && !this.mGalleryAdapterForFileSystem.isStackEmpty()) {
            this.mGalleryAdapterForFileSystem.backPressed();
        } else {
            super.onBackPressed();
            if (this.mFileSystemSource != null) {
                this.mFileSystemSource.cancelDataFetch();
            }
        }
        if (this.mGallerySource != null) {
            this.mGallerySource.cancelDataFetch();
        }
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            dismissSpinner();
        }
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    @Override // com.adobe.premiereclip.mediabrowser.IMediaItemSelectionListener
    public void onMediaItemSelection(MediaModel mediaModel) {
        if (mediaModel.isMediaSelected()) {
            Log.d(TAG, "adding media");
            this.mSelectedMediaList.add(mediaModel);
        } else {
            Log.d(TAG, "Removing media");
            Iterator<MediaModel> it = this.mSelectedMediaList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                MediaModel next = it.next();
                if (next.getId().equals(mediaModel.getId())) {
                    this.mSelectedMediaList.remove(next);
                    break;
                }
            }
        }
        if (this.mSelectedMediaList.size() == 0) {
            this.mDoneButton.setVisibility(8);
            this.mRecyclerView.setPadding(0, 0, 0, 0);
            this.mDoneButton.setText(this.mDoneString);
            this.mDoneButton.setEnabled(false);
            return;
        }
        this.mDoneButton.setVisibility(0);
        this.mRecyclerView.setPadding(0, 0, 0, (int) ((getResources().getDisplayMetrics().density * 50.0f) + 0.5f));
        this.mDoneButton.setText(this.mDoneString + " (" + this.mSelectedMediaList.size() + ")");
        this.mDoneButton.setEnabled(true);
    }

    public ArrayList<MediaModel> getSelectedMediaList() {
        return this.mSelectedMediaList;
    }

    @Override // com.adobe.premiereclip.mediabrowser.IMediaItemSelectionListener
    public void onMediaReplacement(MediaModel mediaModel) {
    }

    public int getSelectedMediaCount() {
        return this.mSelectedMediaList.size();
    }

    public String clearCurrentSingleSelection() {
        String id = this.mSelectedMediaList.get(0).getId();
        this.mSelectedMediaList.clear();
        return id;
    }

    public void showErrorToast() {
        runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryActivity.21
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(GalleryActivity.this, GalleryActivity.this.getString(R.string.error), 0).show();
            }
        });
    }
}
