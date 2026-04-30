package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import java.net.URI;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXLocalStorageProtocol {
    boolean acceptPulledManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException;

    boolean acceptPushedManifest_depcrecated(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException;

    boolean assetOfComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXManifest adobeDCXManifest2);

    AdobeDCXComposite createCompositeAsCopyOf(AdobeDCXComposite adobeDCXComposite, AdobeStorageSession adobeStorageSession, String str, String str2, String str3, String str4, URI uri, AdobeDCXController adobeDCXController) throws AdobeDCXException;

    void didRemoveComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest);

    void didRemoveLocalFileForComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest);

    boolean discardPullOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException;

    boolean discardPushOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException;

    HashMap<String, String> existingLocalStoragePathsForComponentsInBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch);

    String getClientDataPathForComposite(AdobeDCXComposite adobeDCXComposite);

    String getCurrentBaseManifestPathForComposite(AdobeDCXComposite adobeDCXComposite);

    String getCurrentManifestPathForComposite(AdobeDCXComposite adobeDCXComposite);

    String getNewPathOfComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException;

    String getPathOfComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, boolean z) throws AdobeDCXException;

    boolean isLocalComponentAssetsImmutable();

    String pullBaseManifestPathForComposite(AdobeDCXComposite adobeDCXComposite);

    String pullManifestPathForComposite(AdobeDCXComposite adobeDCXComposite);

    String pushBaseManifestPathForComposite(AdobeDCXComposite adobeDCXComposite);

    String pushJournalPathForComposite(AdobeDCXComposite adobeDCXComposite);

    String pushManifestPathForComposite(AdobeDCXComposite adobeDCXComposite);

    boolean removeLocalFilesOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException;

    long removeUnusedLocalFilesOfComposite(AdobeDCXComposite adobeDCXComposite);

    boolean resetBindingOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException;

    boolean updateComponent(AdobeDCXMutableComponent adobeDCXMutableComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, String str) throws AdobeDCXException;

    void updateLocalStorageDataInManifest(AdobeDCXManifest adobeDCXManifest, List<AdobeDCXManifest> list);
}
