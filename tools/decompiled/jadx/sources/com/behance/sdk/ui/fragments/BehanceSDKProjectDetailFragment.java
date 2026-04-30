package com.behance.sdk.ui.fragments;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.ListPopupWindow;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.params.BehanceSDKDeleteProjectCommentAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKFollowUnFollowUserAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectCommentsAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectDetailsAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKPostProjectCommentAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKPostUserSettingsOnServerAsyncTaskParams;
import com.behance.sdk.dto.BehanceSDKShareContentDTO;
import com.behance.sdk.dto.project.BehanceSDKAbstractCommentDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectCommentDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectFeaturedDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectStatsDTO;
import com.behance.sdk.dto.search.BehanceSDKImageDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.dto.search.BehanceSDKUserSettingsOnServerDTO;
import com.behance.sdk.enums.BehanceSDKShareContentType;
import com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment;
import com.behance.sdk.listeners.IBehanceSDKEndlessScrollRecyclerViewListener;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.ui.activities.BehanceSDKProjectDetailActivity;
import com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter;
import com.behance.sdk.ui.adapters.BehanceSDKProjectOwnersListArrayAdapter;
import com.behance.sdk.ui.animations.BehanceSDKFabToBarAnimator;
import com.behance.sdk.ui.components.BehanceSDKEndlessScrollRecyclerView;
import com.behance.sdk.ui.components.BehanceSDKPreCachingLinearLayoutManager;
import com.behance.sdk.ui.customviews.BehanceSDKCommentsView;
import com.behance.sdk.ui.dialogs.BehanceSDKBottomSheetShareDialog;
import com.behance.sdk.ui.dialogs.BehanceSDKGenericAlertDialog;
import com.behance.sdk.ui.dialogs.BehanceSDKGenericAlertWithSingleBtnDialog;
import com.behance.sdk.ui.dialogs.BehanceSDKLoginToProceedUserDialog;
import com.behance.sdk.ui.dialogs.BehanceSDKProjectInfoDialogFragment;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKImageLoaderUtils;
import com.i.a.b.a.b;
import com.i.a.b.f.c;
import com.i.a.b.g;
import java.text.DecimalFormat;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDetailFragment extends Fragment implements View.OnClickListener, BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks, IBehanceSDKEndlessScrollRecyclerViewListener, BehanceSDKProjectDetailRecyclerAdapter.Callbacks, BehanceSDKCommentsView.Callbacks {
    public static final String ARG_PROJECT_ID = "ARG_PROJECT_ID";
    private static final String FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG = "FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG";
    private static final String FRAGMENT_TAG_PROJECT_INFO_DIALOG = "FRAGMENT_TAG_PROJECT_INFO_DIALOG";
    private static final String FRAGMENT_TAG_PROJECT_SHARE_DIALOG = "PROJECT_DETAILS_FRAGMENT_FRAGMENT_TAG_PROJECT_SHARE_DIALOG";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKProjectDetailFragment.class);
    private ActionBar actionBar;
    private TransitionDrawable commentCrossfader;
    private BehanceSDKFabToBarAnimator fabToBarAnimator;
    private Button followButton;
    private BehanceSDKGetProjectDetailsHeadlessFragment getProjectDetailsHeadlessFragment;
    private View headerContainer;
    private View headerStatsFeaturedContainer;
    private BehanceSDKLoginToProceedUserDialog loginToProceedDialog;
    private BehanceSDKProjectDTO mActiveProject;
    private View matureContentBackgroundLayer;
    private BehanceSDKGenericAlertDialog matureContentDialog;
    private g mloader;
    private FloatingActionButton newCommentButton;
    private ImageView postCommentBtn;
    private View postCommentContainer;
    private EditText postCommentEditText;
    private TextureView projectBG;
    private ScrollView projectBGImageScrollContainer;
    private View projectDetailsProgressSpinner;
    private String projectId;
    private BehanceSDKEndlessScrollRecyclerView projectRecycler;
    private BehanceSDKGenericAlertWithSingleBtnDialog restrictedAgeDialog;
    private View rootView;
    private View toolBarContainer;
    private int toolBarScrollDist;
    private View toolBarView;
    private Toolbar toolbar;
    private AlertDialog unFollowUserDialog;
    private boolean commentsContainerOpen = false;
    private int fragNum = -1;
    private int headerOffset = 0;
    private int headerMaxScroll = -1;
    private int toolBarMaxScroll = -1;
    private int toolBarOffset = 0;
    private boolean isLoggedInUserOnlyProjectOwner = false;
    int bgImageHeight = -1;

    public interface Callbacks {
        void onFailureToLoadProjectDetails(Exception exc);

        void onSuccessfulLoadOfProjectDetails(BehanceSDKProjectDTO behanceSDKProjectDTO);
    }

    public static BehanceSDKProjectDetailFragment newInstance(String str, int i) {
        BehanceSDKProjectDetailFragment behanceSDKProjectDetailFragment = new BehanceSDKProjectDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PROJECT_ID, str);
        bundle.putInt("frag_num", i);
        behanceSDKProjectDetailFragment.setArguments(bundle);
        return behanceSDKProjectDetailFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mloader = g.a();
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        this.rootView = layoutInflater.inflate(R.layout.bsdk_fragment_project_detail, viewGroup, false);
        this.headerContainer = this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderContainer);
        this.toolbar = (Toolbar) this.rootView.findViewById(R.id.bsdk_projectDetailsToolbar);
        this.toolbar.setNavigationIcon(R.drawable.bsdk_icon_actionbar_back_button);
        ((AppCompatActivity) getActivity()).setSupportActionBar(this.toolbar);
        this.actionBar = ((AppCompatActivity) getActivity()).getSupportActionBar();
        if (this.actionBar != null) {
            this.actionBar.setDisplayShowTitleEnabled(false);
        }
        this.toolBarContainer = this.rootView.findViewById(R.id.bsdk_projectDetailsToolBarContainer);
        this.toolBarView = this.rootView.findViewById(R.id.bsdk_view_toolbar);
        this.projectDetailsProgressSpinner = this.rootView.findViewById(R.id.bsdk_projectDetailFragmentProgressSpinner);
        this.commentCrossfader = new TransitionDrawable(new Drawable[]{getResources().getDrawable(R.drawable.bsdk_icon_float_comment), new ColorDrawable(getResources().getColor(R.color.bsdk_behance_blue))});
        this.commentCrossfader.setCrossFadeEnabled(true);
        this.newCommentButton = (FloatingActionButton) this.rootView.findViewById(R.id.bsdk_projectDetailFragmentCommentFAB);
        this.postCommentContainer = this.rootView.findViewById(R.id.bsdk_projectDetailsFragmentPostCommentContainer);
        this.postCommentEditText = (EditText) this.rootView.findViewById(R.id.bsdk_projectDetailsFragmentPostCommentET);
        this.postCommentBtn = (ImageView) this.rootView.findViewById(R.id.bsdk_projectDetailsFragmentPostCommentSend);
        this.postCommentBtn.setOnClickListener(this);
        this.postCommentEditText.addTextChangedListener(new TextWatcher() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence.length() == 0) {
                    BehanceSDKProjectDetailFragment.this.postCommentBtn.setEnabled(false);
                    BehanceSDKProjectDetailFragment.this.postCommentBtn.animate().alpha(0.3f).start();
                } else {
                    BehanceSDKProjectDetailFragment.this.postCommentBtn.setEnabled(true);
                    BehanceSDKProjectDetailFragment.this.postCommentBtn.animate().alpha(1.0f).start();
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        });
        this.postCommentBtn.setEnabled(false);
        this.postCommentBtn.animate().alpha(0.5f).start();
        this.postCommentContainer.setVisibility(4);
        this.newCommentButton.setOnClickListener(this);
        this.fabToBarAnimator = BehanceSDKFabToBarAnimator.getInstance(getActivity(), this.newCommentButton, this.postCommentContainer);
        this.projectRecycler = (BehanceSDKEndlessScrollRecyclerView) this.rootView.findViewById(R.id.bsdk_projectDetailsRecycler);
        this.projectRecycler.setLayoutManager(new BehanceSDKPreCachingLinearLayoutManager(getActivity(), 1, false));
        this.projectRecycler.setCallbackListener(this);
        this.projectRecycler.initializeScrollListener((LinearLayoutManager) this.projectRecycler.getLayoutManager());
        this.projectBG = (TextureView) this.rootView.findViewById(R.id.bsdk_projectDetailsBackground);
        this.projectBG.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.2
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                BehanceSDKProjectDetailFragment.this.setupBG();
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        });
        this.projectBGImageScrollContainer = (ScrollView) this.rootView.findViewById(R.id.bsdk_projectDetailsBackgroundImageScrollContainer);
        this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderArtistContainer).setOnClickListener(this);
        this.matureContentBackgroundLayer = this.rootView.findViewById(R.id.bsdk_projectDetailFragmentMatureContentBackgroundLayer);
        this.projectId = "";
        Bundle arguments = getArguments();
        if (arguments != null) {
            bundle = arguments;
        }
        if (bundle != null) {
            this.projectId = bundle.getString(ARG_PROJECT_ID);
            this.fragNum = bundle.getInt("frag_num", -1);
        }
        this.getProjectDetailsHeadlessFragment = (BehanceSDKGetProjectDetailsHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.GET_PROJECT_DETAILS + (this.fragNum == -1 ? "" : Integer.valueOf(this.fragNum)));
        if (this.getProjectDetailsHeadlessFragment == null) {
            this.getProjectDetailsHeadlessFragment = new BehanceSDKGetProjectDetailsHeadlessFragment();
            getActivity().getSupportFragmentManager().beginTransaction().add(this.getProjectDetailsHeadlessFragment, BehanceSDKHeadlessFragmentTags.GET_PROJECT_DETAILS + (this.fragNum == -1 ? "" : Integer.valueOf(this.fragNum))).commit();
        }
        this.getProjectDetailsHeadlessFragment.setCallbacks(this);
        this.rootView.findViewById(R.id.bsdk_projectDetailsToolbarTitle).setOnClickListener(this);
        this.headerStatsFeaturedContainer = this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderStatsFeaturedContainer);
        this.followButton = (Button) this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderFollowButton);
        this.followButton.setOnClickListener(this);
        if (this.getProjectDetailsHeadlessFragment.isGetProjectDetailsAsyncTaskInProgress()) {
            showProjectLoadingProgressBar();
        } else {
            loadProjectDetails(this.projectId);
        }
        return this.rootView;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.bsdk_project_details_view_actions, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                getActivity().onBackPressed();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    private void revealCommentsView() {
        if (!BehanceSDKUserManager.getInstance().isUserLoggedIn()) {
            displayLoginToProceedAlertDialog(getResources().getString(R.string.bsdk_login_to_proceed_comment_user_msg, getActiveProject().getOwners().get(0).getDisplayName()));
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            if (this.fabToBarAnimator != null) {
                this.fabToBarAnimator.fabToBar();
            }
        } else if (!this.commentsContainerOpen) {
            this.newCommentButton.animate().alpha(0.0f).setDuration(150L).start();
            this.newCommentButton.setEnabled(false);
            this.postCommentContainer.setBackgroundColor(getResources().getColor(R.color.bsdk_card_color));
            this.postCommentContainer.setVisibility(0);
            this.postCommentContainer.animate().alpha(1.0f).setDuration(150L).setStartDelay(150L).start();
            this.postCommentContainer.setEnabled(true);
            this.commentsContainerOpen = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void concealCommentsView() {
        ((InputMethodManager) getActivity().getSystemService("input_method")).hideSoftInputFromWindow(this.postCommentEditText.getWindowToken(), 0);
        if (Build.VERSION.SDK_INT >= 21) {
            if (this.fabToBarAnimator != null) {
                this.fabToBarAnimator.barToFab();
            }
        } else if (this.commentsContainerOpen) {
            this.newCommentButton.animate().alpha(1.0f).setDuration(150L).setStartDelay(150L).start();
            this.newCommentButton.setEnabled(true);
            this.postCommentContainer.animate().alpha(0.0f).setDuration(150L).start();
            this.postCommentContainer.setEnabled(false);
            this.commentsContainerOpen = false;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        animateToolbar(true);
    }

    private void loadProjectDetails(String str) {
        setActiveProject(this.getProjectDetailsHeadlessFragment.getActiveProject());
        if (getActiveProject() != null && str.equals(this.getProjectDetailsHeadlessFragment.getActiveProject().getId())) {
            displayProjectDetails(str);
        } else {
            loadProjectFromServer(str, false);
        }
    }

    private void displayProjectDetails(String str) {
        BehanceSDKUserDTO userDTO;
        this.isLoggedInUserOnlyProjectOwner = false;
        if (BehanceSDKUserManager.getInstance().isUserLoggedIn() && (userDTO = BehanceSDKUserManager.getInstance().getUserDTO()) != null) {
            List<BehanceSDKUserDTO> owners = getActiveProject().getOwners();
            if (owners.size() == 1 && owners.get(0).getId() == userDTO.getId()) {
                this.isLoggedInUserOnlyProjectOwner = true;
                getActivity().invalidateOptionsMenu();
            }
        }
        if (this.isLoggedInUserOnlyProjectOwner) {
            this.followButton.setVisibility(8);
        }
        if (!checkForMatureContent(getActiveProject())) {
            this.matureContentBackgroundLayer.setVisibility(4);
        }
        this.newCommentButton.setVisibility(this.mActiveProject.isAllowComments() ? 0 : 8);
        displayProjectModules();
        displayCommentCount();
        loadProjectComments(str, false);
    }

    private void incrementAndDisplayCommentsCount() {
        BehanceSDKProjectStatsDTO stats = this.mActiveProject.getStats();
        int commentsCount = stats.getCommentsCount() + 1;
        if (commentsCount < 0) {
            commentsCount = 0;
        }
        stats.setCommentsCount(commentsCount);
        displayCommentCount();
    }

    private void decrementAndDisplayCommentsCount() {
        BehanceSDKProjectStatsDTO stats = this.mActiveProject.getStats();
        int commentsCount = stats.getCommentsCount() - 1;
        if (commentsCount < 0) {
            commentsCount = 0;
        }
        stats.setCommentsCount(commentsCount);
        displayCommentCount();
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == 1) {
            displayFollowUserBtn();
            for (BehanceSDKUserDTO behanceSDKUserDTO : getActiveProject().getOwners()) {
                if (behanceSDKUserDTO.isCurrentUserFollowing()) {
                    this.getProjectDetailsHeadlessFragment.unFollowUser(behanceSDKUserDTO);
                }
            }
        }
    }

    private void displayCommentCount() {
        ((TextView) this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderStatsComments)).setText(new DecimalFormat("###,###,###,###").format(this.mActiveProject.getStats().getCommentsCount()));
    }

    private void displayProjectModules() {
        BehanceSDKProjectDTO activeProject = getActiveProject();
        if (activeProject != null) {
            populateProjectInfoView(activeProject);
            hideProjectLoadingProgressBar();
            loadActionBarControls();
            setupBG();
            BehanceSDKProjectDetailRecyclerAdapter behanceSDKProjectDetailRecyclerAdapter = new BehanceSDKProjectDetailRecyclerAdapter(getActivity(), activeProject);
            behanceSDKProjectDetailRecyclerAdapter.addComments(this.getProjectDetailsHeadlessFragment.getActiveProjectCommentsList());
            behanceSDKProjectDetailRecyclerAdapter.setMoreToLoad(this.getProjectDetailsHeadlessFragment.isMoreCommentsAvailable());
            if (this.headerContainer.getHeight() > 0) {
                behanceSDKProjectDetailRecyclerAdapter.setHeaderHeight(this.headerContainer.getHeight());
            }
            behanceSDKProjectDetailRecyclerAdapter.setCallbacks(this);
            this.projectRecycler.setAdapter(behanceSDKProjectDetailRecyclerAdapter);
            this.toolBarView.setAlpha(1.0f);
            if (((LinearLayoutManager) this.projectRecycler.getLayoutManager()).findFirstVisibleItemPosition() != 0) {
                this.toolBarContainer.setAlpha(1.0f);
            }
            this.projectRecycler.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.3
                int scroll = 0;

                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                    super.onScrollStateChanged(recyclerView, i);
                    if (i == 0) {
                        if (recyclerView.computeVerticalScrollOffset() < BehanceSDKProjectDetailFragment.this.toolBarScrollDist) {
                            BehanceSDKProjectDetailFragment.this.animateToolbar(true);
                        } else if (BehanceSDKProjectDetailFragment.this.toolBarOffset * 2 < BehanceSDKProjectDetailFragment.this.toolBarScrollDist) {
                            BehanceSDKProjectDetailFragment.this.animateToolbar(true);
                        } else {
                            BehanceSDKProjectDetailFragment.this.animateToolbar(false);
                        }
                    }
                }

                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    super.onScrolled(recyclerView, i, i2);
                    BehanceSDKProjectDetailFragment.this.toolBarOffset += i2;
                    if (BehanceSDKProjectDetailFragment.this.toolBarOffset <= BehanceSDKProjectDetailFragment.this.toolBarScrollDist) {
                        if (BehanceSDKProjectDetailFragment.this.toolBarOffset < 0) {
                            BehanceSDKProjectDetailFragment.this.toolBarOffset = 0;
                        }
                    } else {
                        BehanceSDKProjectDetailFragment.this.toolBarOffset = BehanceSDKProjectDetailFragment.this.toolBarScrollDist;
                    }
                    float height = BehanceSDKProjectDetailFragment.this.toolBarOffset / (BehanceSDKProjectDetailFragment.this.toolBarContainer.getHeight() * 0.75f);
                    if (1.0f - height < 0.0f) {
                        BehanceSDKProjectDetailFragment.this.toolBarContainer.setAlpha(0.0f);
                    } else {
                        BehanceSDKProjectDetailFragment.this.toolBarContainer.setAlpha(1.0f - height);
                    }
                    BehanceSDKProjectDetailFragment.this.headerContainer.animate().translationY(-BehanceSDKProjectDetailFragment.this.toolBarOffset).setDuration(0L).start();
                    this.scroll -= i2;
                    if (BehanceSDKProjectDetailFragment.this.bgImageHeight > 0) {
                        BehanceSDKProjectDetailFragment.this.projectBG.setTranslationY((this.scroll % BehanceSDKProjectDetailFragment.this.bgImageHeight) + BehanceSDKProjectDetailFragment.this.bgImageHeight);
                    } else if (BehanceSDKProjectDetailFragment.this.bgImageHeight == 0) {
                        BehanceSDKProjectDetailFragment.this.projectBGImageScrollContainer.scrollTo(0, -this.scroll);
                    }
                    BehanceSDKProjectDetailFragment.this.concealCommentsView();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateToolbar(boolean z) {
        if (z) {
            this.headerContainer.clearAnimation();
            this.headerContainer.animate().translationY(0.0f).setDuration((long) (Math.abs(this.headerContainer.getTranslationY()) * 3.0f)).setInterpolator(new DecelerateInterpolator(2.0f)).start();
            this.toolBarContainer.animate().alpha(1.0f).setDuration((long) (Math.abs(this.headerContainer.getTranslationY()) * 3.0f)).setInterpolator(new DecelerateInterpolator(1.0f)).start();
            this.toolBarOffset = 0;
            return;
        }
        this.toolBarOffset = this.toolBarScrollDist;
        this.headerContainer.clearAnimation();
        this.headerContainer.animate().translationY(-this.toolBarOffset).setDuration((long) (Math.abs(this.headerContainer.getTranslationY()) * 3.0f)).setInterpolator(new AccelerateInterpolator(2.0f)).start();
        this.toolBarContainer.animate().alpha(0.0f).setDuration((long) (Math.abs(this.headerContainer.getTranslationY()) * 3.0f)).setInterpolator(new AccelerateInterpolator(1.0f)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupBG() {
        if (this.mActiveProject != null) {
            Canvas canvasLockCanvas = this.projectBG.lockCanvas();
            if (canvasLockCanvas != null) {
                canvasLockCanvas.drawColor(this.mActiveProject.getProjectStyles().getBgColor());
                this.projectBG.unlockCanvasAndPost(canvasLockCanvas);
            }
            if (this.mActiveProject.getProjectStyles().getBgImageUrl() != null && !this.mActiveProject.getProjectStyles().getBgImageUrl().isEmpty()) {
                if (this.mActiveProject.getProjectStyles().isBgImageRepeat()) {
                    BehanceSDKImageLoaderUtils.displayImageFromCacheOrLoadFromServer(this.mActiveProject.getProjectStyles().getBgImageUrl(), new ImageView(getActivity()), new c() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.4
                        @Override // com.i.a.b.f.c, com.i.a.b.f.a
                        public void onLoadingComplete(String str, View view, Bitmap bitmap) {
                            if (bitmap.isRecycled()) {
                                BehanceSDKProjectDetailFragment.this.setupBG();
                                return;
                            }
                            int i = (int) (((double) BehanceSDKProjectDetailFragment.this.getResources().getDisplayMetrics().widthPixels) / 8.0d);
                            Bitmap resizedBitmap = BehanceSDKProjectDetailFragment.this.getResizedBitmap(bitmap, i, (int) (((1.0d * ((double) bitmap.getHeight())) / ((double) bitmap.getWidth())) * ((double) i)));
                            Canvas canvasLockCanvas2 = BehanceSDKProjectDetailFragment.this.projectBG.lockCanvas();
                            if (canvasLockCanvas2 != null) {
                                canvasLockCanvas2.drawColor(BehanceSDKProjectDetailFragment.this.mActiveProject.getProjectStyles().getBgColor());
                                for (int height = 0; height < BehanceSDKProjectDetailFragment.this.projectBG.getHeight(); height += resizedBitmap.getHeight()) {
                                    for (int i2 = 0; i2 < BehanceSDKProjectDetailFragment.this.projectBG.getWidth(); i2 += i) {
                                        canvasLockCanvas2.drawBitmap(resizedBitmap, i2, height, (Paint) null);
                                    }
                                }
                                BehanceSDKProjectDetailFragment.this.bgImageHeight = resizedBitmap.getHeight();
                            }
                            BehanceSDKProjectDetailFragment.this.projectBG.unlockCanvasAndPost(canvasLockCanvas2);
                        }

                        @Override // com.i.a.b.f.c, com.i.a.b.f.a
                        public void onLoadingCancelled(String str, View view) {
                        }
                    });
                    return;
                }
                this.projectRecycler.setSaveEnabled(false);
                loadSingleImageBG();
                this.bgImageHeight = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadSingleImageBG() {
        BehanceSDKImageLoaderUtils.displayImageFromCacheOrLoadFromServer(this.mActiveProject.getProjectStyles().getBgImageUrl(), new ImageView(getActivity()), new c() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.5
            boolean firstAttempt = true;

            @Override // com.i.a.b.f.c, com.i.a.b.f.a
            public void onLoadingFailed(String str, View view, b bVar) {
            }

            @Override // com.i.a.b.f.c, com.i.a.b.f.a
            public void onLoadingComplete(String str, View view, Bitmap bitmap) {
                LinearLayout linearLayout = (LinearLayout) BehanceSDKProjectDetailFragment.this.rootView.findViewById(R.id.bsdk_projectDetailsBackgroundImageContainer);
                linearLayout.setPadding(0, BehanceSDKProjectDetailFragment.this.headerContainer.getHeight(), 0, BehanceSDKProjectDetailFragment.this.getResources().getDisplayMetrics().heightPixels);
                int i = BehanceSDKProjectDetailFragment.this.getResources().getDisplayMetrics().widthPixels;
                for (int i2 = 0; i2 < bitmap.getHeight(); i2 += 1000) {
                    int height = i2 + 1000 > bitmap.getHeight() ? bitmap.getHeight() - i2 : 1000;
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, i2, bitmap.getWidth(), height);
                    ImageView imageView = new ImageView(BehanceSDKProjectDetailFragment.this.getActivity());
                    imageView.setLayoutParams(new LinearLayout.LayoutParams(i, (int) (((1.0d * ((double) height)) * ((double) i)) / ((double) bitmap.getWidth()))));
                    imageView.setImageBitmap(bitmapCreateBitmap);
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    linearLayout.addView(imageView);
                }
            }

            @Override // com.i.a.b.f.c, com.i.a.b.f.a
            public void onLoadingCancelled(String str, View view) {
                if (this.firstAttempt) {
                    this.firstAttempt = false;
                    BehanceSDKProjectDetailFragment.this.loadSingleImageBG();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getResizedBitmap(Bitmap bitmap, int i, int i2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i / width, i2 / height);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    private boolean checkForMatureContent(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        if (behanceSDKProjectDTO != null) {
            if (behanceSDKProjectDTO.isMatureContent() && !BehanceSDKProjectDTO.MATURE_CONTENT_ACCESS_ALLOWED.equals(behanceSDKProjectDTO.getMatureAccess())) {
                displayMatureContentDialog();
                return true;
            }
        } else {
            closeProjectActivity();
        }
        return false;
    }

    private void displayMatureContentDialog() {
        String matureAccess = this.mActiveProject.getMatureAccess();
        if (BehanceSDKProjectDTO.MATURE_CONTENT_ACCESS_RESTRICTED_LOGGED_OUT.equals(matureAccess)) {
            this.matureContentDialog = BehanceSDKGenericAlertDialog.getInstance(getActivity(), R.string.bsdk_login_to_proceed_dialog_title, R.string.bsdk_mature_content_dialog_user_not_logged_in_message_text, R.string.bsdk_mature_content_dialog_log_in_button_text, R.string.bsdk_mature_content_alert_go_back_button_text);
            this.matureContentDialog.setCancelable(false);
            this.matureContentDialog.setOnOKBtnClickListener(this);
            this.matureContentDialog.setOnNotOKBtnClickListener(this);
            this.matureContentDialog.show();
            return;
        }
        if (BehanceSDKProjectDTO.MATURE_CONTENT_ACCESS_RESTRICTED_AGE.equals(matureAccess)) {
            this.restrictedAgeDialog = BehanceSDKGenericAlertWithSingleBtnDialog.getInstance(getActivity(), R.string.bsdk_mature_content_alert_title_text, R.string.bsdk_mature_content_res_age_alert_msg_text, R.string.bsdk_mature_content_res_age_back_btn_lbl);
            this.restrictedAgeDialog.setCancelable(false);
            this.restrictedAgeDialog.setBtnClickListener(this);
            this.restrictedAgeDialog.show();
            return;
        }
        this.matureContentDialog = BehanceSDKGenericAlertDialog.getInstance(getActivity(), R.string.bsdk_mature_content_alert_title_text, R.string.bsdk_mature_content_alert_msg_text, R.string.bsdk_mature_content_alert_turn_off_button_text, R.string.bsdk_mature_content_alert_go_back_button_text);
        this.matureContentDialog.setCancelable(false);
        this.matureContentDialog.setOnOKBtnClickListener(this);
        this.matureContentDialog.setOnNotOKBtnClickListener(this);
        this.matureContentDialog.show();
    }

    private void loadActionBarControls() {
        if (getActivity() instanceof BehanceSDKProjectDetailActivity) {
            ((BehanceSDKProjectDetailActivity) getActivity()).onSuccessfulLoadOfProjectDetails(getActiveProject());
        }
    }

    private void loadProjectFromServer(String str, boolean z) {
        loadProjectDetailsFromServer(str);
    }

    private void loadProjectDetailsFromServer(String str) {
        if (this.getProjectDetailsHeadlessFragment.isGetProjectDetailsAsyncTaskInProgress()) {
            showProjectLoadingProgressBar();
            return;
        }
        BehanceSDKGetProjectDetailsAsyncTaskParams behanceSDKGetProjectDetailsAsyncTaskParams = new BehanceSDKGetProjectDetailsAsyncTaskParams();
        boolean zShouldDownloadHDImage = shouldDownloadHDImage();
        boolean z = getResources().getBoolean(R.bool.bsdk_large_tablet);
        behanceSDKGetProjectDetailsAsyncTaskParams.setProjectID(str);
        behanceSDKGetProjectDetailsAsyncTaskParams.setDownloadHD(zShouldDownloadHDImage);
        behanceSDKGetProjectDetailsAsyncTaskParams.setFollowHTMLButtonText(getActivity().getResources().getString(R.string.bsdk_project_detail_fragment_follow_user_html_button_text));
        behanceSDKGetProjectDetailsAsyncTaskParams.setFollowingHTMLButtonText(getActivity().getResources().getString(R.string.bsdk_project_detail_fragment_following_user_html_button_text));
        behanceSDKGetProjectDetailsAsyncTaskParams.setLargeTablet(z);
        this.getProjectDetailsHeadlessFragment.loadProjectDetailsFromServer(behanceSDKGetProjectDetailsAsyncTaskParams);
    }

    private boolean shouldDownloadHDImage() {
        return (getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    private void loadProjectComments(String str, boolean z) {
        if (this.mActiveProject.isAllowComments() && !this.getProjectDetailsHeadlessFragment.isGetProjectCommentsAsyncTaskInProgress()) {
            if (z || this.getProjectDetailsHeadlessFragment.getActiveProjectCommentsList() == null || this.getProjectDetailsHeadlessFragment.getActiveProjectCommentsList().size() <= 0) {
                BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams = new BehanceSDKGetProjectCommentsAsyncTaskParams();
                behanceSDKGetProjectCommentsAsyncTaskParams.setProjectId(str);
                this.getProjectDetailsHeadlessFragment.loadProjectCommentsFromServer(behanceSDKGetProjectCommentsAsyncTaskParams);
            }
        }
    }

    private void loadProjectCommentsNextPageFromServer() {
        if (this.mActiveProject.isAllowComments() && this.getProjectDetailsHeadlessFragment.isMoreCommentsAvailable() && !this.getProjectDetailsHeadlessFragment.isGetProjectCommentsAsyncTaskInProgress() && this.getProjectDetailsHeadlessFragment.getActiveProjectCommentsList() != null && this.getProjectDetailsHeadlessFragment.getActiveProjectCommentsList().size() > 0) {
            BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams = new BehanceSDKGetProjectCommentsAsyncTaskParams();
            behanceSDKGetProjectCommentsAsyncTaskParams.setProjectId(this.projectId);
            this.getProjectDetailsHeadlessFragment.loadProjectCommentsNextPageFromServer(behanceSDKGetProjectCommentsAsyncTaskParams);
        }
    }

    private void showProjectLoadingProgressBar() {
        if (this.projectDetailsProgressSpinner != null) {
            this.projectDetailsProgressSpinner.setVisibility(0);
        }
    }

    private void hideProjectLoadingProgressBar() {
        if (this.projectDetailsProgressSpinner != null) {
            this.projectDetailsProgressSpinner.setVisibility(4);
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onGetProjectDetailsSuccess(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        if (getActivity() != null) {
            if (behanceSDKProjectDTO == null) {
                handleProjectLoadingFailure(null, R.string.bsdk_project_detail_fragment_problem_loading_project_details_msg);
            } else {
                if (behanceSDKProjectDTO.getPublishedDate() > 0) {
                    setActiveProject(behanceSDKProjectDTO);
                    hideProjectLoadingProgressBar();
                    displayProjectDetails(behanceSDKProjectDTO.getId());
                    return;
                }
                handleProjectLoadingFailure(null, R.string.bsdk_project_detail_fragment_problem_loading_project_details_msg);
            }
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onGetProjectDetailsFailure(Exception exc) {
        handleProjectLoadingFailure(exc, R.string.bsdk_project_detail_fragment_problem_loading_project_details_msg);
    }

    private void handleProjectLoadingFailure(Exception exc, int i) {
        if (exc != null) {
            logger.error(exc, "Problem loading project details from server", new Object[0]);
        } else {
            logger.error("Problem loading project details from server", new Object[0]);
        }
        if (getActivity() != null) {
            hideProjectLoadingProgressBar();
            setActiveProject(null);
            if (this.getProjectDetailsHeadlessFragment != null) {
                this.getProjectDetailsHeadlessFragment.setActiveProject(null);
            }
            Toast.makeText(getActivity(), i, 1).show();
            getActivity().finish();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        dismissMatureContentDialog();
        dismissLoginToProceedAlertDialog();
        unlockScreenOrientation();
        super.onDetach();
    }

    private void populateProjectInfoView(final BehanceSDKProjectDTO behanceSDKProjectDTO) {
        String str;
        int id;
        if (behanceSDKProjectDTO != null) {
            if (behanceSDKProjectDTO.getOwners().size() > 1) {
                BehanceSDKUserDTO userDTO = BehanceSDKUserManager.getInstance().getUserDTO();
                if (userDTO == null) {
                    id = -1;
                } else {
                    id = userDTO.getId();
                }
                int i = 0;
                for (BehanceSDKUserDTO behanceSDKUserDTO : behanceSDKProjectDTO.getOwners()) {
                    i = (behanceSDKUserDTO.isCurrentUserFollowing() || behanceSDKUserDTO.getId() == id) ? i + 1 : i;
                }
                this.followButton.setText(i == behanceSDKProjectDTO.getOwners().size() ? R.string.bsdk_unfollow : R.string.bsdk_follow_all);
            } else {
                this.followButton.setText(behanceSDKProjectDTO.getOwners().get(0).isCurrentUserFollowing() ? R.string.bsdk_unfollow : R.string.bsdk_follow);
            }
            DecimalFormat decimalFormat = new DecimalFormat("###,###,###,###");
            TextView textView = (TextView) this.rootView.findViewById(R.id.bsdk_projectDetailsToolbarTitle);
            textView.setPadding(0, 0, getResources().getDimensionPixelSize(R.dimen.bsdk_adapter_project_info_featured_list_container_padding_right) + (Math.min(behanceSDKProjectDTO.getFeatures().size(), 3) * (getResources().getDimensionPixelSize(R.dimen.bsdk_adapter_project_info_featured_list_item_ribbon_image_width_size) + (getResources().getDimensionPixelSize(R.dimen.bsdk_adapter_project_info_featured_list_item_ribbon_image_horizontal_padding) * 2))), 0);
            textView.setText(behanceSDKProjectDTO.getName());
            String displayName = behanceSDKProjectDTO.getOwners().get(0).getDisplayName();
            if (behanceSDKProjectDTO.getOwners().size() == 2) {
                str = displayName + getResources().getString(R.string.bsdk_project_detail_fragment_multiple_owners_more_one, String.valueOf(behanceSDKProjectDTO.getOwners().size() - 1));
            } else {
                str = behanceSDKProjectDTO.getOwners().size() > 2 ? displayName + getResources().getString(R.string.bsdk_project_detail_fragment_multiple_owners_more, String.valueOf(behanceSDKProjectDTO.getOwners().size() - 1)) : displayName;
            }
            ((TextView) this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderArtistName)).setText(str);
            ((TextView) this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderStatsViews)).setText(String.valueOf(decimalFormat.format(behanceSDKProjectDTO.getStats().getViewsCount())));
            ((TextView) this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderStatsAppreciations)).setText(String.valueOf(decimalFormat.format(behanceSDKProjectDTO.getStats().getAppreciationsCount())));
            ((TextView) this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderStatsComments)).setText(String.valueOf(decimalFormat.format(behanceSDKProjectDTO.getStats().getCommentsCount())));
            this.mloader.a(behanceSDKProjectDTO.getOwners().get(0).findProfileImageInIncreasingSizeOrder(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION).getUrl(), (ImageView) this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderAvatar));
            LinearLayout linearLayout = (LinearLayout) this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderFeaturedRibbonsContainer);
            linearLayout.removeAllViews();
            LayoutInflater layoutInflater = (LayoutInflater) getActivity().getSystemService("layout_inflater");
            for (BehanceSDKProjectFeaturedDTO behanceSDKProjectFeaturedDTO : behanceSDKProjectDTO.getFeatures()) {
                View viewInflate = layoutInflater.inflate(R.layout.bsdk_adapter_project_info_featured_list_item, (ViewGroup) linearLayout, false);
                final ImageView imageView = (ImageView) viewInflate.findViewById(R.id.bsdk_projectInfoFeaturedIconImgView);
                this.mloader.a(behanceSDKProjectFeaturedDTO.getSiteRibbonBiggerImage(), new c() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.6
                    @Override // com.i.a.b.f.c, com.i.a.b.f.a
                    public void onLoadingComplete(String str2, View view, Bitmap bitmap) {
                        imageView.setImageBitmap(bitmap);
                    }
                });
                viewInflate.setTag(behanceSDKProjectFeaturedDTO);
                viewInflate.setOnClickListener(this);
                linearLayout.addView(viewInflate);
            }
            this.projectRecycler.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.7
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (Build.VERSION.SDK_INT >= 16) {
                        BehanceSDKProjectDetailFragment.this.projectRecycler.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    } else {
                        BehanceSDKProjectDetailFragment.this.projectRecycler.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }
                    if (BehanceSDKProjectDetailFragment.this.projectRecycler.getAdapter() != null) {
                        ((BehanceSDKProjectDetailRecyclerAdapter) BehanceSDKProjectDetailFragment.this.projectRecycler.getAdapter()).setHeaderHeight(BehanceSDKProjectDetailFragment.this.headerContainer.getHeight());
                        BehanceSDKProjectDetailFragment.this.projectRecycler.getAdapter().notifyItemChanged(0);
                        BehanceSDKProjectDetailFragment.this.checkAndSetHeaderMaxScroll();
                        if (!behanceSDKProjectDTO.getProjectStyles().isBgImageRepeat()) {
                            ((LinearLayout) BehanceSDKProjectDetailFragment.this.rootView.findViewById(R.id.bsdk_projectDetailsBackgroundImageContainer)).setPadding(0, BehanceSDKProjectDetailFragment.this.headerContainer.getHeight(), 0, BehanceSDKProjectDetailFragment.this.getResources().getDisplayMetrics().heightPixels);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndSetHeaderMaxScroll() {
        if (this.toolBarMaxScroll < 0) {
            Resources resources = getResources();
            this.toolBarMaxScroll = this.toolBarContainer.getHeight() - resources.getDimensionPixelSize(R.dimen.bsdk_status_bar_spacer);
            this.toolBarScrollDist = resources.getDimensionPixelSize(R.dimen.bsdk_toolbar_container_height);
        }
        if (this.headerMaxScroll < 0) {
            Resources resources2 = getResources();
            this.headerMaxScroll = this.headerContainer.getHeight() - (resources2.getDimensionPixelSize(R.dimen.bsdk_status_bar_spacer) + resources2.getDimensionPixelSize(R.dimen.bsdk_toolbar_container_height));
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onGetProjectCommentsSuccess(List<BehanceSDKProjectCommentDTO> list, boolean z, BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams) {
        if (getActivity() != null && this.projectRecycler.getAdapter() != null) {
            ((BehanceSDKProjectDetailRecyclerAdapter) this.projectRecycler.getAdapter()).addComments(list);
            if (!z) {
                ((BehanceSDKProjectDetailRecyclerAdapter) this.projectRecycler.getAdapter()).setMoreToLoad(false);
            }
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onGetProjectCommentsFailure(Exception exc, BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams) {
        if (getActivity() != null) {
            Toast.makeText(getActivity(), R.string.bsdk_project_detail_fragment_problem_loading_project_comments_msg, 1).show();
        }
    }

    public BehanceSDKProjectDTO getActiveProject() {
        return this.mActiveProject;
    }

    public void setActiveProject(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        this.mActiveProject = behanceSDKProjectDTO;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.bsdk_projectDetailFragmentCommentFAB) {
            revealCommentsView();
            return;
        }
        if (id == R.id.bsdk_projectDetailsHeaderArtistContainer) {
            handleOwnerViewClick(view);
            return;
        }
        if (id == R.id.bsdk_projectDetailsFragmentPostCommentSend) {
            handlePostCommentClick();
            return;
        }
        if (id == R.id.bsdkGenericAlertDialogNotOKBtn) {
            handleMatureContentGoBackButtonClick();
            return;
        }
        if (id == R.id.bsdkGenericAlertDialogOKBtn) {
            handleMatureContentTurnOffButtonClick();
            return;
        }
        if (id == R.id.bsdk_projectDetailsHeaderFollowButton) {
            handleFollowUnFollowUserClick();
            return;
        }
        if (id == R.id.bsdk_projectDetailsToolbarTitle) {
            if (this.projectRecycler != null && this.projectRecycler.getLayoutManager() != null) {
                if (((LinearLayoutManager) this.projectRecycler.getLayoutManager()).findFirstVisibleItemPosition() > 6) {
                    this.projectRecycler.scrollToPosition(6);
                }
                this.projectRecycler.smoothScrollToPosition(0);
                return;
            }
            return;
        }
        if (view.getTag() instanceof BehanceSDKProjectDTO) {
            try {
                BehanceSDK.getInstance().launchProjectDetailsActivity(getActivity(), (BehanceSDKProjectDTO) view.getTag());
            } catch (Exception e2) {
            }
        } else if (view.getTag() instanceof BehanceSDKUserDTO) {
            launchUserProfile((BehanceSDKUserDTO) view.getTag());
        } else if (view.getTag() instanceof BehanceSDKProjectFeaturedDTO) {
            handleFeatureRibbonClick((BehanceSDKProjectFeaturedDTO) view.getTag());
        }
    }

    private void handleOwnerViewClick(View view) {
        if (this.mActiveProject != null && this.mActiveProject.getOwners() != null) {
            if (this.mActiveProject.getOwners().size() == 1) {
                launchUserProfile(this.mActiveProject.getOwners().get(0));
            } else {
                handleMultipleOwnerClick(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchUserProfile(BehanceSDKUserDTO behanceSDKUserDTO) {
        if (behanceSDKUserDTO != null) {
            launchUrlIntent("http://www.behance.net/" + behanceSDKUserDTO.getUserName() + IOUtils.DIR_SEPARATOR_UNIX);
        }
    }

    private void launchUrlIntent(String str) {
        if (str != null) {
            try {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (ActivityNotFoundException e2) {
            }
        }
    }

    private void handleMoreInfoClick() {
        if (getActiveProject() != null) {
            BehanceSDKProjectInfoDialogFragment behanceSDKProjectInfoDialogFragment = new BehanceSDKProjectInfoDialogFragment();
            FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(FRAGMENT_TAG_PROJECT_INFO_DIALOG);
            if (fragmentFindFragmentByTag != null) {
                fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
            }
            fragmentTransactionBeginTransaction.addToBackStack(null);
            behanceSDKProjectInfoDialogFragment.show(fragmentTransactionBeginTransaction, FRAGMENT_TAG_PROJECT_INFO_DIALOG);
        }
    }

    private void handleShareProjectClick() {
        if (this.mActiveProject != null) {
            launchProjectShareContentDialog(this.mActiveProject, getActivity(), FRAGMENT_TAG_PROJECT_SHARE_DIALOG);
        }
    }

    private void launchProjectShareContentDialog(BehanceSDKProjectDTO behanceSDKProjectDTO, FragmentActivity fragmentActivity, String str) {
        FragmentTransaction fragmentTransactionBeginTransaction;
        if (behanceSDKProjectDTO != null) {
            FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
            FragmentTransaction fragmentTransactionBeginTransaction2 = supportFragmentManager.beginTransaction();
            Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(str);
            if (fragmentFindFragmentByTag != null) {
                fragmentTransactionBeginTransaction2.remove(fragmentFindFragmentByTag).commit();
                fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            } else {
                fragmentTransactionBeginTransaction = fragmentTransactionBeginTransaction2;
            }
            fragmentTransactionBeginTransaction.addToBackStack(null);
            BehanceSDKShareContentDTO behanceSDKShareContentDTO = new BehanceSDKShareContentDTO();
            behanceSDKShareContentDTO.setLongUrlToShare(behanceSDKProjectDTO.getProjectUrl());
            behanceSDKShareContentDTO.setTitle(behanceSDKProjectDTO.getName());
            behanceSDKShareContentDTO.setOwnerName(behanceSDKProjectDTO.getOwners().get(0).getDisplayName());
            behanceSDKShareContentDTO.setTags(behanceSDKProjectDTO.getTags());
            behanceSDKShareContentDTO.setDescription(behanceSDKProjectDTO.getDescription());
            behanceSDKShareContentDTO.setId(behanceSDKProjectDTO.getId());
            behanceSDKShareContentDTO.setOwnerProfileURL(behanceSDKProjectDTO.getOwners().get(0).getProfileUrl());
            BehanceSDKImageDTO behanceSDKImageDTOFindCoverImageInIncreasingSizeOrderAndFallback = behanceSDKProjectDTO.getCovers().findCoverImageInIncreasingSizeOrderAndFallback(404);
            if (behanceSDKImageDTOFindCoverImageInIncreasingSizeOrderAndFallback != null) {
                behanceSDKShareContentDTO.setCoverImageURL(behanceSDKImageDTOFindCoverImageInIncreasingSizeOrderAndFallback.getUrl());
            }
            behanceSDKShareContentDTO.setShortUrlToShare(behanceSDKProjectDTO.getProjectUrl());
            BehanceSDKBottomSheetShareDialog.getInstance(behanceSDKShareContentDTO, BehanceSDKShareContentType.PROJECT).show(fragmentTransactionBeginTransaction, str);
        }
    }

    private void handleFeatureRibbonClick(BehanceSDKProjectFeaturedDTO behanceSDKProjectFeaturedDTO) {
        if (behanceSDKProjectFeaturedDTO != null && !behanceSDKProjectFeaturedDTO.getSiteDomain().startsWith(BehanceSDKConstants.BEHANCE_DOMAIN_NAME)) {
            launchUrlIntent(behanceSDKProjectFeaturedDTO.getSiteUrl());
        }
    }

    private void handleMatureContentTurnOffButtonClick() {
        lockScreenOrientation();
        dismissMatureContentDialog();
        showProjectLoadingProgressBar();
        BehanceSDKPostUserSettingsOnServerAsyncTaskParams behanceSDKPostUserSettingsOnServerAsyncTaskParams = new BehanceSDKPostUserSettingsOnServerAsyncTaskParams();
        BehanceSDKUserSettingsOnServerDTO behanceSDKUserSettingsOnServerDTO = new BehanceSDKUserSettingsOnServerDTO();
        behanceSDKUserSettingsOnServerDTO.setSafeBrowsingOn(false);
        behanceSDKPostUserSettingsOnServerAsyncTaskParams.setSettings(behanceSDKUserSettingsOnServerDTO);
        this.getProjectDetailsHeadlessFragment.setMatureContentAccessForUser(behanceSDKPostUserSettingsOnServerAsyncTaskParams);
    }

    private void handleMatureContentGoBackButtonClick() {
        closeProjectActivity();
    }

    private void dismissMatureContentDialog() {
        if (this.matureContentDialog != null && this.matureContentDialog.isShowing()) {
            this.matureContentDialog.dismiss();
        }
        if (this.restrictedAgeDialog != null && this.restrictedAgeDialog.isShowing()) {
            this.restrictedAgeDialog.dismiss();
        }
        this.matureContentBackgroundLayer.setVisibility(4);
    }

    private void handleMultipleOwnerClick(View view) {
        final ListPopupWindow listPopupWindow = new ListPopupWindow(getActivity());
        listPopupWindow.setWidth(-2);
        listPopupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.bsdk_card_color)));
        listPopupWindow.setAnchorView(view);
        listPopupWindow.setAdapter(new BehanceSDKProjectOwnersListArrayAdapter(getActivity(), R.layout.bsdk_adapter_project_detail_owner_list_item, getActiveProject().getOwners()));
        listPopupWindow.setModal(true);
        listPopupWindow.setVerticalOffset(-view.getHeight());
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                listPopupWindow.dismiss();
                BehanceSDKProjectDetailFragment.this.launchUserProfile(BehanceSDKProjectDetailFragment.this.getActiveProject().getOwners().get(i));
            }
        });
        listPopupWindow.show();
    }

    private void handlePostCommentClick() {
        concealCommentsView();
        String string = this.postCommentEditText.getText().toString();
        this.postCommentEditText.setText("");
        String strTrim = string.trim();
        if (strTrim.length() > 0) {
            if (this.mActiveProject != null && !this.getProjectDetailsHeadlessFragment.isPostProjectCommentTaskInProgress()) {
                this.getProjectDetailsHeadlessFragment.postComment(strTrim, this.mActiveProject.getId());
                return;
            }
            return;
        }
        Toast.makeText(getActivity(), R.string.bsdk_project_detail_fragment_post_comment_empty_error_msg, 0).show();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onPostCommentSuccess(int i, BehanceSDKPostProjectCommentAsyncTaskParams behanceSDKPostProjectCommentAsyncTaskParams) {
        if (getActivity() != null) {
            if (i > 0 && this.mActiveProject != null) {
                BehanceSDKProjectCommentDTO behanceSDKProjectCommentDTO = new BehanceSDKProjectCommentDTO();
                behanceSDKProjectCommentDTO.setContent(behanceSDKPostProjectCommentAsyncTaskParams.getCommentContent());
                behanceSDKProjectCommentDTO.setUser(BehanceSDKUserManager.getInstance().getUserDTO());
                behanceSDKProjectCommentDTO.setCreatedDate(System.currentTimeMillis() / 1000);
                behanceSDKProjectCommentDTO.setId(String.valueOf(i));
                ((BehanceSDKProjectDetailRecyclerAdapter) this.projectRecycler.getAdapter()).newCommentPosted(behanceSDKProjectCommentDTO);
                this.getProjectDetailsHeadlessFragment.setActiveProjectComments(((BehanceSDKProjectDetailRecyclerAdapter) this.projectRecycler.getAdapter()).getProjectComments());
                incrementAndDisplayCommentsCount();
                return;
            }
            if (behanceSDKPostProjectCommentAsyncTaskParams.isUserVerified()) {
                Toast.makeText(getActivity(), R.string.bsdk_project_detail_fragment_post_comment_failure_msg, 1).show();
            } else {
                Toast.makeText(getActivity(), R.string.bsdk_failure_msg_unverifiedUser, 1).show();
            }
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onPostCommentFailure(Exception exc) {
        if (getActivity() != null) {
            logger.error(exc, "Problem posting comment", new Object[0]);
            Toast.makeText(getActivity(), R.string.bsdk_project_detail_fragment_post_comment_failure_msg, 1).show();
        }
    }

    private void handleFollowUnFollowUserClick() {
        int id;
        String string;
        BehanceSDKUserManager behanceSDKUserManager = BehanceSDKUserManager.getInstance();
        if (getActiveProject() != null && getActiveProject().getOwners() != null) {
            if (getActiveProject().getOwners().size() == 1) {
                BehanceSDKUserDTO behanceSDKUserDTO = getActiveProject().getOwners().get(0);
                if (getActiveProject() != null && behanceSDKUserDTO != null && !this.getProjectDetailsHeadlessFragment.isFollowUnFollowTaskInProgress()) {
                    if (behanceSDKUserManager.isUserLoggedIn()) {
                        followUnfollowUser(behanceSDKUserDTO);
                        return;
                    }
                    String displayName = getActiveProject().getOwners().get(0).getDisplayName();
                    if (getActiveProject().getOwners().size() == 2) {
                        displayName = displayName + getResources().getString(R.string.bsdk_project_detail_fragment_multiple_owners_more_one, String.valueOf(getActiveProject().getOwners().size() - 1));
                    } else if (getActiveProject().getOwners().size() > 2) {
                        displayName = displayName + getResources().getString(R.string.bsdk_project_detail_fragment_multiple_owners_more, String.valueOf(getActiveProject().getOwners().size() - 1));
                    }
                    displayLoginToProceedAlertDialog(getResources().getString(R.string.bsdk_login_to_proceed_follow_user_msg, displayName));
                    return;
                }
                return;
            }
            if (behanceSDKUserManager.isUserLoggedIn()) {
                int size = getActiveProject().getOwners().size();
                BehanceSDKUserDTO userDTO = BehanceSDKUserManager.getInstance().getUserDTO();
                if (userDTO == null) {
                    id = -1;
                } else {
                    id = userDTO.getId();
                }
                int i = 0;
                for (BehanceSDKUserDTO behanceSDKUserDTO2 : getActiveProject().getOwners()) {
                    if (behanceSDKUserDTO2.isCurrentUserFollowing()) {
                        i++;
                    } else if (behanceSDKUserDTO2.getId() == id) {
                        size--;
                    }
                    i = i;
                    size = size;
                }
                if (i == size) {
                    if (size == 1) {
                        if (getActiveProject().getOwners().get(0).getId() != id) {
                            string = getResources().getString(R.string.bsdk_follow_user_view_unfollow_user_dialog_title, getActiveProject().getOwners().get(0).getDisplayName());
                        } else {
                            string = getResources().getString(R.string.bsdk_follow_user_view_unfollow_user_dialog_title, getActiveProject().getOwners().get(1).getDisplayName());
                        }
                    } else {
                        string = getResources().getString(R.string.bsdk_follow_user_view_unfollow_multiple_users_dialog_title, String.valueOf(size));
                    }
                    createUnFollowUserAlertDialog();
                    this.unFollowUserDialog.setMessage(string);
                    this.unFollowUserDialog.show();
                    return;
                }
                for (BehanceSDKUserDTO behanceSDKUserDTO3 : getActiveProject().getOwners()) {
                    if (getActiveProject() != null && behanceSDKUserDTO3 != null && !behanceSDKUserDTO3.isCurrentUserFollowing() && behanceSDKUserDTO3.getId() != id) {
                        this.getProjectDetailsHeadlessFragment.followUser(behanceSDKUserDTO3);
                    }
                }
                displayUnFollowUserBtn();
                return;
            }
            displayLoginToProceedAlertDialog(getResources().getString(R.string.bsdk_login_to_proceed_follow_user_msg, getActiveProject().getOwners().get(0).getDisplayName()));
        }
    }

    private void followUnfollowUser(BehanceSDKUserDTO behanceSDKUserDTO) {
        if (behanceSDKUserDTO.isCurrentUserFollowing()) {
            String string = getResources().getString(R.string.bsdk_follow_user_view_unfollow_user_dialog_title, behanceSDKUserDTO.getDisplayName());
            createUnFollowUserAlertDialog();
            this.unFollowUserDialog.setMessage(string);
            this.unFollowUserDialog.show();
            return;
        }
        displayUnFollowUserBtn();
        this.getProjectDetailsHeadlessFragment.followUser(behanceSDKUserDTO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUnFollowUserDialogOkClick() {
        displayFollowUserBtn();
        for (BehanceSDKUserDTO behanceSDKUserDTO : getActiveProject().getOwners()) {
            if (behanceSDKUserDTO.isCurrentUserFollowing()) {
                this.getProjectDetailsHeadlessFragment.unFollowUser(behanceSDKUserDTO);
            }
        }
    }

    private void displayFollowUserBtn() {
        this.followButton.setText(getActiveProject().getOwners().size() == 1 ? R.string.bsdk_follow : R.string.bsdk_follow_all);
    }

    private void displayUnFollowUserBtn() {
        this.followButton.setText(R.string.bsdk_unfollow);
    }

    private void createUnFollowUserAlertDialog() {
        if (this.unFollowUserDialog == null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity(), R.style.BsdkDialogTheme);
            builder.setPositiveButton(R.string.bsdk_follow_user_view_unfollow_user_dialog_ok_btn_label, new DialogInterface.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    BehanceSDKProjectDetailFragment.this.handleUnFollowUserDialogOkClick();
                }
            });
            builder.setNegativeButton((CharSequence) null, (DialogInterface.OnClickListener) null);
            this.unFollowUserDialog = builder.create();
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onFollowUnFollowUserSuccess(boolean z, BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams) {
        String string;
        if (getActivity() != null) {
            for (BehanceSDKUserDTO behanceSDKUserDTO : getActiveProject().getOwners()) {
                if (behanceSDKUserDTO != null && behanceSDKUserDTO.getId() == behanceSDKFollowUnFollowUserAsyncTaskParams.getUserDTO().getId()) {
                    if (z) {
                        if (behanceSDKFollowUnFollowUserAsyncTaskParams.isFollowUser()) {
                            behanceSDKUserDTO.setCurrentUserFollowing(true);
                            displayUnFollowUserBtn();
                        } else {
                            behanceSDKUserDTO.setCurrentUserFollowing(false);
                            displayFollowUserBtn();
                        }
                    } else {
                        if (behanceSDKFollowUnFollowUserAsyncTaskParams.isFollowUser()) {
                            displayFollowUserBtn();
                            string = getResources().getString(R.string.bsdk_follow_user_view_follow_user_failure_msg, behanceSDKUserDTO.getDisplayName());
                        } else {
                            displayUnFollowUserBtn();
                            string = getResources().getString(R.string.bsdk_follow_user_view_unfollow_user_failure_msg, behanceSDKUserDTO.getDisplayName());
                        }
                        Toast.makeText(getActivity(), string, 1).show();
                    }
                }
            }
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onFollowUnFollowUserFailure(Exception exc, BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams) {
        String string;
        logger.error(exc, "Problem following user [User id - %d]", Integer.valueOf(behanceSDKFollowUnFollowUserAsyncTaskParams.getUserDTO().getId()));
        if (getActivity() != null) {
            for (BehanceSDKUserDTO behanceSDKUserDTO : getActiveProject().getOwners()) {
                if (behanceSDKUserDTO != null && behanceSDKUserDTO.getId() == behanceSDKFollowUnFollowUserAsyncTaskParams.getUserDTO().getId()) {
                    if (behanceSDKFollowUnFollowUserAsyncTaskParams.isFollowUser()) {
                        displayFollowUserBtn();
                        string = getResources().getString(R.string.bsdk_follow_user_view_follow_user_failure_msg, behanceSDKUserDTO.getDisplayName());
                    } else {
                        displayUnFollowUserBtn();
                        string = getResources().getString(R.string.bsdk_follow_user_view_unfollow_user_failure_msg, behanceSDKUserDTO.getDisplayName());
                    }
                    Toast.makeText(getActivity(), string, 1).show();
                }
            }
        }
    }

    private void closeProjectActivity() {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onPostSettingsTaskSuccess(boolean z, BehanceSDKPostUserSettingsOnServerAsyncTaskParams behanceSDKPostUserSettingsOnServerAsyncTaskParams) {
        if (getActivity() != null) {
            if (!z) {
                logger.error("Problem saving User settings on server", new Object[0]);
                Toast.makeText(getActivity(), R.string.bsdk_app_settings_dialog_save_user_settings_error_msg, 1).show();
            } else {
                Toast.makeText(getActivity(), R.string.bsdk_project_detail_fragment_successfully_stored_user_settings, 1).show();
                hideProjectLoadingProgressBar();
                unlockScreenOrientation();
            }
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onPostSettingsTaskFailure(Exception exc) {
        if (getActivity() != null) {
            logger.error("Problem saving User settings on server", new Object[0]);
            Toast.makeText(getActivity(), R.string.bsdk_app_settings_dialog_save_user_settings_error_msg, 1).show();
            unlockScreenOrientation();
            closeProjectActivity();
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onAppreciateProjectAsyncTaskSuccess(boolean z) {
        ((TextView) this.rootView.findViewById(R.id.bsdk_projectDetailsHeaderStatsAppreciations)).setText(String.valueOf(new DecimalFormat("###,###,###,###").format(((double) getActiveProject().getStats().getAppreciationsCount()) + 1.0d)));
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onAppreciateProjectAsyncTaskFailure(Exception exc) {
    }

    private void unlockScreenOrientation() {
        if (getActivity() != null && getResources().getBoolean(R.bool.bsdk_big_screen)) {
            getActivity().setRequestedOrientation(-1);
        }
    }

    private void lockScreenOrientation() {
        if (getActivity() != null && getResources().getBoolean(R.bool.bsdk_big_screen)) {
            int rotation = getActivity().getWindowManager().getDefaultDisplay().getRotation();
            Point displaySize = getDisplaySize();
            int i = displaySize.y;
            int i2 = displaySize.x;
            switch (rotation) {
                case 1:
                    if (i2 > i) {
                        getActivity().setRequestedOrientation(0);
                    } else {
                        getActivity().setRequestedOrientation(9);
                    }
                    break;
                case 2:
                    if (i > i2) {
                        getActivity().setRequestedOrientation(9);
                    } else {
                        getActivity().setRequestedOrientation(8);
                    }
                    break;
                case 3:
                    if (i2 > i) {
                        getActivity().setRequestedOrientation(8);
                    } else {
                        getActivity().setRequestedOrientation(1);
                    }
                    break;
                default:
                    if (i > i2) {
                        getActivity().setRequestedOrientation(1);
                    } else {
                        getActivity().setRequestedOrientation(0);
                    }
                    break;
            }
        }
    }

    private Point getDisplaySize() {
        Point point = new Point();
        Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
        if (Build.VERSION.SDK_INT < 13) {
            point.y = defaultDisplay.getHeight();
            point.x = defaultDisplay.getWidth();
        } else {
            defaultDisplay.getSize(point);
        }
        return point;
    }

    protected void onNetworkConnectivityAvailable() {
        loadProjectDetails(this.projectId);
    }

    private void displayLoginToProceedAlertDialog(String str) {
        this.loginToProceedDialog = BehanceSDKLoginToProceedUserDialog.getLoginToProceedDialogInstance(getActivity(), str);
        this.loginToProceedDialog.show();
    }

    private void dismissLoginToProceedAlertDialog() {
        if (this.loginToProceedDialog != null && this.loginToProceedDialog.isShowing()) {
            this.loginToProceedDialog.dismiss();
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.Callbacks, com.behance.sdk.ui.customviews.BehanceSDKCommentsView.Callbacks
    public void onDeleteCommentRequested(BehanceSDKAbstractCommentDTO behanceSDKAbstractCommentDTO) {
        if (behanceSDKAbstractCommentDTO != null && this.mActiveProject != null) {
            List<BehanceSDKProjectCommentDTO> activeProjectCommentsList = this.getProjectDetailsHeadlessFragment.getActiveProjectCommentsList();
            if (activeProjectCommentsList != null && !activeProjectCommentsList.isEmpty()) {
                activeProjectCommentsList.remove(behanceSDKAbstractCommentDTO);
            }
            decrementAndDisplayCommentsCount();
            this.getProjectDetailsHeadlessFragment.deleteComment(this.mActiveProject.getId(), behanceSDKAbstractCommentDTO.getId());
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.Callbacks
    public void onProjectAppreciated() {
        handleAppreciateButtonClick();
    }

    private void handleAppreciateButtonClick() {
        if (this.getProjectDetailsHeadlessFragment != null) {
            this.getProjectDetailsHeadlessFragment.appreciateProject(this.mActiveProject.getId());
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.Callbacks
    public void onProjectInfoClicked() {
        handleMoreInfoClick();
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.Callbacks
    public void onProjectShareClick() {
        handleShareProjectClick();
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectDetailRecyclerAdapter.Callbacks
    public void onImageClicked(int i) {
        BehanceSDKImageDisplayDialogFragment behanceSDKImageDisplayDialogFragment = BehanceSDKImageDisplayDialogFragment.getInstance(this.getProjectDetailsHeadlessFragment.getImageURLsArray(), i);
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG);
        if (fragmentFindFragmentByTag != null) {
            fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
        }
        fragmentTransactionBeginTransaction.addToBackStack(null);
        behanceSDKImageDisplayDialogFragment.show(fragmentTransactionBeginTransaction, FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG);
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onDeleteCommentSuccess(boolean z, BehanceSDKDeleteProjectCommentAsyncTaskParams behanceSDKDeleteProjectCommentAsyncTaskParams) {
        if (getActivity() != null) {
            if (z && this.mActiveProject != null) {
                this.getProjectDetailsHeadlessFragment.setActiveProjectComments(((BehanceSDKProjectDetailRecyclerAdapter) this.projectRecycler.getAdapter()).getProjectComments());
            } else {
                Toast.makeText(getActivity(), R.string.bsdk_project_detail_fragment_delete_comment_failure_msg, 1).show();
            }
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment.Callbacks
    public void onDeleteCommentFailure(Exception exc, BehanceSDKDeleteProjectCommentAsyncTaskParams behanceSDKDeleteProjectCommentAsyncTaskParams) {
        if (getActivity() != null) {
            logger.error(exc, "Problem deleting comment", new Object[0]);
            Toast.makeText(getActivity(), R.string.bsdk_project_detail_fragment_delete_comment_failure_msg, 1).show();
        }
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKEndlessScrollRecyclerViewListener
    public void loadNextPage() {
        loadProjectCommentsNextPageFromServer();
    }
}
