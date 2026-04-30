package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageFileUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class AdobeDCXLocalStorageCopyOnWrite implements IAdobeDCXLocalStorageProtocol {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String ADOBE_DCX_BASE_MANIFEST_PATH = "manifest.base";
    private static final String ADOBE_DCX_CLIENT_DATA_PATH = "clientdata";
    private static final String ADOBE_DCX_COMPONENTS_PATH = "components";
    private static final String ADOBE_DCX_MANIFEST_PATH = "manifest";
    private static final String ADOBE_DCX_PULL_BASE_MANIFEST_PATH = "pull.manifest.base";
    private static final String ADOBE_DCX_PULL_MANIFEST_PATH = "pull.manifest";
    private static final String ADOBE_DCX_PUSH_BASE_MANIFEST_PATH = "push.manifest.base";
    private static final String ADOBE_DCX_PUSH_JOURNAL_PATH = "push.journal";
    private static final String ADOBE_DCX_PUSH_MANIFEST_PATH = "push.manifest";
    private static final String DISTANT_FUTURE_STRING = "3000-12-30";
    private static final SimpleDateFormat ft;

    static {
        $assertionsDisabled = !AdobeDCXLocalStorageCopyOnWrite.class.desiredAssertionStatus();
        ft = new SimpleDateFormat("yyyy-MM-dd");
    }

    AdobeDCXLocalStorageCopyOnWrite() {
    }

    private String getStorageIdWithPathExtension(AdobeDCXComponent adobeDCXComponent) {
        String strGenerateUuid = AdobeStorageUtils.generateUuid();
        String extension = FilenameUtils.getExtension(adobeDCXComponent.getPath());
        if (extension != null && extension.length() > 0) {
            return strGenerateUuid.concat(FilenameUtils.EXTENSION_SEPARATOR_STR + extension);
        }
        return strGenerateUuid;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String getClientDataPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_CLIENT_DATA_PATH);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String getCurrentManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), "manifest");
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String getCurrentBaseManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_BASE_MANIFEST_PATH);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pullManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PULL_MANIFEST_PATH);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pullBaseManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PULL_BASE_MANIFEST_PATH);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pushManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PUSH_MANIFEST_PATH);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pushBaseManifestPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PUSH_BASE_MANIFEST_PATH);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String pushJournalPathForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PUSH_JOURNAL_PATH);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean isLocalComponentAssetsImmutable() {
        return true;
    }

    private JSONObject getStorageIdLookupOfManifest(AdobeDCXManifest adobeDCXManifest, boolean z) {
        JSONObject jSONObject = (JSONObject) adobeDCXManifest.get("local");
        if (jSONObject == null) {
            if (!z) {
                return null;
            }
            jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("copyOnWrite#storageIds", new JSONObject());
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXLocalStorageCopyOnWrite.getStorageIdLookupOfManifest", e2.getMessage());
            }
            adobeDCXManifest.setValue(jSONObject, "local");
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("copyOnWrite#storageIds");
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject;
        }
        if (!z) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject.putOpt("copyOnWrite#storageIds", jSONObject2);
            return jSONObject2;
        } catch (JSONException e3) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXLocalStorageCopyOnWrite.getStorageIdLookupOfManifest", e3.getMessage());
            return jSONObject2;
        }
    }

    private String getStorageIdForComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest) {
        JSONObject storageIdLookupOfManifest = getStorageIdLookupOfManifest(adobeDCXManifest, true);
        String strOptString = storageIdLookupOfManifest.optString(adobeDCXComponent.getComponentId(), null);
        if (strOptString == null && adobeDCXManifest.getUCIDOfComponent(adobeDCXComponent) == null) {
            String storageIdWithPathExtension = getStorageIdWithPathExtension(adobeDCXComponent);
            try {
                storageIdLookupOfManifest.putOpt(adobeDCXComponent.getComponentId(), storageIdWithPathExtension);
                return storageIdWithPathExtension;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXLocalStorageCopyOnWrite.getStorageIdForComponent", e2.getMessage());
                return null;
            }
        }
        return strOptString;
    }

    private String getStorageIdForComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, boolean z) {
        if (z) {
            return getStorageIdForComponent(adobeDCXComponent, adobeDCXManifest);
        }
        JSONObject storageIdLookupOfManifest = getStorageIdLookupOfManifest(adobeDCXManifest, false);
        if (storageIdLookupOfManifest != null) {
            return storageIdLookupOfManifest.optString(adobeDCXComponent.getComponentId(), null);
        }
        return null;
    }

    private void setStorageId(String str, AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest) {
        JSONObject storageIdLookupOfManifest = getStorageIdLookupOfManifest(adobeDCXManifest, true);
        try {
            if (str == null) {
                storageIdLookupOfManifest.remove(adobeDCXComponent.getComponentId());
            } else {
                storageIdLookupOfManifest.putOpt(adobeDCXComponent.getComponentId(), str);
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXLocalStorageCopyOnWrite.setStorageId", e2.getMessage());
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public String getNewPathOfComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("Parameter composite must have a non-nil path.");
        }
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Parameter component must not be nil.");
        }
        String strConcat = FilenameUtils.concat(FilenameUtils.concat(adobeDCXComposite.getPath(), "components"), getStorageIdWithPathExtension(adobeDCXComponent));
        if (new File(strConcat).exists()) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentWriteFailure, "Component file already exits at " + strConcat);
        }
        return strConcat;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean updateComponent(AdobeDCXMutableComponent adobeDCXMutableComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, String str) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXMutableComponent == null) {
            throw new AssertionError("Parameter component must not be nil.");
        }
        if (str == null) {
            setStorageId(null, adobeDCXMutableComponent, adobeDCXManifest);
        } else {
            String strNormalizeNoEndSeparator = FilenameUtils.normalizeNoEndSeparator(FilenameUtils.concat(adobeDCXComposite.getPath(), "components"));
            String strNormalize = FilenameUtils.normalize(str);
            if (!strNormalize.startsWith(strNormalizeNoEndSeparator)) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalStoragePath, "Component path " + strNormalize + " reaches out of composite directory");
            }
            setStorageId(new File(strNormalize).getName(), adobeDCXMutableComponent, adobeDCXManifest);
            AdobeStorageFileUtils.touch(strNormalize);
            if (adobeDCXComposite.getLockImmutableComponents()) {
                AdobeStorageFileUtils.setReadOnly(strNormalize);
            }
            adobeDCXMutableComponent.setLength(FileUtils.sizeOf(new File(strNormalize)));
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
        if (adobeDCXManifest.getUCIDOfComponent(adobeDCXComponent) != null) {
            return null;
        }
        String storageIdForComponent = getStorageIdForComponent(adobeDCXComponent, adobeDCXManifest);
        String strNormalizeNoEndSeparator = FilenameUtils.normalizeNoEndSeparator(FilenameUtils.concat(adobeDCXComposite.getPath(), "components"));
        String strNormalize = FilenameUtils.normalize(FilenameUtils.concat(strNormalizeNoEndSeparator, storageIdForComponent));
        if (!strNormalize.startsWith(strNormalizeNoEndSeparator)) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalStoragePath, "Component path " + adobeDCXComponent.getPath() + " reaches out of composite directory");
        }
        return strNormalize;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean acceptPulledManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        boolean zMoveFileAtomicallyFrom = true;
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("Parameter composite must have a non-nil path.");
        }
        String strPullManifestPathForComposite = pullManifestPathForComposite(adobeDCXComposite);
        String currentManifestPathForComposite = getCurrentManifestPathForComposite(adobeDCXComposite);
        if (adobeDCXManifest != null) {
            adobeDCXManifest.writeToFile(currentManifestPathForComposite, true);
            FileUtils.deleteQuietly(new File(strPullManifestPathForComposite));
        } else {
            if (!new File(strPullManifestPathForComposite).exists()) {
                return true;
            }
            zMoveFileAtomicallyFrom = AdobeStorageFileUtils.moveFileAtomicallyFrom(strPullManifestPathForComposite, currentManifestPathForComposite);
        }
        if (zMoveFileAtomicallyFrom) {
            boolean zMoveFileAtomicallyFrom2 = AdobeStorageFileUtils.moveFileAtomicallyFrom(pullBaseManifestPathForComposite(adobeDCXComposite), getCurrentBaseManifestPathForComposite(adobeDCXComposite));
            adobeDCXComposite.updateBaseBranch();
            return zMoveFileAtomicallyFrom2;
        }
        return zMoveFileAtomicallyFrom;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean discardPullOfComposite(AdobeDCXComposite adobeDCXComposite) {
        File file = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PULL_MANIFEST_PATH));
        boolean z = !file.exists() || FileUtils.deleteQuietly(file);
        if (!z) {
            return z;
        }
        File file2 = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PULL_BASE_MANIFEST_PATH));
        return !file2.exists() || FileUtils.deleteQuietly(file2);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean acceptPushedManifest_depcrecated(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        boolean zMoveFileAtomicallyFrom;
        boolean z = false;
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("Parameter composite must have a non-nil path.");
        }
        String currentManifestPathForComposite = getCurrentManifestPathForComposite(adobeDCXComposite);
        if (adobeDCXManifest == null) {
            zMoveFileAtomicallyFrom = AdobeStorageFileUtils.moveFileAtomicallyFrom(pushManifestPathForComposite(adobeDCXComposite), currentManifestPathForComposite);
        } else {
            adobeDCXManifest.writeToFile(currentManifestPathForComposite, true);
            File file = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PUSH_MANIFEST_PATH));
            zMoveFileAtomicallyFrom = !file.exists() || FileUtils.deleteQuietly(file);
        }
        if (zMoveFileAtomicallyFrom) {
            zMoveFileAtomicallyFrom = AdobeStorageFileUtils.moveFileAtomicallyFrom(pushBaseManifestPathForComposite(adobeDCXComposite), getCurrentBaseManifestPathForComposite(adobeDCXComposite));
            adobeDCXComposite.updateBaseBranch();
        }
        if (zMoveFileAtomicallyFrom) {
            File file2 = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PUSH_JOURNAL_PATH));
            if (!file2.exists() || FileUtils.deleteQuietly(file2)) {
                z = true;
            }
        } else {
            z = zMoveFileAtomicallyFrom;
        }
        if (z) {
            removeUnusedLocalFilesOfComposite(adobeDCXComposite);
        }
        return z;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean discardPushOfComposite(AdobeDCXComposite adobeDCXComposite) {
        boolean z = false;
        File file = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PUSH_JOURNAL_PATH));
        boolean z2 = !file.exists() || FileUtils.deleteQuietly(file);
        if (z2) {
            File file2 = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PUSH_MANIFEST_PATH));
            z2 = !file2.exists() || FileUtils.deleteQuietly(file2);
        }
        if (z2) {
            File file3 = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_PUSH_BASE_MANIFEST_PATH));
            if (!file3.exists() || FileUtils.deleteQuietly(file3)) {
                z = true;
            }
        } else {
            z = z2;
        }
        if (z) {
            removeUnusedLocalFilesOfComposite(adobeDCXComposite);
        }
        return z;
    }

    private boolean discardBaseOfComposite(AdobeDCXComposite adobeDCXComposite) {
        File file = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), ADOBE_DCX_BASE_MANIFEST_PATH));
        boolean zDeleteQuietly = true;
        if (file.exists()) {
            zDeleteQuietly = FileUtils.deleteQuietly(file);
        }
        if (zDeleteQuietly) {
            adobeDCXComposite.updateBaseBranch();
        }
        return zDeleteQuietly;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean resetBindingOfComposite(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if ($assertionsDisabled || adobeDCXComposite.getPath() != null) {
            return discardPullOfComposite(adobeDCXComposite) && discardBaseOfComposite(adobeDCXComposite) && discardPushOfComposite(adobeDCXComposite);
        }
        throw new AssertionError("Parameter composite must have a non-nil path.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean removeLocalFilesOfComposite(AdobeDCXComposite adobeDCXComposite) {
        File[] fileArrListFiles;
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Parameter composite must not be nil.");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("Parameter composite must have a non-nil path.");
        }
        File file = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), "components"));
        if (file.exists() && file.isDirectory() && ((fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length == 0)) {
            return false;
        }
        try {
            FileUtils.deleteDirectory(new File(adobeDCXComposite.getPath()));
            return true;
        } catch (IOException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXLocalStorageCopyOnWrite.removeLocalFilesOfComposite", e2.getMessage());
            return false;
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public long removeUnusedLocalFilesOfComposite(AdobeDCXComposite adobeDCXComposite) {
        Date date;
        boolean z;
        File[] fileArrListFiles;
        HashSet hashSet;
        JSONObject storageIdLookupOfManifest;
        Date date2;
        boolean z2;
        AdobeDCXException adobeDCXException;
        long length = 0;
        String[] strArr = {"manifest", ADOBE_DCX_BASE_MANIFEST_PATH, ADOBE_DCX_PULL_MANIFEST_PATH, ADOBE_DCX_PULL_BASE_MANIFEST_PATH, ADOBE_DCX_PUSH_MANIFEST_PATH, ADOBE_DCX_PUSH_BASE_MANIFEST_PATH};
        ArrayList<JSONObject> arrayList = new ArrayList();
        try {
            synchronized (ft) {
                date = ft.parse(DISTANT_FUTURE_STRING);
            }
            AdobeDCXException e2 = null;
            int length2 = strArr.length;
            int i = 0;
            boolean z3 = false;
            Date date3 = date;
            while (true) {
                if (i >= length2) {
                    z = z3;
                    break;
                }
                String str = strArr[i];
                String strConcat = FilenameUtils.concat(adobeDCXComposite.getPath(), str);
                try {
                    File file = new File(strConcat);
                    if (file.exists()) {
                        z = str.equals(ADOBE_DCX_BASE_MANIFEST_PATH) ? true : z3;
                        Date date4 = new Date(file.lastModified());
                        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile = null;
                        try {
                            adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(strConcat);
                        } catch (AdobeDCXException e3) {
                            e2 = e3;
                        }
                        if (adobeDCXManifestCreateManifestWithContentsOfFile != null && e2 == null) {
                            if (!date4.before(date3)) {
                                date4 = date3;
                            }
                            JSONObject storageIdLookupOfManifest2 = getStorageIdLookupOfManifest(adobeDCXManifestCreateManifestWithContentsOfFile, false);
                            if (storageIdLookupOfManifest2 != null) {
                                arrayList.add(storageIdLookupOfManifest2);
                            }
                            date3 = date4;
                        }
                        if (e2 != null) {
                            break;
                        }
                        adobeDCXException = e2;
                        date2 = date3;
                        z2 = z;
                    } else {
                        AdobeDCXException adobeDCXException2 = e2;
                        date2 = date3;
                        z2 = z3;
                        adobeDCXException = adobeDCXException2;
                    }
                    i++;
                    AdobeDCXException adobeDCXException3 = adobeDCXException;
                    z3 = z2;
                    date3 = date2;
                    e2 = adobeDCXException3;
                } catch (Exception e4) {
                    return -1L;
                }
            }
            AdobeDCXManifest activePushManifest = adobeDCXComposite.getActivePushManifest();
            if (!z && activePushManifest != null && (storageIdLookupOfManifest = getStorageIdLookupOfManifest(activePushManifest, false)) != null) {
                arrayList.add(storageIdLookupOfManifest);
            }
            if (e2 == null && arrayList.size() > 0) {
                HashSet hashSet2 = null;
                for (JSONObject jSONObject : arrayList) {
                    JSONArray jSONArray = new JSONArray();
                    AdobeStorageCopyUtils.addObjectsToArray(jSONObject, jSONArray);
                    if (jSONObject.length() > 0) {
                        hashSet = hashSet2 == null ? new HashSet(jSONObject.length()) : hashSet2;
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            hashSet.add(jSONArray.optString(i2));
                        }
                    } else {
                        hashSet = hashSet2;
                    }
                    hashSet2 = hashSet;
                }
                File file2 = new File(FilenameUtils.concat(adobeDCXComposite.getPath(), "components"));
                if (file2.exists() && file2.isDirectory() && (fileArrListFiles = file2.listFiles()) != null) {
                    for (File file3 : fileArrListFiles) {
                        if (hashSet2 != null && !hashSet2.contains(file3.getName()) && new Date(file3.lastModified()).before(date3) && AdobeStorageFileUtils.clearReadOnly(file3.getAbsolutePath())) {
                            length += file3.length();
                            file3.delete();
                        }
                    }
                }
            }
            long j = length;
            if (j <= 0) {
                return -1L;
            }
            return j;
        } catch (ParseException e5) {
            return -1L;
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public void updateLocalStorageDataInManifest(AdobeDCXManifest adobeDCXManifest, List<AdobeDCXManifest> list) {
        String storageIdWithPathExtension;
        boolean z;
        ArrayList<AdobeDCXComponent> arrayList = new ArrayList();
        AdobeStorageCopyUtils.addEntriesFromComponentsMapToArray(adobeDCXManifest.getAllComponents(), arrayList);
        boolean z2 = false;
        for (AdobeDCXComponent adobeDCXComponent : arrayList) {
            String storageIdForComponent = getStorageIdForComponent(adobeDCXComponent, adobeDCXManifest, false);
            if (storageIdForComponent == null) {
                Iterator<AdobeDCXManifest> it = list.iterator();
                String storageIdForComponent2 = storageIdForComponent;
                while (true) {
                    if (!it.hasNext()) {
                        storageIdWithPathExtension = storageIdForComponent2;
                        z = z2;
                        break;
                    }
                    AdobeDCXManifest next = it.next();
                    if (next != null) {
                        AdobeDCXComponent adobeDCXComponent2 = next.getAllComponents() != null ? next.getAllComponents().get(adobeDCXComponent.getComponentId()) : null;
                        if (adobeDCXComponent2 != null && next.getUCIDOfComponent(adobeDCXComponent2) != null) {
                            storageIdWithPathExtension = storageIdForComponent2;
                            z = true;
                            break;
                        } else {
                            if (adobeDCXComponent2 != null && adobeDCXComponent.getEtag().equals(adobeDCXComponent2.getEtag()) && !adobeDCXComponent2.getState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified) && (storageIdForComponent2 = getStorageIdForComponent(adobeDCXComponent2, next)) != null) {
                                storageIdWithPathExtension = storageIdForComponent2;
                                z = z2;
                                break;
                            }
                            storageIdForComponent2 = storageIdForComponent2;
                        }
                    }
                }
                if (z) {
                    z2 = false;
                } else {
                    if (storageIdWithPathExtension == null) {
                        storageIdWithPathExtension = getStorageIdWithPathExtension(adobeDCXComponent);
                    }
                    setStorageId(storageIdWithPathExtension, adobeDCXComponent, adobeDCXManifest);
                    z2 = z;
                }
            }
        }
    }

    public void updateLocalStorageDataInManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXManifest adobeDCXManifest2) {
        ArrayList<AdobeDCXComponent> arrayList = new ArrayList();
        AdobeStorageCopyUtils.addEntriesFromComponentsMapToArray(adobeDCXManifest.getAllComponents(), arrayList);
        for (AdobeDCXComponent adobeDCXComponent : arrayList) {
            AdobeDCXComponent adobeDCXComponent2 = (adobeDCXManifest2 == null || adobeDCXManifest2.getAllComponents() == null) ? null : adobeDCXManifest2.getAllComponents().get(adobeDCXComponent.getComponentId());
            if (adobeDCXManifest2 == null || adobeDCXComponent2 == null || adobeDCXManifest2.getUCIDOfComponent(adobeDCXComponent2) == null) {
                String storageIdForComponent = (adobeDCXComponent2 == null || !adobeDCXComponent.getEtag().equals(adobeDCXComponent2.getEtag())) ? null : getStorageIdForComponent(adobeDCXComponent2, adobeDCXManifest2);
                if (storageIdForComponent == null) {
                    storageIdForComponent = getStorageIdWithPathExtension(adobeDCXComponent);
                }
                setStorageId(storageIdForComponent, adobeDCXComponent, adobeDCXManifest);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public void didRemoveComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest) {
        didRemoveLocalFileForComponent(adobeDCXComponent, adobeDCXManifest);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public void didRemoveLocalFileForComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest) {
        JSONObject storageIdLookupOfManifest = getStorageIdLookupOfManifest(adobeDCXManifest, false);
        if (storageIdLookupOfManifest != null && storageIdLookupOfManifest.opt(adobeDCXComponent.getComponentId()) != null) {
            storageIdLookupOfManifest.remove(adobeDCXComponent.getComponentId());
        }
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
        JSONObject storageIdLookupOfManifest = getStorageIdLookupOfManifest(adobeDCXCompositeBranch.getManifest(), false);
        if (storageIdLookupOfManifest != null) {
            for (AdobeDCXComponent adobeDCXComponent : allComponents) {
                if (storageIdLookupOfManifest.opt(adobeDCXComponent.getComponentId()) != null) {
                    try {
                        pathOfComponent = getPathOfComponent(adobeDCXComponent, adobeDCXCompositeBranch.getManifest(), weakComposite, adobeDCXCompositeBranch == weakComposite.getPulled());
                    } catch (AdobeDCXException e2) {
                        AdobeLogger.log(Level.DEBUG, "AdobeDCXLocalStorageCopyOnWrite.existingLocalStoragePathsForComponentsInBranch", e2.getMessage());
                        pathOfComponent = null;
                    }
                    if (pathOfComponent != null) {
                        File file = new File(pathOfComponent);
                        if (file.exists() && !file.isDirectory()) {
                            map.put(adobeDCXComponent.getComponentId(), pathOfComponent);
                        }
                    }
                }
            }
        }
        return map;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    public boolean assetOfComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXManifest adobeDCXManifest2) {
        String storageIdForComponent = getStorageIdForComponent(adobeDCXComponent, adobeDCXManifest);
        String storageIdForComponent2 = getStorageIdForComponent(adobeDCXComponent, adobeDCXManifest2);
        return (storageIdForComponent == null || storageIdForComponent2 == null || !storageIdForComponent.equals(storageIdForComponent2)) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1 A[PHI: r3
  0x00e1: PHI (r3v6 com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException) = 
  (r3v5 com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException)
  (r3v13 com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException)
 binds: [B:11:0x006d, B:14:0x0085] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXLocalStorageProtocol
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite createCompositeAsCopyOf(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r14, com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.net.URI r20, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r21) throws com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXLocalStorageCopyOnWrite.createCompositeAsCopyOf(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite, com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.net.URI, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController):com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite");
    }
}
