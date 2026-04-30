package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.ACLibraryManagerAppBridge;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerAppBridgeDelegate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerLibOpEvent;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetLibraryDataSource implements IAdobeAssetDataSource {
    private AdobeCloud cloud;
    AdobeAssetDataSourceType dataSourceType = AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary;
    private IAdobeAssetDataSourceDelegate delegate;

    public ArrayList<AdobeLibraryComposite> assetsToDisplay() {
        return ACLibraryManagerAppBridge.getInstance() != null ? ACLibraryManagerAppBridge.getInstance().getLibraryManager().getLibraries() : new ArrayList<>();
    }

    public ArrayList<AdobeLibraryComposite> searchAssetContainName(String str) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return assetsToDisplay();
        }
        ArrayList<AdobeLibraryComposite> libraries = ACLibraryManagerAppBridge.getInstance().getLibraryManager().getLibraries();
        ArrayList<AdobeLibraryComposite> arrayList = new ArrayList<>();
        if (libraries != null) {
            for (AdobeLibraryComposite adobeLibraryComposite : libraries) {
                if (adobeLibraryComposite.getName() != null && adobeLibraryComposite.getName().toLowerCase().contains(str.toLowerCase())) {
                    arrayList.add(adobeLibraryComposite);
                }
            }
        }
        return arrayList;
    }

    public IAdobeAssetDataSourceDelegate getDelegate() {
        return this.delegate;
    }

    public void setDelegate(IAdobeAssetDataSourceDelegate iAdobeAssetDataSourceDelegate) {
        this.delegate = iAdobeAssetDataSourceDelegate;
    }

    public AdobeAssetLibraryDataSource(AdobeCloud adobeCloud) {
        this.cloud = adobeCloud;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public int getCount() {
        if (!ACLibraryManagerAppBridge.hasValidInstance() || ACLibraryManagerAppBridge.getInstance().getLibraryManager().getLibraries() == null) {
            return 0;
        }
        return ACLibraryManagerAppBridge.getInstance().getLibraryManager().getLibraries().size();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public boolean loadItemsFromScratch() {
        if (ACLibraryManagerAppBridge.hasValidInstance()) {
            ACLibraryManagerAppBridge.getInstance().start(new IACLibraryManagerAppBridgeDelegate() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetLibraryDataSource.1
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerAppBridgeDelegate
                public void handleFirstSyncWithServerInitiated() {
                    if (AdobeAssetLibraryDataSource.this.delegate != null) {
                        AdobeAssetLibraryDataSource.this.delegate.willLoadDataFromScratch();
                    }
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerAppBridgeDelegate
                public void handleResumeAppWorkflow() {
                    if (AdobeAssetLibraryDataSource.this.delegate != null) {
                        AdobeAssetLibraryDataSource.this.delegate.didFinishLoading();
                    }
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerAppBridgeDelegate
                public void handleLibraryEvent(ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent) {
                    if (AdobeAssetLibraryDataSource.this.delegate != null) {
                        switch (AnonymousClass2.$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$aclibmanager$events$ACLibraryManagerLibOpEvent$Type[aCLibraryManagerLibOpEvent.getEventType().ordinal()]) {
                            case 1:
                                AdobeAssetLibraryDataSource.this.delegate.didLoadMoreDataWithCount(ACLibraryManagerAppBridge.getInstance().getLibraryManager().getLibraries().size());
                                break;
                            case 2:
                                AdobeAssetLibraryDataSource.this.delegate.didFinishLoading();
                                break;
                            case 3:
                                AdobeAssetLibraryDataSource.this.delegate.didFailToLoadMoreDataWithError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorOffline));
                                break;
                        }
                    }
                }
            });
        }
        return false;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetLibraryDataSource$2, reason: invalid class name */
    /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$aclibmanager$events$ACLibraryManagerLibOpEvent$Type = new int[ACLibraryManagerLibOpEvent.Type.values().length];

        static {
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$aclibmanager$events$ACLibraryManagerLibOpEvent$Type[ACLibraryManagerLibOpEvent.Type.kLibraryAdded.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$aclibmanager$events$ACLibraryManagerLibOpEvent$Type[ACLibraryManagerLibOpEvent.Type.kSyncFinished.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$aclibmanager$events$ACLibraryManagerLibOpEvent$Type[ACLibraryManagerLibOpEvent.Type.kSyncUnavailableDueToNoInternat.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void loadNextPageOfData() {
        loadItemsFromScratch();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
    public void resetDelegate() {
        setDelegate(null);
    }
}
