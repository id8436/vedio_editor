package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewBrowserControllerFactory;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MobileCreationsDataSourceFactory {
    private static MobileCreationsDataSourceFactory _instance;
    private AdobeCloud cloud;
    private Map<AdobeAssetDataSourceType, AdobeAssetDataSource> dataSourcesMap;
    private List<AdobeAssetDataSourceType> loadedSourcesTypes;
    private int numDataSourcesPending;
    private boolean allSourcesLoaded = false;
    private boolean _dataLoading = false;

    private MobileCreationsDataSourceFactory() {
    }

    public static MobileCreationsDataSourceFactory getInstance() {
        if (_instance == null) {
            _instance = new MobileCreationsDataSourceFactory();
        }
        return _instance;
    }

    public static Set<AdobeAssetDataSourceType> getDataSourceTypes() {
        return EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourcePSMix, AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions, AdobeAssetDataSourceType.AdobeAssetDataSourceDraw, AdobeAssetDataSourceType.AdobeAssetDataSourceSketches, AdobeAssetDataSourceType.AdobeAssetDataSourcePSFix);
    }

    public boolean isMobileCreation(AdobeAssetDataSourceType adobeAssetDataSourceType) {
        return ((EnumSet) getDataSourceTypes()).contains(adobeAssetDataSourceType);
    }

    public boolean isAllDataSourceLoaded(int i) {
        return i == getDataSourceTypes().size();
    }

    private void initializeDataSources() {
        this.dataSourcesMap = new HashMap();
        this.allSourcesLoaded = false;
        this.loadedSourcesTypes = new ArrayList();
        for (AdobeAssetDataSourceType adobeAssetDataSourceType : getDataSourceTypes()) {
            if (AdobeAssetViewBrowserControllerFactory.shouldShowComponent(adobeAssetDataSourceType, getInstance().getCloud())) {
                AdobeAssetDataSource adobeAssetDataSource = new AdobeAssetDataSource(adobeAssetDataSourceType, getInstance().getCloud());
                adobeAssetDataSource.setDelegate(new DataSourceDelegate(adobeAssetDataSourceType));
                this.dataSourcesMap.put(adobeAssetDataSourceType, adobeAssetDataSource);
            }
        }
        this.numDataSourcesPending = this.dataSourcesMap.size();
    }

    private void loadDataSources() {
        if (!this.allSourcesLoaded) {
            for (Map.Entry<AdobeAssetDataSourceType, AdobeAssetDataSource> entry : this.dataSourcesMap.entrySet()) {
            }
        }
    }

    public void loadDataSources(boolean z) {
        if (AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
            this.dataSourcesMap = null;
            this.loadedSourcesTypes = null;
            initializeDataSources();
            loadDataSources();
        }
    }

    public AdobeAssetDataSource getDataSourceByType(AdobeAssetDataSourceType adobeAssetDataSourceType) {
        if (this.dataSourcesMap == null || !this.dataSourcesMap.containsKey(adobeAssetDataSourceType)) {
            return null;
        }
        return this.dataSourcesMap.get(adobeAssetDataSourceType);
    }

    public List<AdobeAssetDataSourceType> getLoadedDataSourcesTypes() {
        return this.loadedSourcesTypes;
    }

    public List<AdobeAssetDataSource> getDataSources() {
        return new ArrayList(this.dataSourcesMap.values());
    }

    public void notifyDataSourceIsReady(AdobeAssetDataSourceType adobeAssetDataSourceType) {
        this.numDataSourcesPending--;
        if (getInstance().getDataSourceByType(adobeAssetDataSourceType).getCount() != 0) {
            HashMap map = new HashMap();
            map.put("DataSourceReady", adobeAssetDataSourceType);
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeDataSourceReady, map));
            this.loadedSourcesTypes.add(adobeAssetDataSourceType);
        }
        if (this.numDataSourcesPending == 0) {
            this.allSourcesLoaded = true;
        }
    }

    public AdobeCloud getCloud() {
        return this.cloud;
    }

    public void setCloud(AdobeCloud adobeCloud) {
        this.cloud = adobeCloud;
    }
}
