package com.adobe.premiereclip.library;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.ActivityCompat;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.coachmarks.ScreenUtil;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.adobe.premiereclip.library.PopUpLibraryListAdapter;
import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.looks.CandyLook;
import com.adobe.premiereclip.looks.ClipLook;
import com.adobe.premiereclip.looks.LocalLooks;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.resources.LooksPreviewResources;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.utility.FontUtils;
import com.alertdialogpro.b;
import com.h.a.d;
import java.util.Observable;
import java.util.Observer;
import org.solovyev.android.views.llm.LinearLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public class LooksListActivity extends TopOfEditorActivity implements PopUpLibraryListAdapter.LibraryClickListener, Observer {
    static final Handler mainHandler = new Handler(Looper.getMainLooper());
    private String currentLibraryName;
    private GPUMediaSurfaceView gpuMediaSurfaceView;
    private boolean initialized;
    private PopUpLibraryListAdapter libAdapter;
    private RecyclerView libRecyclerView;
    private TextView libraryNameView;
    private int lookNameHeight;
    private RecyclerView lookRecyclerView;
    private int lookThumbHeight;
    private LooksListAdapter looksAdapter;
    private LooksPreviewResources looksPreviewResources;
    private PopupWindow popupWindow;
    private Project project;
    private String projectKey;
    private View toolBar;
    private final int COLUMN_COUNT = 3;
    private ClipLibraryManager clipLibraryManager = ClipLibraryManager.getSharedInstance();
    private b mProgressDialog = null;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_looklist);
        d.a(this);
        this.projectKey = getIntent().getStringExtra("project_key");
        this.project = ProjectManager.getInstance().getProjectWithKey(this.projectKey);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i = (point.x * 9) / 16;
        this.lookThumbHeight = (((point.x - (((int) getResources().getDimension(R.dimen.look_item_padding)) * 4)) / 3) * 9) / 16;
        Paint paint = new Paint();
        paint.setTextSize(getResources().getDimension(R.dimen.look_item_text_size));
        paint.setTypeface(FontUtils.getInstance().getAdobeCleanTypeface());
        Rect rect = new Rect();
        paint.getTextBounds("ATjg", 0, "ATjg".length(), rect);
        this.lookNameHeight = rect.height() + (((int) (((double) getResources().getDimension(R.dimen.look_text_padding)) + 0.5d)) * 2);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.player_container);
        relativeLayout.getLayoutParams().height = i;
        this.toolBar = findViewById(R.id.subview_theme_list);
        this.libraryNameView = (TextView) findViewById(R.id.lib_name);
        this.lookRecyclerView = (RecyclerView) findViewById(R.id.shapeImages_gridView);
        this.looksAdapter = new LooksListAdapter(this);
        this.lookRecyclerView.setAdapter(this.looksAdapter);
        this.lookRecyclerView.setLayoutManager(new GridLayoutManager(this, 3));
        this.popupWindow = new PopupWindow(this);
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(R.layout.lib_popup, (ViewGroup) null);
        this.popupWindow.setContentView(viewGroup);
        this.popupWindow.setBackgroundDrawable(getResources().getDrawable(R.drawable.abc_popup_background_mtrl_mult));
        this.libRecyclerView = (RecyclerView) viewGroup.findViewById(R.id.lib_popup_listView);
        this.libAdapter = new PopUpLibraryListAdapter(this);
        this.libAdapter.setLibraryClickListener(this);
        this.libRecyclerView.setAdapter(this.libAdapter);
        this.libRecyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false) { // from class: com.adobe.premiereclip.library.LooksListActivity.1
            @Override // org.solovyev.android.views.llm.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
            public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i3) {
                int mode = View.MeasureSpec.getMode(i3);
                int size = View.MeasureSpec.getSize(i3);
                int heightInPx = (int) (ScreenUtil.getHeightInPx(1) / 2.0f);
                Log.d("LooksPopup", "got height : " + size + "   max height : " + heightInPx);
                if (size > heightInPx) {
                    super.onMeasure(recycler, state, i2, View.MeasureSpec.makeMeasureSpec(heightInPx, mode));
                } else {
                    super.onMeasure(recycler, state, i2, i3);
                }
            }
        });
        final float widthInPx = ScreenUtil.getWidthInPx(1);
        final int i2 = (int) ((2.0f * widthInPx) / 3.0f);
        this.popupWindow.setWidth(i2);
        this.popupWindow.setHeight(-2);
        this.popupWindow.setFocusable(true);
        findViewById(R.id.library_name_toolbar).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.library.LooksListActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LooksListActivity.this.libAdapter.notifyDataSetChanged();
                LooksListActivity.this.popupWindow.showAsDropDown(LooksListActivity.this.toolBar, ((int) ((widthInPx - i2) / 2.0f)) - 20, -LooksListActivity.this.toolBar.getHeight());
                LooksListActivity.this.libAdapter.notifyDataSetChanged();
            }
        });
        getWindow().setBackgroundDrawable(null);
        this.gpuMediaSurfaceView = new GPUMediaSurfaceView(this);
        relativeLayout.removeAllViews();
        relativeLayout.addView(this.gpuMediaSurfaceView);
        this.initialized = false;
        BaseLook look = this.project.getSequence().getLook();
        if (look == null || (look instanceof ClipLook)) {
            this.clipLibraryManager.setSelectedDefaultLooks(true);
            this.currentLibraryName = getString(R.string.looks_tab_clip_defaults);
        } else {
            this.clipLibraryManager.setSelectedDefaultLooks(false);
            String libraryId = ((CandyLook) look).getLibraryId();
            if (libraryId != null) {
                this.clipLibraryManager.setCurrentLibrary(this.clipLibraryManager.getLibraryById(libraryId));
            } else {
                this.clipLibraryManager.setCurrentLibrary(this.clipLibraryManager.getCurrentLibrary());
            }
            this.currentLibraryName = this.clipLibraryManager.getCurrentLibraryName();
        }
        if (!startLibrarySync()) {
            this.libraryNameView.setText(this.currentLibraryName);
        }
        this.looksAdapter.setSelectedPosition(getSelectedLookPosition());
        this.looksAdapter.notifyDataSetChanged();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.initialized = false;
        this.looksPreviewResources = new LooksPreviewResources(this, this.gpuMediaSurfaceView, new LooksPreviewResources.Listener() { // from class: com.adobe.premiereclip.library.LooksListActivity.3
            @Override // com.adobe.premiereclip.mediaengine.resources.LooksPreviewResources.Listener
            public void onInit() {
                LooksListActivity.this.initialized = true;
            }
        }, this.project);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.clipLibraryManager.removeObserver(this);
        Config.pauseCollectingLifecycleData();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.clipLibraryManager.addObserver(this);
        Config.collectLifecycleData(this);
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.looksPreviewResources.release();
        this.initialized = false;
        super.onStop();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        setResult(-1, new Intent());
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    public void closeAndGoBack(View view) {
        onBackPressed();
    }

    private boolean setLookToPreview(BaseLook baseLook) {
        if (!this.initialized || this.project.getSequence().getClips().isEmpty() || !this.project.shouldApplyLookOnPoster()) {
            return true;
        }
        Log.i("Looks Preview", "here: " + baseLook.getLookName());
        return this.looksPreviewResources.applyLook(baseLook);
    }

    private boolean startLibrarySync() {
        if (this.clipLibraryManager.isSelectedDefaultLooks() || !this.clipLibraryManager.getCurrentLibraryName().isEmpty() || !this.clipLibraryManager.isSyncStarted()) {
            return false;
        }
        this.mProgressDialog = b.a(this, "", getString(R.string.wait_message));
        this.mProgressDialog.setCancelable(true);
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.adobe.premiereclip.library.LooksListActivity.4
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i == 4) {
                    LooksListActivity.this.mProgressDialog.dismiss();
                    LooksListActivity.this.onBackPressed();
                    return true;
                }
                return true;
            }
        });
        this.clipLibraryManager.forceSync();
        this.libraryNameView.setText(getString(R.string.looks_tab_library_looks));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void librarySyncOnCompletion() {
        if (dismissProgressDialog()) {
            this.libraryNameView.setText(((AdobeLibraryComposite) this.clipLibraryManager.getLibraryById(getSelectedLibraryId())).getName());
            this.looksAdapter.notifyDataSetChanged();
        }
    }

    private boolean dismissProgressDialog() {
        if (this.mProgressDialog == null) {
            return false;
        }
        this.mProgressDialog.dismiss();
        this.mProgressDialog = null;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSelectedLookPosition() {
        BaseLook look = this.project.getSequence().getLook();
        if (look == null) {
            return -1;
        }
        if (look instanceof ClipLook) {
            return LocalLooks.getIndexOfLookFromId(look.getLookId());
        }
        return this.clipLibraryManager.getPositionFromLookFromId(look.getLookId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrentLibraryId() {
        return this.clipLibraryManager.isSelectedDefaultLooks() ? getString(R.string.looks_tab_clip_defaults) : this.clipLibraryManager.getCurrentLibrary().getLibraryId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSelectedLibraryId() {
        BaseLook look = this.project.getSequence().getLook();
        if (look instanceof ClipLook) {
            return getString(R.string.looks_tab_clip_defaults);
        }
        return ((CandyLook) look).getLibraryId() == null ? "" : ((CandyLook) look).getLibraryId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onImageClicked(View view, int i) {
        BaseLook look;
        if (this.clipLibraryManager.isSelectedDefaultLooks()) {
            look = LocalLooks.getClipLooks().get(i);
        } else {
            look = this.clipLibraryManager.getLook(i);
        }
        if (setLookToPreview(look)) {
            this.project.getSequence().setLook(look);
            if (look instanceof ClipLook) {
                DCXWriter.applyLook(look.getLookName(), null, null, null, look.getLookId());
                Metrics.sharedInstance().didSelectFinishingTouchesLook(look.getLookName());
                return;
            } else {
                if (look instanceof CandyLook) {
                    DCXWriter.applyLook(look.getLookName(), ((CandyLook) look).getCubeDataUrl(), ((CandyLook) look).getRenditionPathUrl(), ((CandyLook) look).getLibraryId(), look.getLookId());
                    Metrics.sharedInstance().didSelectFinishingTouchesLook("My Library");
                    return;
                }
                return;
            }
        }
        Toast.makeText(this, getResources().getString(R.string.looks_error), 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkEmptyLibrary(int i) {
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        if (obj instanceof LibraryNotification) {
            LibraryNotification libraryNotification = (LibraryNotification) obj;
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kSyncCompleteNotification)) {
                Log.d("Looks", "library sync complete!");
                runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.library.LooksListActivity.5
                    @Override // java.lang.Runnable
                    public void run() {
                        LooksListActivity.this.librarySyncOnCompletion();
                    }
                });
                return;
            }
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kSyncStartedNotification)) {
                Log.d("Looks", "library sync started!");
                startLibrarySync();
                return;
            }
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kSyncIssueNotification)) {
                Log.d("Looks", "library sync issue!");
                runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.library.LooksListActivity.6
                    @Override // java.lang.Runnable
                    public void run() {
                        LooksListActivity.this.librarySyncOnCompletion();
                    }
                });
                return;
            }
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kElementAdded)) {
                Log.d("Looks", "library sync : element added!");
                runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.library.LooksListActivity.7
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                });
            } else if (libraryNotification.notificationType.equals(GeneralLibraryManager.kElementRemoved)) {
                Log.d("Looks", "library sync : element removed!");
                runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.library.LooksListActivity.8
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                });
            } else if (libraryNotification.notificationType.equals(GeneralLibraryManager.kLibraryAdded)) {
                Log.d("Looks", "library sync : library added!");
                librarySyncOnCompletion();
                ActivityCompat.invalidateOptionsMenu(this);
                checkEmptyLibrary(this.clipLibraryManager.countLooksInCurrentLibrary());
            }
        }
    }

    @Override // com.adobe.premiereclip.library.PopUpLibraryListAdapter.LibraryClickListener
    public void onPopupLibraryClicked(View view, int i) {
        this.popupWindow.dismiss();
        if (i > 0) {
            int i2 = i - 1;
            this.clipLibraryManager.setSelectedDefaultLooks(false);
            if (this.clipLibraryManager.getCurrentLibrary() != null) {
                AdobeLibraryComposite adobeLibraryComposite = this.clipLibraryManager.getSortedLibraries().get(i2);
                if (adobeLibraryComposite != null) {
                    this.clipLibraryManager.setCurrentLibrary(adobeLibraryComposite);
                }
                this.libraryNameView.setText(this.clipLibraryManager.getLibraryName(adobeLibraryComposite));
                if (this.clipLibraryManager.countLooksInCurrentLibrary() == 0) {
                    findViewById(R.id.empty_library_text).setVisibility(0);
                } else {
                    findViewById(R.id.empty_library_text).setVisibility(8);
                }
            } else {
                return;
            }
        } else {
            this.clipLibraryManager.setSelectedDefaultLooks(true);
            this.libraryNameView.setText(getString(R.string.looks_tab_clip_defaults));
            findViewById(R.id.empty_library_text).setVisibility(8);
        }
        this.looksAdapter.notifyDataSetChanged();
        if (getCurrentLibraryId().equals(getSelectedLibraryId())) {
            this.looksAdapter.setSelectedPosition(getSelectedLookPosition());
        } else {
            this.looksAdapter.setSelectedPosition(0);
        }
    }

    public class LooksListAdapter extends RecyclerView.Adapter<ViewHolder> {
        private int activeLookItemIndex = -1;
        private Context context;
        private LayoutInflater inflater;

        public LooksListAdapter(Context context) {
            this.context = context;
            this.inflater = LayoutInflater.from(context);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ViewHolder viewHolder = new ViewHolder(this.inflater.inflate(R.layout.view_look_item, viewGroup, false));
            d.a(viewHolder.lookName);
            return viewHolder;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onViewRecycled(ViewHolder viewHolder) {
            super.onViewRecycled(viewHolder);
            setLookItem(viewHolder, viewHolder.getLayoutPosition(), null);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(final ViewHolder viewHolder, final int i) {
            viewHolder.setPositionView(i);
            setLookItem(viewHolder, i, null);
            if (!LooksListActivity.this.clipLibraryManager.isSelectedDefaultLooks()) {
                final CandyLook look = LooksListActivity.this.clipLibraryManager.getLook(i);
                if (look == null) {
                    LooksListActivity.this.clipLibraryManager.getLookAtPosition(i, new IAdobeGenericCompletionCallback<CandyLook>() { // from class: com.adobe.premiereclip.library.LooksListActivity.LooksListAdapter.3
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(final CandyLook candyLook) {
                            LooksListActivity.this.clipLibraryManager.addLookToCurrentLooks(i, candyLook);
                            Log.d("LooksAdapter", "position : " + i + "  success : got image " + candyLook.getRenditionPathUrl());
                            if (i == viewHolder.getPositionView() && candyLook.getLibraryId().equals(LooksListActivity.this.getCurrentLibraryId())) {
                                LooksListActivity.mainHandler.post(new Runnable() { // from class: com.adobe.premiereclip.library.LooksListActivity.LooksListAdapter.3.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        LooksListAdapter.this.setLookItem(viewHolder, i, candyLook);
                                        if (candyLook.getLibraryId().equals(LooksListActivity.this.getSelectedLibraryId()) && i == LooksListActivity.this.getSelectedLookPosition()) {
                                            LooksListAdapter.this.setSelectedPosition(i);
                                        }
                                    }
                                });
                            }
                        }
                    }, new IAdobeGenericErrorCallback<AdobeLibraryException>() { // from class: com.adobe.premiereclip.library.LooksListActivity.LooksListAdapter.4
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeLibraryException adobeLibraryException) {
                            Log.d("LooksAdapter", "position : " + i + "error : got error " + adobeLibraryException.getErrorCode().getValue());
                            LooksListActivity.mainHandler.post(new Runnable() { // from class: com.adobe.premiereclip.library.LooksListActivity.LooksListAdapter.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    LooksListAdapter.this.setLookItem(viewHolder, i, null);
                                }
                            });
                        }
                    });
                    return;
                } else {
                    LooksListActivity.mainHandler.post(new Runnable() { // from class: com.adobe.premiereclip.library.LooksListActivity.LooksListAdapter.2
                        @Override // java.lang.Runnable
                        public void run() {
                            LooksListAdapter.this.setLookItem(viewHolder, i, look);
                        }
                    });
                    return;
                }
            }
            final ClipLook clipLook = LocalLooks.getClipLooks().get(i);
            LooksListActivity.mainHandler.post(new Runnable() { // from class: com.adobe.premiereclip.library.LooksListActivity.LooksListAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    LooksListAdapter.this.setLookItem(viewHolder, i, clipLook);
                }
            });
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (!LooksListActivity.this.clipLibraryManager.isSelectedDefaultLooks()) {
                if (LooksListActivity.this.clipLibraryManager.getCurrentLibrary() != null) {
                    int iCountLooksInCurrentLibrary = LooksListActivity.this.clipLibraryManager.countLooksInCurrentLibrary();
                    LooksListActivity.this.checkEmptyLibrary(iCountLooksInCurrentLibrary);
                    return iCountLooksInCurrentLibrary;
                }
                return 0;
            }
            return LocalLooks.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void setLookItem(ViewHolder viewHolder, int i, BaseLook baseLook) {
            if (baseLook != null) {
                viewHolder.holderView.setClickable(true);
                viewHolder.lookLoader.setVisibility(8);
                baseLook.drawThumbnail(this.context, viewHolder.lookThumb);
                viewHolder.lookName.setText(baseLook.getLookName());
                if (LooksListActivity.this.project.getSequence().getLook().getLookId().equals(baseLook.getLookId())) {
                    this.activeLookItemIndex = i;
                    viewHolder.lookFrame.setVisibility(0);
                } else {
                    viewHolder.lookFrame.setVisibility(4);
                }
            } else {
                viewHolder.holderView.setClickable(false);
                viewHolder.lookThumb.setImageDrawable(null);
                viewHolder.lookLoader.setVisibility(0);
                viewHolder.lookName.setText("");
                viewHolder.lookFrame.setVisibility(4);
            }
        }

        public void setSelectedPosition(int i) {
            this.activeLookItemIndex = i;
            if (i >= 0) {
                LooksListActivity.this.lookRecyclerView.smoothScrollToPosition(i);
            }
        }

        public class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
            private View holderView;
            private ImageView lookFrame;
            private ProgressBar lookLoader;
            private TextView lookName;
            private ImageView lookThumb;
            private int mPosition;

            public ViewHolder(View view) {
                super(view);
                this.mPosition = 0;
                view.setOnClickListener(this);
                this.holderView = view;
                this.lookName = (TextView) view.findViewById(R.id.look_item_name);
                this.lookThumb = (ImageView) view.findViewById(R.id.look_item_image);
                this.lookFrame = (ImageView) view.findViewById(R.id.active_look_frame);
                this.lookLoader = (ProgressBar) view.findViewById(R.id.look_loader);
                this.lookThumb.getLayoutParams().height = LooksListActivity.this.lookThumbHeight;
                this.lookName.getLayoutParams().height = LooksListActivity.this.lookNameHeight;
                this.lookFrame.getLayoutParams().height = LooksListActivity.this.lookNameHeight + LooksListActivity.this.lookThumbHeight;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = LooksListAdapter.this.activeLookItemIndex;
                LooksListAdapter.this.activeLookItemIndex = getLayoutPosition();
                LooksListActivity.this.onImageClicked(view, getAdapterPosition());
                LooksListAdapter.this.notifyItemChanged(LooksListAdapter.this.activeLookItemIndex);
                if (i >= 0) {
                    LooksListAdapter.this.notifyItemChanged(i);
                }
            }

            public ImageView getLookThumb() {
                return this.lookThumb;
            }

            public void setPositionView(int i) {
                this.mPosition = i;
            }

            public int getPositionView() {
                return this.mPosition;
            }
        }
    }
}
