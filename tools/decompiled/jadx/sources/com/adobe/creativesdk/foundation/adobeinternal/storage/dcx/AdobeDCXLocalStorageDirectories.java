package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.annotation.SuppressLint;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageFileUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes.dex */
class AdobeDCXLocalStorageDirectories implements IAdobeDCXLocalStorageProtocol {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String AdobeDCXClassicBaseManifestPath = "base/manifest";
    private static final String AdobeDCXClassicBaseVersionPath = "base";
    private static final String AdobeDCXClassicClientDataPath = "clientdata";
    private static final String AdobeDCXClassicCurrentPath = "current";
    private static final String AdobeDCXClassicManifestPath = "current/manifest";
    private static final String AdobeDCXClassicPullBaseManifestPath = "pull/manifest.base";
    private static final String AdobeDCXClassicPullManifestPath = "pull/manifest";
    private static final String AdobeDCXClassicPullPath = "pull";
    private static final String AdobeDCXClassicPushBaseManifestPath = "push/manifest.base";
    private static final String AdobeDCXClassicPushJournalPath = "push/journal";
    private static final String AdobeDCXClassicPushManifestPath = "push/manifest";
    private static final String AdobeDCXClassicPushPath = "push";

    static {
        $assertionsDisabled = !AdobeDCXLocalStorageDirectories.class.desiredAssertionStatus();
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String getClientDataPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicClientDataPath);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String getCurrentManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicManifestPath);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String getCurrentBaseManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicBaseManifestPath);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pullManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicPullManifestPath);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pullBaseManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicPullBaseManifestPath);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pushManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicPushManifestPath);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pushBaseManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicPushBaseManifestPath);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pushJournalPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicPushJournalPath);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean isLocalComponentAssetsImmutable() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String getNewPathOfComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        return getPathOfComponent(adobeDCXComponent, adobeDCXManifest, adobeDCXComposite, false);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean updateComponent(AdobeDCXMutableComponent adobeDCXMutableComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, String str) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXMutableComponent == null) {
            throw new AssertionError("Parameter component must not be nil.");
        }
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("Parameter path must not be nil.");
        }
        String strConcat = FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicCurrentPath);
        String strNormalize = FilenameUtils.normalize(str);
        if (!strNormalize.startsWith(strConcat)) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalStoragePath, "Component path " + strNormalize + " reaches out of composite directory");
        }
        String strSubstring = strNormalize.substring(strConcat.length() + 1);
        if (!strSubstring.equals(adobeDCXMutableComponent.getPath())) {
            adobeDCXMutableComponent.setPath(strSubstring);
        }
        File file = new File(strNormalize);
        if (file != null) {
            adobeDCXMutableComponent.setLength(file.length());
            return true;
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String getPathOfComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, boolean z) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("Parameter composite must have a non-nil path.");
        }
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Parameter component must not be nil.");
        }
        String strConcat = FilenameUtils.concat(adobeDCXComposite.getPath(), z ? AdobeDCXClassicPullPath : AdobeDCXClassicCurrentPath);
        String strConcat2 = FilenameUtils.concat(strConcat, adobeDCXComponent.getPath());
        if (!strConcat2.startsWith(strConcat)) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalStoragePath, "Component path " + adobeDCXComponent.getPath() + " reaches out of composite directory");
        }
        return strConcat2;
    }

    private boolean discardBranch(String str, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("Parameter composite must have a non-nil path.");
        }
        File file = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), str));
        if (file.exists()) {
            try {
                FileUtils.deleteDirectory(file);
            } catch (Exception e2) {
                throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalStoragePath);
            }
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    @SuppressLint({"Assert"})
    public boolean acceptPulledManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws Throwable {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("Parameter composite must have a non-nil path.");
        }
        String strConcat = FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicCurrentPath);
        String strConcat2 = FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicPullPath);
        if (adobeDCXManifest != null) {
            adobeDCXManifest.writeToFile(pullManifestPathForComposite(adobeDCXComposite), true);
        }
        File file = new File(strConcat);
        File file2 = new File(strConcat2);
        if (file.exists()) {
            if (!$assertionsDisabled && !file2.exists()) {
                throw new AssertionError("pullPath should exist");
            }
            try {
                FileUtils.deleteDirectory(file);
                FileUtils.moveDirectory(file2, file);
                if (!$assertionsDisabled && !file.exists()) {
                    throw new AssertionError("currentPath should exist");
                }
                if (!$assertionsDisabled && file2.exists()) {
                    throw new AssertionError("pull dir should have been moved");
                }
            } catch (Exception e2) {
                throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalStoragePath);
            }
        } else {
            try {
                FileUtils.moveDirectory(file2, file);
            } catch (Exception e3) {
                throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalStoragePath);
            }
        }
        boolean zMoveFileAtomicallyFrom = AdobeStorageFileUtils.moveFileAtomicallyFrom(FilenameUtils.concat(FilenameUtils.concat(adobeDCXComposite.getPath(), AdobeDCXClassicCurrentPath), "manifest.base"), getCurrentBaseManifestPathForComposite(adobeDCXComposite));
        adobeDCXComposite.updateBaseBranch();
        return zMoveFileAtomicallyFrom;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean discardPullOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        return discardBranch(AdobeDCXClassicPullPath, adobeDCXComposite);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean acceptPushedManifest_depcrecated(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        AdobeDCXPushJournal adobeDCXPushJournalJournalForCompositeFromFile;
        boolean zMoveFileAtomicallyFrom;
        boolean z;
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("Parameter composite must have a non-nil path.");
        }
        String strPushJournalPathForComposite = pushJournalPathForComposite(adobeDCXComposite);
        try {
            adobeDCXPushJournalJournalForCompositeFromFile = AdobeDCXPushJournal.journalForCompositeFromFile(adobeDCXComposite, strPushJournalPathForComposite);
            e = null;
        } catch (AdobeDCXException e2) {
            e = e2;
            adobeDCXPushJournalJournalForCompositeFromFile = null;
        }
        if (adobeDCXPushJournalJournalForCompositeFromFile == null) {
            return false;
        }
        if (!adobeDCXPushJournalJournalForCompositeFromFile.isComplete()) {
            if (e != null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorIncompleteJournal, "Journal is incomplete.", null, strPushJournalPathForComposite);
            }
            return false;
        }
        String currentManifestPathForComposite = getCurrentManifestPathForComposite(adobeDCXComposite);
        if (adobeDCXManifest == null) {
            zMoveFileAtomicallyFrom = AdobeStorageFileUtils.moveFileAtomicallyFrom(pushManifestPathForComposite(adobeDCXComposite), currentManifestPathForComposite);
        } else {
            adobeDCXManifest.writeToFile(currentManifestPathForComposite, true);
            zMoveFileAtomicallyFrom = true;
        }
        if (zMoveFileAtomicallyFrom) {
            zMoveFileAtomicallyFrom = AdobeStorageFileUtils.moveFileAtomicallyFrom(pushBaseManifestPathForComposite(adobeDCXComposite), getCurrentBaseManifestPathForComposite(adobeDCXComposite));
            adobeDCXComposite.updateBaseBranch();
        }
        if (zMoveFileAtomicallyFrom) {
            ArrayList<String> arrayListDeletedComponentIds = adobeDCXPushJournalJournalForCompositeFromFile.deletedComponentIds();
            if (arrayListDeletedComponentIds.size() > 0) {
                if (adobeDCXManifest == null) {
                    adobeDCXManifest = AdobeDCXManifest.createManifestWithContentsOfFile(currentManifestPathForComposite);
                }
                if (adobeDCXManifest != null) {
                    ArrayList<String> allKeys = AdobeDCXUtils.getAllKeys(adobeDCXManifest.getAllComponents());
                    Iterator<String> it = arrayListDeletedComponentIds.iterator();
                    while (it.hasNext()) {
                        String strPathOfDeletedComponentWithId = adobeDCXPushJournalJournalForCompositeFromFile.pathOfDeletedComponentWithId(it.next());
                        Iterator<String> it2 = allKeys.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z = false;
                                break;
                            }
                            AdobeDCXComponent adobeDCXComponent = adobeDCXManifest.getAllComponents().get(it2.next());
                            if (adobeDCXComponent.getPath() != null && adobeDCXComponent.getPath().equals(strPathOfDeletedComponentWithId)) {
                                z = true;
                                break;
                            }
                        }
                        if (!z) {
                            File file = new File(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeDCXComposite.getPath(), AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXClassicCurrentPath, strPathOfDeletedComponentWithId)));
                            if (file.exists()) {
                                file.delete();
                            }
                        }
                    }
                }
            }
        }
        return zMoveFileAtomicallyFrom ? discardBranch(AdobeDCXClassicPushPath, adobeDCXComposite) : zMoveFileAtomicallyFrom;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean discardPushOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        return discardBranch(AdobeDCXClassicPushPath, adobeDCXComposite);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean resetBindingOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return discardPullOfComposite(adobeDCXComposite) && discardPushOfComposite(adobeDCXComposite) && discardBranch(AdobeDCXClassicBaseVersionPath, adobeDCXComposite);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean removeLocalFilesOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("Parameter composite must have a non-nil path.");
        }
        try {
            FileUtils.deleteDirectory(new File(adobeDCXComposite.getPath()));
            return true;
        } catch (Exception e2) {
            throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalStoragePath);
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public long removeUnusedLocalFilesOfComposite(AdobeDCXComposite adobeDCXComposite) {
        return -1L;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public void updateLocalStorageDataInManifest(AdobeDCXManifest adobeDCXManifest, List<AdobeDCXManifest> list) {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public void didRemoveComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest) {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public void didRemoveLocalFileForComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest) {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public HashMap<String, String> existingLocalStoragePathsForComponentsInBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        String pathOfComponent;
        HashMap<String, String> map = new HashMap<>();
        AdobeDCXComposite weakComposite = adobeDCXCompositeBranch.getWeakComposite();
        if (!$assertionsDisabled && weakComposite == null) {
            throw new AssertionError("Using using stale branch reference to a deallocated composite");
        }
        List<AdobeDCXComponent> allComponents = adobeDCXCompositeBranch.getAllComponents();
        if (allComponents == null) {
            return map;
        }
        for (AdobeDCXComponent adobeDCXComponent : allComponents) {
            try {
                pathOfComponent = getPathOfComponent(adobeDCXComponent, adobeDCXCompositeBranch.getManifest(), weakComposite, adobeDCXCompositeBranch == weakComposite.getPulled());
            } catch (AdobeDCXException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXLocalStorageDirectories.existingLocalStoragePathsForComponentsInBranch", e2.getMessage());
                pathOfComponent = null;
            }
            if (pathOfComponent != null && new File(pathOfComponent).exists()) {
                map.put(adobeDCXComponent.getComponentId(), pathOfComponent);
            }
        }
        return map;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean assetOfComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXManifest adobeDCXManifest2) {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public AdobeDCXComposite createCompositeAsCopyOf(AdobeDCXComposite adobeDCXComposite, AdobeStorageSession adobeStorageSession, String str, String str2, String str3, String str4, URI uri, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorLocalStorageSchemeNotSupported, "This local storage scheme does not support the newCompositeAsCopyOf method.");
    }
}
