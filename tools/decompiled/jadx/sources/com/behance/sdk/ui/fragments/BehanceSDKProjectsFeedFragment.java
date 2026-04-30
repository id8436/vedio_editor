package com.behance.sdk.ui.fragments;

import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.params.BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectsAsyncTaskParams;
import com.behance.sdk.datamanager.BehanceSDKProjectsDataManager;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.search.BehanceSDKProjectFiltersSelected;
import com.behance.sdk.enums.BehanceSDKCuratedGalleryType;
import com.behance.sdk.fragments.headless.BehanceSDKGetProjectsHeadlessFragment;
import com.behance.sdk.listeners.IBehanceSDKEndlessScrollRecyclerViewListener;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.ui.adapters.BehanceSDKProjectRecyclerViewAdapter;
import com.behance.sdk.ui.components.BehanceSDKEndlessScrollRecyclerView;
import com.behance.sdk.ui.customviews.BehanceSDKEmptyStatesView;
import com.behance.sdk.ui.decorators.BehanceSDKSpaceItemDecorationGrid;
import com.behance.sdk.util.BehanceSDKColumnCountUtil;
import com.behance.sdk.util.BehanceSDKUtils;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectsFeedFragment extends Fragment implements SwipeRefreshLayout.OnRefreshListener, BehanceSDKGetProjectsHeadlessFragment.Callbacks, IBehanceSDKEndlessScrollRecyclerViewListener {
    public static final String DISCOVER_PROJECTS_KEY_SELECTED_FILTERS = "DISCOVER_PROJECTS_KEY_SELECTED_FILTERS";
    public static final String PROJECT_FEED_GALLERY_ID = "PROJECT_FEED_GALLERY_ID";
    public static final String PROJECT_FEED_GALLERY_TYPE = "PROJECT_FEED_GALLERY_TYPE";
    public static final String PROJECT_FEED_TYPE = "PROJECT_FEED_TYPE";
    private static final String STATE_LOADED_PROJECTS_PAGE_NUMBER = "STATE_LOADED_PAGE_NUMBER";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKProjectsFeedFragment.class);
    protected BehanceSDKEmptyStatesView emptyStatesView;
    private int galleryID;
    private BehanceSDKCuratedGalleryType galleryType;
    private BehanceSDKGetProjectsHeadlessFragment getProjectsHeadlessFragment;
    private BehanceSDKProjectsDataManager projectsDataManager;
    private boolean projectsLoadingInProgress;
    private BehanceSDKEndlessScrollRecyclerView projectsRecyclerView;
    private SwipeRefreshLayout projectsSwipeRefresh;
    private View rootView;
    private BehanceSDKProjectFiltersSelected selectedFilters;
    private int lastLoadedProjectsPageNumber = 0;
    private boolean isProjectTypeGallery = false;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        this.rootView = layoutInflater.inflate(R.layout.bsdk_fragment_projects_feed, viewGroup, false);
        this.projectsDataManager = BehanceSDKProjectsDataManager.getInstance();
        this.getProjectsHeadlessFragment = (BehanceSDKGetProjectsHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(getHeadlessFragmentTag());
        if (this.getProjectsHeadlessFragment == null) {
            this.getProjectsHeadlessFragment = getHeadlessFragmentNewInstance();
            getActivity().getSupportFragmentManager().beginTransaction().add(this.getProjectsHeadlessFragment, getHeadlessFragmentTag()).commit();
        }
        this.getProjectsHeadlessFragment.setCallbacks(this);
        this.emptyStatesView = (BehanceSDKEmptyStatesView) this.rootView.findViewById(R.id.bsdk_discoverProjectsEmptyStatesView);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.selectedFilters = new BehanceSDKProjectFiltersSelected();
        if (bundle != null) {
            this.lastLoadedProjectsPageNumber = bundle.getInt(STATE_LOADED_PROJECTS_PAGE_NUMBER, 0);
            this.isProjectTypeGallery = bundle.getBoolean(PROJECT_FEED_TYPE, false);
            if (this.isProjectTypeGallery) {
                this.galleryType = (BehanceSDKCuratedGalleryType) bundle.get(PROJECT_FEED_GALLERY_TYPE);
                this.galleryID = bundle.getInt(PROJECT_FEED_GALLERY_ID);
            } else {
                BehanceSDKProjectFiltersSelected behanceSDKProjectFiltersSelected = (BehanceSDKProjectFiltersSelected) bundle.getSerializable(DISCOVER_PROJECTS_KEY_SELECTED_FILTERS);
                if (behanceSDKProjectFiltersSelected != null) {
                    this.selectedFilters = behanceSDKProjectFiltersSelected;
                }
            }
        }
        Resources resources = getResources();
        this.projectsSwipeRefresh = (SwipeRefreshLayout) this.rootView.findViewById(R.id.bsdk_discoverProjectsSwipeRefresh);
        this.projectsSwipeRefresh.setOnRefreshListener(this);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.bsdk_toolbar_height) + resources.getDimensionPixelSize(R.dimen.bsdk_status_bar_spacer) + resources.getDimensionPixelSize(R.dimen.bsdk_card_view_vertical_spacing);
        this.projectsSwipeRefresh.setProgressViewOffset(false, -dimensionPixelSize, dimensionPixelSize);
        this.projectsSwipeRefresh.setColorSchemeResources(R.color.bsdk_behance_blue);
        this.projectsRecyclerView = (BehanceSDKEndlessScrollRecyclerView) this.rootView.findViewById(R.id.bsdk_discoverProjectsRecycler);
        final int discoverProjectColumnCount = BehanceSDKColumnCountUtil.getDiscoverProjectColumnCount(getActivity());
        GridLayoutManager gridLayoutManager = new GridLayoutManager((Context) getActivity(), discoverProjectColumnCount, 1, false);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectsFeedFragment.1
            @Override // android.support.v7.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i) {
                if (BehanceSDKProjectsFeedFragment.this.projectsRecyclerView.getAdapter() == null || !(BehanceSDKProjectsFeedFragment.this.projectsRecyclerView.getAdapter() instanceof BehanceSDKProjectRecyclerViewAdapter)) {
                    return 1;
                }
                switch (((BehanceSDKProjectRecyclerViewAdapter) BehanceSDKProjectsFeedFragment.this.projectsRecyclerView.getAdapter()).getItemViewType(i)) {
                }
                return 1;
            }
        });
        this.projectsRecyclerView.setLayoutManager(gridLayoutManager);
        this.projectsRecyclerView.addItemDecoration(new BehanceSDKSpaceItemDecorationGrid(getActivity()));
        this.projectsRecyclerView.setCallbackListener(this);
        this.projectsRecyclerView.initializeScrollListener(gridLayoutManager);
        this.projectsRecyclerView.setPadding(this.projectsRecyclerView.getPaddingLeft(), this.projectsRecyclerView.getPaddingTop(), this.projectsRecyclerView.getPaddingRight(), this.projectsRecyclerView.getPaddingBottom() + BehanceSDKUtils.getTranslucentNavHeight(getActivity()));
        if (this.getProjectsHeadlessFragment.isGetProjectsAsyncTaskInProgress()) {
            showProgressBar();
            setProjectsRecyclerAdapter(false);
        } else {
            loadProjects();
        }
        return this.rootView;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
    }

    public String getHeadlessFragmentTag() {
        return BehanceSDKHeadlessFragmentTags.GET_PROJECTS;
    }

    protected BehanceSDKGetProjectsHeadlessFragment getHeadlessFragment() {
        return this.getProjectsHeadlessFragment;
    }

    protected BehanceSDKGetProjectsHeadlessFragment getHeadlessFragmentNewInstance() {
        return new BehanceSDKGetProjectsHeadlessFragment();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.projectsSwipeRefresh.setRefreshing(false);
    }

    protected void loadProjects() {
        if (getProjectsList().size() <= 0) {
            loadProjectsFromServer();
        } else {
            setProjectsRecyclerAdapter(false);
            hideProgressBar(true);
        }
    }

    protected List<BehanceSDKProjectDTO> getProjectsList() {
        return this.projectsDataManager.getProjects();
    }

    protected boolean isDeviceOnline() {
        NetworkInfo activeNetworkInfo;
        return (getActivity() == null || (activeNetworkInfo = ((ConnectivityManager) getActivity().getSystemService("connectivity")).getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) ? false : true;
    }

    protected void loadProjectsFromServer() {
        if (this.isProjectTypeGallery) {
            loadGalleriesProjectsFromServer(false);
        } else {
            loadDiscoverProjectsFromServer(false);
        }
    }

    private void loadDiscoverProjectsFromServer(boolean z) {
        if (isDeviceOnline() && (!this.projectsLoadingInProgress || z)) {
            this.lastLoadedProjectsPageNumber = 1;
            BehanceSDKGetProjectsAsyncTaskParams asyncTaskParams = getAsyncTaskParams();
            setFilters(asyncTaskParams);
            this.getProjectsHeadlessFragment.loadProjectsFromServer(asyncTaskParams);
            showProgressBar();
            return;
        }
        hideProgressBar(false);
    }

    private void loadGalleriesProjectsFromServer(boolean z) {
        if (isDeviceOnline() && (!this.projectsLoadingInProgress || z)) {
            this.lastLoadedProjectsPageNumber = 1;
            BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams galleriesAsyncTaskParams = getGalleriesAsyncTaskParams();
            galleriesAsyncTaskParams.setCuratedGalleryId(this.galleryID);
            galleriesAsyncTaskParams.setGalleryType(this.galleryType);
            this.getProjectsHeadlessFragment.loadGalleryProjectsFromServer(galleriesAsyncTaskParams);
            showProgressBar();
            return;
        }
        hideProgressBar(false);
    }

    protected BehanceSDKGetProjectsAsyncTaskParams getAsyncTaskParams() {
        BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams = new BehanceSDKGetProjectsAsyncTaskParams();
        behanceSDKGetProjectsAsyncTaskParams.setPageNumber(this.lastLoadedProjectsPageNumber);
        behanceSDKGetProjectsAsyncTaskParams.setPageSize(20);
        return behanceSDKGetProjectsAsyncTaskParams;
    }

    protected BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams getGalleriesAsyncTaskParams() {
        BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams = new BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams();
        behanceSDKGetCuratedGalleryProjectsAsyncTaskParams.setPageNumber(this.lastLoadedProjectsPageNumber);
        behanceSDKGetCuratedGalleryProjectsAsyncTaskParams.setPageSize(20);
        return behanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
    }

    private void setFilters(BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        behanceSDKGetProjectsAsyncTaskParams.setSortOption(this.selectedFilters.getSortOption());
        BehanceSDKCreativeFieldDTO creativeFieldDTO = this.selectedFilters.getCreativeFieldDTO();
        if (creativeFieldDTO != null && !BehanceSDKCreativeFieldDTO.ALL_CREATIVE_FIELDS_ID.equals(creativeFieldDTO.getId())) {
            behanceSDKGetProjectsAsyncTaskParams.setFieldId(creativeFieldDTO.getId());
        }
        behanceSDKGetProjectsAsyncTaskParams.setSearchString(this.selectedFilters.getSearchString());
        setLocationFilters(behanceSDKGetProjectsAsyncTaskParams);
    }

    private void setLocationFilters(BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        BehanceSDKCountryDTO countryDTO = this.selectedFilters.getCountryDTO();
        if (countryDTO != null && !BehanceSDKCountryDTO.WORLD_WIDE_COUNTRY_ID.equals(countryDTO.getId())) {
            behanceSDKGetProjectsAsyncTaskParams.setCountry(countryDTO.getId());
            BehanceSDKStateDTO stateDTO = this.selectedFilters.getStateDTO();
            if (stateDTO != null && !BehanceSDKStateDTO.ALL_STATES_ID.equals(stateDTO.getId())) {
                behanceSDKGetProjectsAsyncTaskParams.setState(stateDTO.getDisplayName());
            }
            BehanceSDKCityDTO cityDTO = this.selectedFilters.getCityDTO();
            if (cityDTO != null && !BehanceSDKCityDTO.ALL_CITIES_ID.equals(cityDTO.getId())) {
                behanceSDKGetProjectsAsyncTaskParams.setCity(cityDTO.getDisplayName());
            }
        }
    }

    private void loadNextPageProjectsFromServer() {
        if (!this.projectsLoadingInProgress) {
            this.lastLoadedProjectsPageNumber++;
            this.getProjectsHeadlessFragment.loadProjectsFromServer(getAsyncTaskParams());
        }
    }

    private void loadNextPageGalleryProjectsFromServer() {
        if (!this.projectsLoadingInProgress) {
            this.lastLoadedProjectsPageNumber++;
            this.getProjectsHeadlessFragment.loadGalleryProjectsFromServer(getGalleriesAsyncTaskParams());
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.getProjectsHeadlessFragment != null) {
            this.getProjectsHeadlessFragment.setCallbacks(null);
        }
    }

    private void showProgressBar() {
        this.projectsLoadingInProgress = true;
        this.projectsSwipeRefresh.setRefreshing(true);
    }

    private void hideProgressBar(boolean z) {
        this.projectsLoadingInProgress = false;
        this.projectsSwipeRefresh.setRefreshing(false);
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bundle bundleToSave = getBundleToSave();
        if (bundleToSave != null) {
            bundle.putAll(bundleToSave);
        }
    }

    public Bundle getBundleToSave() {
        Bundle bundle = new Bundle();
        bundle.putInt(STATE_LOADED_PROJECTS_PAGE_NUMBER, this.lastLoadedProjectsPageNumber);
        if (this.isProjectTypeGallery) {
            bundle.putInt(PROJECT_FEED_GALLERY_ID, this.galleryID);
            bundle.putSerializable(PROJECT_FEED_GALLERY_TYPE, this.galleryType);
        }
        bundle.putSerializable(DISCOVER_PROJECTS_KEY_SELECTED_FILTERS, this.selectedFilters);
        return bundle;
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectsHeadlessFragment.Callbacks
    public void onGetProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams) {
        setProjectsRecyclerAdapter(behanceSDKGetCuratedGalleryProjectsAsyncTaskParams.getPageNumber() == 1);
        if (list != null && !list.isEmpty()) {
            hideProgressBar(true);
            this.emptyStatesView.setVisibility(8);
            return;
        }
        RecyclerView.Adapter adapter = this.projectsRecyclerView.getAdapter();
        if (adapter instanceof BehanceSDKProjectRecyclerViewAdapter) {
            ((BehanceSDKProjectRecyclerViewAdapter) adapter).setMoreToLoad(false);
        }
        if (behanceSDKGetCuratedGalleryProjectsAsyncTaskParams.getPageNumber() == 1) {
            this.emptyStatesView.setVisibility(0);
        }
        hideProgressBar(false);
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectsHeadlessFragment.Callbacks
    public void onGetProjectsFailure(Exception exc, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams) {
        logger.error(exc, "Problem getting Projects from server", new Object[0]);
        hideProgressBar(false);
        if (getActivity() != null) {
            Toast.makeText(getActivity(), getResources().getString(R.string.bsdk_collection_details_view_loading_projects_error_msg), 1).show();
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectsHeadlessFragment.Callbacks
    public void onGetProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        setProjectsRecyclerAdapter(behanceSDKGetProjectsAsyncTaskParams.getPageNumber() == 1);
        if (list != null && !list.isEmpty()) {
            hideProgressBar(true);
            this.emptyStatesView.setVisibility(8);
            return;
        }
        RecyclerView.Adapter adapter = this.projectsRecyclerView.getAdapter();
        if (adapter instanceof BehanceSDKProjectRecyclerViewAdapter) {
            ((BehanceSDKProjectRecyclerViewAdapter) adapter).setMoreToLoad(false);
        }
        if (behanceSDKGetProjectsAsyncTaskParams.getPageNumber() == 1) {
            this.emptyStatesView.setVisibility(0);
        }
        hideProgressBar(false);
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKGetProjectsHeadlessFragment.Callbacks
    public void onGetProjectsFailure(Exception exc, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        logger.error(exc, "Problem getting Projects from server", new Object[0]);
        hideProgressBar(false);
        if (getActivity() != null) {
            Toast.makeText(getActivity(), getResources().getString(R.string.bsdk_collection_details_view_loading_projects_error_msg), 1).show();
        }
    }

    private void setProjectsRecyclerAdapter(boolean z) {
        List<BehanceSDKProjectDTO> projectsList;
        if (getActivity() != null && (projectsList = getProjectsList()) != null) {
            if (z) {
                BehanceSDKProjectRecyclerViewAdapter behanceSDKProjectRecyclerViewAdapter = new BehanceSDKProjectRecyclerViewAdapter(getActivity(), projectsList);
                if (this.projectsRecyclerView.getAdapter() != null) {
                    this.projectsRecyclerView.swapAdapter(behanceSDKProjectRecyclerViewAdapter, false);
                } else {
                    this.projectsRecyclerView.setAdapter(behanceSDKProjectRecyclerViewAdapter);
                }
                this.projectsRecyclerView.resetScrollCount();
                return;
            }
            RecyclerView.Adapter adapter = this.projectsRecyclerView.getAdapter();
            if (adapter instanceof BehanceSDKProjectRecyclerViewAdapter) {
                ((BehanceSDKProjectRecyclerViewAdapter) adapter).setProjects(projectsList);
            } else {
                this.projectsRecyclerView.setAdapter(new BehanceSDKProjectRecyclerViewAdapter(getActivity(), projectsList));
            }
        }
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        loadProjectsFromServer();
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKEndlessScrollRecyclerViewListener
    public void loadNextPage() {
        if (this.isProjectTypeGallery) {
            loadNextPageGalleryProjectsFromServer();
        } else {
            loadNextPageProjectsFromServer();
        }
    }
}
