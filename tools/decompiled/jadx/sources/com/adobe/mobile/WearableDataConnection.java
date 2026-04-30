package com.adobe.mobile;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataEventBuffer;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataMap;
import com.google.android.gms.wearable.DataMapItem;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.PutDataMapRequest;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.Wearable;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class WearableDataConnection implements GoogleApiClient.OnConnectionFailedListener, DataApi.DataListener {
    protected DataMap mDataMap;
    private final GoogleApiClient mGoogleApiClient;
    private CountDownLatch mInTimeCountDownLatch;
    protected String requestID;

    protected WearableDataConnection(Context context) {
        this.mGoogleApiClient = new GoogleApiClient.Builder(context).addOnConnectionFailedListener(this).addApi(Wearable.API).build();
    }

    protected WearableDataResponse send(WearableDataRequest wearableDataRequest) {
        WearableDataResponse response = null;
        if (connect(wearableDataRequest.getTimeOut())) {
            Wearable.DataApi.addListener(this.mGoogleApiClient, this);
            this.requestID = wearableDataRequest.getUUID();
            PutDataMapRequest putDataMapRequestCreate = PutDataMapRequest.create("/abdmobile/data/request");
            putDataMapRequestCreate.getDataMap().putAll(wearableDataRequest.getDataMap());
            PutDataRequest putDataRequestAsPutDataRequest = putDataMapRequestCreate.asPutDataRequest();
            this.mInTimeCountDownLatch = new CountDownLatch(1);
            Wearable.DataApi.putDataItem(this.mGoogleApiClient, putDataRequestAsPutDataRequest);
            try {
                if (this.mInTimeCountDownLatch.await(wearableDataRequest.getTimeOut(), TimeUnit.MILLISECONDS)) {
                    response = getResponse();
                    Wearable.DataApi.removeListener(this.mGoogleApiClient, this);
                    GoogleApiClientWrapper.disconnect(this.mGoogleApiClient);
                } else {
                    StaticMethods.logWarningFormat("Wearable - Failed to get data from handheld app", new Object[0]);
                }
            } catch (InterruptedException e2) {
                StaticMethods.logWarningFormat("Wearable - Failed to get data from handheld app", new Object[0]);
            } finally {
                Wearable.DataApi.removeListener(this.mGoogleApiClient, this);
                GoogleApiClientWrapper.disconnect(this.mGoogleApiClient);
            }
        }
        return response;
    }

    private boolean connect(int i) {
        GoogleApiClientWrapper.connect(this.mGoogleApiClient);
        if (!waitForConnect(i)) {
            StaticMethods.logWarningFormat("Wearable - Timeout setup connection", new Object[0]);
            return false;
        }
        if (!hasNodes()) {
            StaticMethods.logWarningFormat("Wearable - No connected Node found", new Object[0]);
            return false;
        }
        return true;
    }

    public void onDataChanged(DataEventBuffer dataEventBuffer) {
        Uri uri;
        DataMap dataMap;
        Iterator it = dataEventBuffer.iterator();
        while (it.hasNext()) {
            DataEvent dataEvent = (DataEvent) it.next();
            if (dataEvent.getType() == 1) {
                DataItem dataItem = dataEvent.getDataItem();
                if (dataItem != null && (uri = dataItem.getUri()) != null && uri.getPath() != null && uri.getPath().compareTo("/abdmobile/data/response") == 0 && (dataMap = DataMapItem.fromDataItem(dataEvent.getDataItem()).getDataMap()) != null && dataMap.containsKey("ID") && dataMap.getString("ID").equals(this.requestID)) {
                    this.mDataMap = dataMap;
                    this.mInTimeCountDownLatch.countDown();
                    return;
                }
            } else {
                return;
            }
        }
    }

    private boolean waitForConnect(int i) {
        if (GoogleApiClientWrapper.isConnected(this.mGoogleApiClient).booleanValue()) {
            return true;
        }
        ConnectionResult connectionResultBlockingConnect = GoogleApiClientWrapper.blockingConnect(this.mGoogleApiClient, i, TimeUnit.MILLISECONDS);
        return connectionResultBlockingConnect != null && connectionResultBlockingConnect.isSuccess();
    }

    private boolean hasNodes() {
        NodeApi.GetConnectedNodesResult getConnectedNodesResultAwait = GoogleApiClientWrapper.await(Wearable.NodeApi.getConnectedNodes(this.mGoogleApiClient));
        NodeApi.GetConnectedNodesResult getConnectedNodesResult = getConnectedNodesResultAwait instanceof NodeApi.GetConnectedNodesResult ? getConnectedNodesResultAwait : null;
        return (getConnectedNodesResult == null || getConnectedNodesResult.getNodes() == null || getConnectedNodesResult.getNodes().size() <= 0) ? false : true;
    }

    protected WearableDataResponse getResponse() {
        if (this.mDataMap == null) {
            return null;
        }
        return WearableDataResponse.createResponseFromDataMap(this.mDataMap, this.mGoogleApiClient);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
    }
}
