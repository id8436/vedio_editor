package com.adobe.sync;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.sync.database.ComponentWaitingModel;
import com.adobe.sync.database.CompositeLoader;
import com.adobe.sync.database.PreferenceCompositeLoader;

/* JADX INFO: loaded from: classes2.dex */
public class Server2ServerCopy {
    private Server2ServerCopy() {
    }

    public static void trigger(AdobeStorageSession adobeStorageSession, AdobeDCXController adobeDCXController, String str, ComponentWaitingModel componentWaitingModel) {
        AdobeDCXComposite adobeDCXCompositeLoadComposite;
        String componentId = componentWaitingModel.getComponentId();
        String compositeId = componentWaitingModel.getCompositeId();
        String ucid = componentWaitingModel.getUCID();
        if ("preference".equals(compositeId)) {
            adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite(compositeId, null, null);
        } else {
            adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(compositeId, null, null);
        }
        AdobeDCXComponent componentWithId = (adobeDCXCompositeLoadComposite == null || adobeDCXCompositeLoadComposite.getCurrent() == null) ? null : adobeDCXCompositeLoadComposite.getCurrent().getComponentWithId(componentId);
        if (componentWithId == null) {
            Log.d("Server2ServerCopy", "Sync: component  " + componentId + " not found in composite " + compositeId);
            return;
        }
        try {
            AdobeDCXCompositeMutableBranch current = adobeDCXCompositeLoadComposite.getCurrent();
            String name = componentWithId.getName();
            String type = componentWithId.getType();
            String relationship = componentWithId.getRelationship();
            String path = componentWithId.getPath();
            AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = current.findParentOfComponent(componentWithId);
            current.removeComponent(componentWithId);
            current.addComponent(name, componentId, type, relationship, path, adobeDCXManifestNodeFindParentOfComponent, ucid, str);
            adobeDCXCompositeLoadComposite.commitChanges();
            adobeDCXController.resumeSyncForComposite(adobeDCXCompositeLoadComposite);
        } catch (AdobeCSDKException e2) {
            e2.printStackTrace();
            Log.d("Server2ServerCopy", "Sync: removing and adding  " + componentId + " in composite " + compositeId + " for server-to-server copy could not be done because of exception " + e2.toString());
        }
    }
}
