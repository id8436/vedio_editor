package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.customviews.CustomFontTabLayout;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.MobileCreationsDataSourceFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewBrowserControllerFactory;
import com.adobe.creativesdk.foundation.internal.utils.TabLayoutHelper;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class AssetTabsFragment extends AssetViewBaseFragment {
    private static int currentTab = 0;
    private ArrayList<AssetTabDetails> _allAssetTabsList;
    private AdobeCloud _cloud;
    private EnumSet<AdobeAssetDataSourceType> _dataSourcesList;
    private DatSourceObserver _observer;
    private CustomFontTabLayout mTabLayout;
    private ViewPager mViewPager;
    private OurViewPagerAdapter mViewPagerAdapter;

    public static int getCurrentTab() {
        return currentTab;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mViewPagerAdapter = new OurViewPagerAdapter(getChildFragmentManager());
        this._cloud = (AdobeCloud) getArguments().getSerializable("ADOBE_CLOUD");
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("CurrentTab", currentTab);
    }

    private EnumSet<AdobeAssetDataSourceType> getDataSourcesList() {
        return AdobeAssetViewBrowserControllerFactory.getDataSourcesListToDisplayFromBundle(getArguments());
    }

    private String getLocalizedString(int i) {
        return AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getResources().getString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getDisplayNameOfDataSource(AdobeAssetDataSourceType adobeAssetDataSourceType) {
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceFiles) {
            return getLocalizedString(R.string.adobe_csdk_uxassetbrowser_files);
        }
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourcePhotos) {
            return getLocalizedString(R.string.adobe_csdk_uxassetbrowser_photos);
        }
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourcePSMix) {
            return getLocalizedString(R.string.adobe_csdk_uxassetbrowser_psmix);
        }
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary) {
            return getLocalizedString(R.string.adobe_csdk_uxassetbrowser_designlibrary);
        }
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceSketches) {
            return getLocalizedString(R.string.adobe_csdk_uxassetbrowser_sketches);
        }
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceDraw) {
            return getLocalizedString(R.string.adobe_csdk_uxassetbrowser_drawings);
        }
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions) {
            return getLocalizedString(R.string.adobe_csdk_uxassetbrowser_comps);
        }
        if (adobeAssetDataSourceType != AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations) {
            return "";
        }
        return getLocalizedString(R.string.adobe_csdk_uxassetbrowser_all_mobilecreations);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeAssetViewBrowserControllerFactory.AdobeAssetViewFragmentDetails getHostDetailsFromDataSource(AdobeAssetDataSourceType adobeAssetDataSourceType, Bundle bundle) {
        return AdobeAssetViewBrowserControllerFactory.getAssetViewFragmentDetails(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext(), adobeAssetDataSourceType, bundle, null);
    }

    private void setupTabsBasedOnGivenDataSources() {
        this._dataSourcesList = getDataSourcesList();
        this._allAssetTabsList = new ArrayList<>();
        if (this._cloud == null) {
            this._cloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        List<AdobeAssetDataSourceType> loadedDataSourcesTypes = MobileCreationsDataSourceFactory.getInstance().getLoadedDataSourcesTypes();
        List<AdobeAssetDataSourceType> arrayList = loadedDataSourcesTypes == null ? new ArrayList() : loadedDataSourcesTypes;
        for (AdobeAssetDataSourceType adobeAssetDataSourceType : this._dataSourcesList) {
            if (AdobeAssetViewBrowserControllerFactory.shouldShowComponent(adobeAssetDataSourceType, this._cloud) && !arrayList.contains(adobeAssetDataSourceType)) {
                AssetTabDetails assetTabDetails = new AssetTabDetails();
                assetTabDetails.assetsTabName = getDisplayNameOfDataSource(adobeAssetDataSourceType);
                assetTabDetails.fragmentDetails = getHostDetailsFromDataSource(adobeAssetDataSourceType, getArguments());
                this._allAssetTabsList.add(assetTabDetails);
            }
        }
    }

    public static void resetTabState() {
        currentTab = 0;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.adobe_assetsview_datasource_tabs, viewGroup, false);
        Boolean boolValueOf = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext()));
        tabLayoutLoki = (CustomFontTabLayout) viewInflate.findViewById(R.id.adobe_csdk_tab_layout_loki);
        CustomFontTabLayout customFontTabLayout = (CustomFontTabLayout) viewInflate.findViewById(R.id.adobe_csdk_tab_layout);
        if (boolValueOf.booleanValue()) {
            this.mTabLayout = tabLayoutLoki;
            customFontTabLayout.setVisibility(8);
            tabLayoutLoki.setVisibility(0);
        } else {
            this.mTabLayout = customFontTabLayout;
            customFontTabLayout.setVisibility(0);
            tabLayoutLoki.setVisibility(8);
        }
        this.mViewPager = (ViewPager) viewInflate.findViewById(R.id.adobe_csdk_view_pager);
        setupTabsBasedOnGivenDataSources();
        this.mViewPager.setAdapter(this.mViewPagerAdapter);
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        TabLayoutHelper.setupTabLayout(this.mTabLayout);
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetTabsFragment.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f2, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                int unused = AssetTabsFragment.currentTab = i;
                AssetTabsFragment.this.addAnalyticsInfoForBrowser(AssetTabsFragment.this.mViewPager.getAdapter().getPageTitle(i).toString());
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeUxTabDataSourceChanged, null));
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        });
        if (bundle != null) {
            currentTab = bundle.getInt("currentTab");
        }
        this.mTabLayout.getTabAt(currentTab).select();
        this._observer = new DatSourceObserver();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeDataSourceReady, this._observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAppOrientationConfigurationChanged, this._observer);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAnalyticsInfoForBrowser(String str) {
        String str2;
        String str3;
        HashMap<String, String> map = new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetTabsFragment.2
            {
                put(AdobeAnalyticsSDKReporter.AnalyticArea, "browser");
                put(AdobeAnalyticsSDKReporter.AnalyticAction, "view");
            }
        };
        if (str.equals(getResources().getString(R.string.adobe_csdk_uxassetbrowser_files))) {
            str3 = "files";
            str2 = AdobeAnalyticsSDKReporter.AnalyticViewFiles;
        } else if (str.equals(getResources().getString(R.string.adobe_csdk_uxassetbrowser_photos))) {
            str3 = AdobeAnalyticsETSEvent.ADOBE_ETS_FILTER_PHOTOS;
            str2 = AdobeAnalyticsSDKReporter.AnalyticViewPhotos;
        } else if (str.equals(getResources().getString(R.string.adobe_csdk_uxassetbrowser_psmix))) {
            str3 = "mix";
            str2 = AdobeAnalyticsSDKReporter.AnalyticViewMix;
        } else if (str.equals(getResources().getString(R.string.adobe_csdk_uxassetbrowser_sketches))) {
            str3 = "sketch";
            str2 = AdobeAnalyticsSDKReporter.AnalyticViewSketch;
        } else if (str.equals(getResources().getString(R.string.adobe_csdk_uxassetbrowser_lines))) {
            str3 = "line";
            str2 = AdobeAnalyticsSDKReporter.AnalyticViewLine;
        } else if (str.equals(getResources().getString(R.string.adobe_csdk_uxassetbrowser_drawings))) {
            str3 = "draw";
            str2 = AdobeAnalyticsSDKReporter.AnalyticViewDraw;
        } else if (str.equals(getResources().getString(R.string.adobe_csdk_uxassetbrowser_comps))) {
            str3 = "comp";
            str2 = AdobeAnalyticsSDKReporter.AnalyticViewComp;
        } else {
            str2 = null;
            str3 = null;
        }
        map.put("type", str3);
        AdobeAnalyticsSDKReporter.trackAction(str2, map, null);
    }

    public void hideTab() {
        if (this.mTabLayout != null) {
            this.mTabLayout.setVisibility(8);
        }
    }

    public void showTab() {
        if (this.mTabLayout != null) {
            this.mTabLayout.setVisibility(0);
        }
    }

    class AssetTabDetails {
        String assetsTabName;
        AdobeAssetViewBrowserControllerFactory.AdobeAssetViewFragmentDetails fragmentDetails;

        private AssetTabDetails() {
        }
    }

    public Fragment getCurrentFragment() {
        return this.mViewPagerAdapter.getFragment(getCurrentTab());
    }

    class OurViewPagerAdapter extends FragmentPagerAdapter {
        Map<Integer, Fragment> mPageReferenceMap;

        public OurViewPagerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
            this.mPageReferenceMap = new HashMap();
        }

        @Override // android.support.v4.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            try {
                AdobeAssetViewBrowserControllerFactory.AdobeAssetViewFragmentDetails adobeAssetViewFragmentDetails = ((AssetTabDetails) AssetTabsFragment.this._allAssetTabsList.get(i)).fragmentDetails;
                Fragment fragmentInstantiate = Fragment.instantiate(AssetTabsFragment.this.getActivity(), adobeAssetViewFragmentDetails.getClassTag().getName(), adobeAssetViewFragmentDetails.getArgumentsBundle());
                try {
                    this.mPageReferenceMap.put(Integer.valueOf(i), fragmentInstantiate);
                    return fragmentInstantiate;
                } catch (Fragment.InstantiationException e2) {
                    return fragmentInstantiate;
                }
            } catch (Fragment.InstantiationException e3) {
                return null;
            }
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            if (AssetTabsFragment.this._allAssetTabsList != null) {
                return AssetTabsFragment.this._allAssetTabsList.size();
            }
            return 0;
        }

        @Override // android.support.v4.view.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return ((AssetTabDetails) AssetTabsFragment.this._allAssetTabsList.get(i)).assetsTabName;
        }

        public Fragment getFragment(int i) {
            return this.mPageReferenceMap.get(Integer.valueOf(i));
        }

        @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            super.destroyItem(viewGroup, i, obj);
            this.mPageReferenceMap.remove(Integer.valueOf(i));
        }
    }

    class DatSourceObserver implements Observer {
        DatSourceObserver() {
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeDataSourceReady) {
                AdobeAssetDataSourceType adobeAssetDataSourceType = (AdobeAssetDataSourceType) adobeNotification.getInfo().get("DataSourceReady");
                AssetTabDetails assetTabDetails = new AssetTabDetails();
                assetTabDetails.assetsTabName = AssetTabsFragment.this.getDisplayNameOfDataSource(adobeAssetDataSourceType);
                assetTabDetails.fragmentDetails = AssetTabsFragment.this.getHostDetailsFromDataSource(adobeAssetDataSourceType, AssetTabsFragment.this.getArguments());
                AssetTabsFragment.this._allAssetTabsList.add(assetTabDetails);
                AssetTabsFragment.this.mViewPagerAdapter.notifyDataSetChanged();
                AssetTabsFragment.this.refreshTabLayout();
                AssetTabsFragment.this.mTabLayout.dynamicallyAddTab(assetTabDetails.assetsTabName);
                return;
            }
            if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAppOrientationConfigurationChanged) {
                AssetTabsFragment.this.mViewPagerAdapter.notifyDataSetChanged();
                AssetTabsFragment.this.refreshTabLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshTabLayout() {
        this.mTabLayout.setTabMode(0);
        this.mTabLayout.setTabGravity(1);
        currentTab = this.mTabLayout.getSelectedTabPosition();
        this.mTabLayout.getTabAt(currentTab).select();
        TabLayoutHelper.setupTabLayout(this.mTabLayout);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeDataSourceReady, this._observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAppOrientationConfigurationChanged, this._observer);
        this._observer = null;
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        List<Fragment> fragments = getChildFragmentManager().getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null) {
                    fragment.onRequestPermissionsResult(i, strArr, iArr);
                }
            }
        }
    }
}
