package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXJournal;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXPushJournal extends AdobeDCXJournal {
    private static final String AdobeDCXPushJournalComponentsUploadedKey = "uploaded-components";
    private static final String AdobeDCXPushJournalCompositeArchivedKey = "composite-archived";
    private static final String AdobeDCXPushJournalCompositeCreatedKey = "composite-created";
    private static final String AdobeDCXPushJournalCompositeDeletedKey = "composite-deleted";
    private static final String AdobeDCXPushJournalCompositeHrefKey = "composite-href";
    private static final String AdobeDCXPushJournalCurrentBranchEtagKey = "current-branch-etag";
    private static final String AdobeDCXPushJournalCurrentBranchVersionKey = "current-branch-version";
    private static final String AdobeDCXPushJournalDeletedComponentsKey = "deleted-components";
    private static final String AdobeDCXPushJournalDestHrefKey = "href";
    private static final String AdobeDCXPushJournalEtagKey = "etag";
    private static final String AdobeDCXPushJournalFormatVersionKey = "push-journal-format-version";
    private static final String AdobeDCXPushJournalHrefKey = "href";
    private static final String AdobeDCXPushJournalImmutablePathsToHrefsKey = "immutable-path-to-href-lookup";
    private static final String AdobeDCXPushJournalLengthKey = "length";
    private static final String AdobeDCXPushJournalMd5Key = "md5";
    private static final String AdobeDCXPushJournalPendingDeletedComponentsKey = "pending-delete-components";
    private static final String AdobeDCXPushJournalPushCompletedKey = "push-completed";
    private static final String AdobeDCXPushJournalSrcHrefKey = "srcHref";
    private static final String AdobeDCXPushJournalVersionKey = "version";
    private JSONObject _deletedComponents;
    private JSONObject _pathToHrefLookup;
    private JSONArray _pendingDeleteComponents;
    private JSONObject _uploadedComponents;
    private WeakReference<AdobeDCXComposite> _weakComposite;

    boolean hasManifestVersion() {
        return getDict().optString("version", null) != null;
    }

    public String getCompositeHref() {
        return getDict().optString(AdobeDCXPushJournalCompositeHrefKey);
    }

    public boolean isCompositeHasBeenDeleted() {
        return (getDict() == null || getDict().optString(AdobeDCXPushJournalCompositeDeletedKey, null) == null) ? false : true;
    }

    public boolean isCompositeHasBeenArchived() {
        return (getDict() == null || getDict().optString(AdobeDCXPushJournalCompositeArchivedKey, null) == null) ? false : true;
    }

    public boolean isCompositeHasBeenCreated() {
        return (getDict() == null || getDict().optString(AdobeDCXPushJournalCompositeCreatedKey, null) == null) ? false : true;
    }

    public boolean isEmpty() {
        return getDict() == null || (getDict().optJSONObject(AdobeDCXPushJournalDeletedComponentsKey).length() == 0 && getDict().optJSONObject(AdobeDCXPushJournalComponentsUploadedKey).length() == 0 && !isComplete());
    }

    public boolean isComplete() {
        return (getDict().optString(AdobeDCXPushJournalPushCompletedKey, null) != null && hasManifestEtag()) || isCompositeHasBeenDeleted() || isCompositeHasBeenArchived();
    }

    boolean hasManifestEtag() {
        return getDict().optString("etag", null) != null;
    }

    static AdobeDCXPushJournal journalForCompositePersistedAt(AdobeDCXComposite adobeDCXComposite, String str) throws AdobeDCXException {
        return new AdobeDCXPushJournal(adobeDCXComposite, str, false);
    }

    static AdobeDCXPushJournal journalForCompositeFromFile(AdobeDCXComposite adobeDCXComposite, String str) throws AdobeDCXException {
        return new AdobeDCXPushJournal(adobeDCXComposite, str, true);
    }

    void recordUploadedManifest(AdobeDCXManifest adobeDCXManifest) {
        if (adobeDCXManifest.getEtag() != null) {
            try {
                getDict().put("etag", adobeDCXManifest.getEtag());
                getDict().put(AdobeDCXPushJournalCompositeHrefKey, adobeDCXManifest.getCompositeHref());
                getDict().put("version", adobeDCXManifest.getVersion());
                getDict().put(AdobeDCXPushJournalPushCompletedKey, 1);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXPushJournal.recordUploadedManifest", e2.getMessage());
            }
        }
        writeToFile();
    }

    boolean updateManifestWithJournalEtagAndVersion(AdobeDCXManifest adobeDCXManifest) {
        boolean z = false;
        if (hasManifestEtag()) {
            adobeDCXManifest.setEtag(getDict().optString("etag"));
            z = true;
        }
        if (hasManifestVersion()) {
            adobeDCXManifest.setVersion(getDict().optString("version"));
        }
        return z;
    }

    void recordUploadedComponent(AdobeDCXComponent adobeDCXComponent, String str, String str2) {
        recordUploadedComponent(adobeDCXComponent, str, null, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008b A[Catch: all -> 0x00af, TRY_ENTER, TryCatch #4 {, blocks: (B:20:0x005a, B:21:0x0063, B:25:0x006b, B:40:0x00b3, B:26:0x0070, B:28:0x0085, B:29:0x008b, B:30:0x0091, B:42:0x00b8, B:35:0x00a2), top: B:44:0x005a, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void recordUploadedComponent(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r6 = this;
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            java.lang.String r0 = r7.getEtag()     // Catch: org.json.JSONException -> L93
            if (r0 == 0) goto L15
            java.lang.String r0 = "etag"
            java.lang.String r2 = r7.getEtag()     // Catch: org.json.JSONException -> L93
            r1.put(r0, r2)     // Catch: org.json.JSONException -> L93
        L15:
            long r2 = r7.getLength()     // Catch: org.json.JSONException -> L93
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L29
            java.lang.String r0 = "length"
            long r2 = r7.getLength()     // Catch: org.json.JSONException -> L93
            r1.put(r0, r2)     // Catch: org.json.JSONException -> L93
        L29:
            java.lang.String r0 = r7.getMd5()     // Catch: org.json.JSONException -> L93
            if (r0 == 0) goto L39
            java.lang.String r0 = "md5"
            java.lang.String r2 = r7.getMd5()     // Catch: org.json.JSONException -> L93
            r1.put(r0, r2)     // Catch: org.json.JSONException -> L93
        L39:
            java.lang.String r0 = r7.getVersion()     // Catch: org.json.JSONException -> L93
            if (r0 == 0) goto L49
            java.lang.String r0 = "version"
            java.lang.String r2 = r7.getVersion()     // Catch: org.json.JSONException -> L93
            r1.put(r0, r2)     // Catch: org.json.JSONException -> L93
        L49:
            if (r10 == 0) goto L51
            java.lang.String r0 = "href"
            r1.put(r0, r10)     // Catch: org.json.JSONException -> L93
        L51:
            if (r9 == 0) goto L59
            java.lang.String r0 = "srcHref"
            r1.put(r0, r9)     // Catch: org.json.JSONException -> L93
        L59:
            monitor-enter(r6)
            org.json.JSONObject r0 = r6._uploadedComponents     // Catch: org.json.JSONException -> La1 java.lang.Throwable -> Laf
            java.lang.String r2 = r7.getComponentId()     // Catch: org.json.JSONException -> La1 java.lang.Throwable -> Laf
            r0.put(r2, r1)     // Catch: org.json.JSONException -> La1 java.lang.Throwable -> Laf
        L63:
            org.json.JSONObject r0 = r6._pathToHrefLookup     // Catch: java.lang.Throwable -> Laf
            if (r0 == 0) goto L70
            if (r8 == 0) goto L70
            if (r10 == 0) goto L70
            org.json.JSONObject r0 = r6._pathToHrefLookup     // Catch: java.lang.Throwable -> Laf org.json.JSONException -> Lb2
            r0.put(r8, r10)     // Catch: java.lang.Throwable -> Laf org.json.JSONException -> Lb2
        L70:
            org.json.JSONObject r0 = r6._deletedComponents     // Catch: java.lang.Throwable -> Laf
            java.lang.String r1 = r7.getComponentId()     // Catch: java.lang.Throwable -> Laf
            r0.remove(r1)     // Catch: java.lang.Throwable -> Laf
            java.lang.String r0 = r7.getComponentId()     // Catch: java.lang.Throwable -> Laf
            org.json.JSONArray r1 = r6._pendingDeleteComponents     // Catch: java.lang.Throwable -> Laf
            int r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils.find(r0, r1)     // Catch: java.lang.Throwable -> Laf
            if (r0 < 0) goto L8b
            org.json.JSONArray r1 = r6._pendingDeleteComponents     // Catch: java.lang.Throwable -> Laf org.json.JSONException -> Lb7
            r2 = 0
            r1.put(r0, r2)     // Catch: java.lang.Throwable -> Laf org.json.JSONException -> Lb7
        L8b:
            r6.clearPushCompleted()     // Catch: java.lang.Throwable -> Laf
            r6.writeToFile()     // Catch: java.lang.Throwable -> Laf
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Laf
            return
        L93:
            r0 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r2 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.String r3 = "AdobeDCXPushJournal.recordUploadedComponent"
            java.lang.String r0 = r0.getMessage()
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r2, r3, r0)
            goto L59
        La1:
            r0 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r1 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> Laf
            java.lang.String r2 = "AdobeDCXPushJournal.recordUploadedComponent"
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> Laf
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r1, r2, r0)     // Catch: java.lang.Throwable -> Laf
            goto L63
        Laf:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Laf
            throw r0
        Lb2:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> Laf
            goto L70
        Lb7:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> Laf
            goto L8b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXPushJournal.recordUploadedComponent(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent, java.lang.String, java.lang.String, java.lang.String):void");
    }

    AdobeDCXMutableComponent getUploadedComponent(AdobeDCXComponent adobeDCXComponent) {
        AdobeDCXMutableComponent mutableCopy = null;
        synchronized (this) {
            JSONObject jSONObjectOptJSONObject = this._uploadedComponents.optJSONObject(adobeDCXComponent.getComponentId());
            if (jSONObjectOptJSONObject != null) {
                mutableCopy = adobeDCXComponent.getMutableCopy();
                copyPropertiesFrom(jSONObjectOptJSONObject, mutableCopy);
            }
        }
        return mutableCopy;
    }

    public String getHrefForUploadedComponent(AdobeDCXComponent adobeDCXComponent) {
        synchronized (this) {
            JSONObject jSONObjectOptJSONObject = this._uploadedComponents.optJSONObject(adobeDCXComponent.getComponentId());
            if (jSONObjectOptJSONObject != null) {
                return jSONObjectOptJSONObject.optString("href");
            }
            return null;
        }
    }

    public String getSourceHrefForUploadedComponent(AdobeDCXComponent adobeDCXComponent) {
        synchronized (this) {
            JSONObject jSONObjectOptJSONObject = this._uploadedComponents.optJSONObject(adobeDCXComponent.getComponentId());
            if (jSONObjectOptJSONObject != null) {
                return jSONObjectOptJSONObject.optString(AdobeDCXPushJournalSrcHrefKey);
            }
            return null;
        }
    }

    public String hrefForPath(String str) {
        String strOptString = null;
        synchronized (this) {
            if (this._pathToHrefLookup != null && str != null) {
                strOptString = this._pathToHrefLookup.optString(str, null);
            }
        }
        return strOptString;
    }

    void recordDeletionOfComponent(AdobeDCXComponent adobeDCXComponent) {
        synchronized (this) {
            try {
                this._deletedComponents.put(adobeDCXComponent.getComponentId(), adobeDCXComponent.getPath());
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXPushJournal.recordDeletionOfComponent", e2.getMessage());
            }
            this._uploadedComponents.remove(adobeDCXComponent.getComponentId());
            int iFind = AdobeDCXUtils.find(adobeDCXComponent.getComponentId(), this._pendingDeleteComponents);
            if (iFind >= 0) {
                try {
                    this._pendingDeleteComponents.put(iFind, (Object) null);
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
                clearPushCompleted();
                writeToFile();
            } else {
                clearPushCompleted();
                writeToFile();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039 A[Catch: all -> 0x0056, TryCatch #1 {, blocks: (B:5:0x0003, B:7:0x000f, B:8:0x0019, B:11:0x0026, B:13:0x002d, B:15:0x0039, B:16:0x0043, B:20:0x004c, B:21:0x004f, B:24:0x0052), top: B:30:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c A[Catch: all -> 0x0056, TryCatch #1 {, blocks: (B:5:0x0003, B:7:0x000f, B:8:0x0019, B:11:0x0026, B:13:0x002d, B:15:0x0039, B:16:0x0043, B:20:0x004c, B:21:0x004f, B:24:0x0052), top: B:30:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void clearComponent(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r5) {
        /*
            r4 = this;
            r1 = 1
            monitor-enter(r4)
            r0 = 0
            org.json.JSONObject r2 = r4._uploadedComponents     // Catch: java.lang.Throwable -> L56
            java.lang.String r3 = r5.getComponentId()     // Catch: java.lang.Throwable -> L56
            boolean r2 = r2.has(r3)     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L19
            org.json.JSONObject r0 = r4._uploadedComponents     // Catch: java.lang.Throwable -> L56
            java.lang.String r2 = r5.getComponentId()     // Catch: java.lang.Throwable -> L56
            r0.remove(r2)     // Catch: java.lang.Throwable -> L56
            r0 = r1
        L19:
            java.lang.String r2 = r5.getComponentId()     // Catch: java.lang.Throwable -> L56
            org.json.JSONArray r3 = r4._pendingDeleteComponents     // Catch: java.lang.Throwable -> L56
            int r2 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils.find(r2, r3)     // Catch: java.lang.Throwable -> L56
            r3 = -1
            if (r2 == r3) goto L2d
            org.json.JSONArray r0 = r4._pendingDeleteComponents     // Catch: org.json.JSONException -> L51 java.lang.Throwable -> L56
            r3 = 0
            r0.put(r2, r3)     // Catch: org.json.JSONException -> L51 java.lang.Throwable -> L56
        L2c:
            r0 = r1
        L2d:
            org.json.JSONObject r2 = r4._deletedComponents     // Catch: java.lang.Throwable -> L56
            java.lang.String r3 = r5.getComponentId()     // Catch: java.lang.Throwable -> L56
            boolean r2 = r2.has(r3)     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L43
            org.json.JSONObject r0 = r4._deletedComponents     // Catch: java.lang.Throwable -> L56
            java.lang.String r2 = r5.getComponentId()     // Catch: java.lang.Throwable -> L56
            r0.remove(r2)     // Catch: java.lang.Throwable -> L56
            r0 = r1
        L43:
            boolean r2 = r4.clearPushCompleted()     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L4a
            r0 = r1
        L4a:
            if (r0 == 0) goto L4f
            r4.writeToFile()     // Catch: java.lang.Throwable -> L56
        L4f:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L56
            return
        L51:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L56
            goto L2c
        L56:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L56
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXPushJournal.clearComponent(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent):void");
    }

    boolean componentHasBeenDeleted(AdobeDCXComponent adobeDCXComponent) {
        boolean z;
        synchronized (this) {
            z = this._deletedComponents.opt(adobeDCXComponent.getComponentId()) != null;
        }
        return z;
    }

    ArrayList<String> deletedComponentIds() {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<String> itKeys = this._deletedComponents.keys();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        return arrayList;
    }

    String pathOfDeletedComponentWithId(String str) {
        return this._deletedComponents.optString(str);
    }

    void recordPendingDeletionOfComponent(AdobeDCXComponent adobeDCXComponent) {
        synchronized (this) {
            this._pendingDeleteComponents.put(adobeDCXComponent.getComponentId());
            this._uploadedComponents.remove(adobeDCXComponent.getComponentId());
            this._deletedComponents.remove(adobeDCXComponent.getComponentId());
            clearPushCompleted();
            writeToFile();
        }
    }

    public boolean componentIsPendingDeletion(AdobeDCXComponent adobeDCXComponent) {
        boolean z;
        synchronized (this) {
            z = AdobeDCXUtils.find(adobeDCXComponent.getComponentId(), this._pendingDeleteComponents) != -1;
        }
        return z;
    }

    void setCompositeHref(String str) {
        if (getDict() != null) {
            if (str == null) {
                getDict().remove(AdobeDCXPushJournalCompositeHrefKey);
            } else {
                try {
                    getDict().put(AdobeDCXPushJournalCompositeHrefKey, str);
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXPushJournal.setCompositeHref", e2.getMessage());
                }
            }
            writeToFile();
        }
    }

    void recordCompositeHasBeenDeleted(boolean z) {
        if (getDict() != null) {
            if (!z) {
                getDict().remove(AdobeDCXPushJournalCompositeDeletedKey);
            } else {
                try {
                    getDict().put(AdobeDCXPushJournalCompositeDeletedKey, 1);
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXPushJournal.recordCompositeHasBeenDeleted", e2.getMessage());
                }
            }
            writeToFile();
        }
    }

    void recordCompositeHasBeenArchived(boolean z) {
        if (getDict() != null) {
            if (!z) {
                getDict().remove(AdobeDCXPushJournalCompositeArchivedKey);
            } else {
                try {
                    getDict().put(AdobeDCXPushJournalCompositeArchivedKey, 1);
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXPushJournal.recordCompositeHasBeenArchived", e2.getMessage());
                }
            }
            writeToFile();
        }
    }

    void recordCompositeHasBeenCreated(boolean z) {
        if (getDict() != null) {
            if (!z) {
                getDict().remove(AdobeDCXPushJournalCompositeCreatedKey);
            } else {
                try {
                    getDict().put(AdobeDCXPushJournalCompositeCreatedKey, 1);
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXPushJournal.recordCompositeHasBeenCreated", e2.getMessage());
                }
            }
            writeToFile();
        }
    }

    ArrayList<String> getComponentIds() {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<String> itKeys = this._uploadedComponents.keys();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        if (this._deletedComponents != null && this._deletedComponents.length() > 0) {
            Iterator<String> itKeys2 = this._deletedComponents.keys();
            while (itKeys2.hasNext()) {
                arrayList.add(itKeys2.next());
            }
        }
        if (this._pendingDeleteComponents != null && this._pendingDeleteComponents.length() > 0) {
            for (int i = 0; i < this._pendingDeleteComponents.length(); i++) {
                String strOptString = this._pendingDeleteComponents.optString(i, null);
                if (strOptString != null) {
                    arrayList.add(strOptString);
                }
            }
        }
        return arrayList;
    }

    void copyPropertiesFrom(JSONObject jSONObject, AdobeDCXMutableComponent adobeDCXMutableComponent) {
        adobeDCXMutableComponent.setEtag((String) jSONObject.opt("etag"));
        adobeDCXMutableComponent.setLength(jSONObject.optLong(AdobeDCXPushJournalLengthKey));
        adobeDCXMutableComponent.setMd5((String) jSONObject.opt("md5"));
        adobeDCXMutableComponent.setVersion(jSONObject.optString("version"));
    }

    private void updateDictionary() {
        try {
            getDict().put(AdobeDCXPushJournalPendingDeletedComponentsKey, this._pendingDeleteComponents);
            getDict().put(AdobeDCXPushJournalDeletedComponentsKey, this._deletedComponents);
            getDict().put(AdobeDCXPushJournalComponentsUploadedKey, this._uploadedComponents);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXPushJournal.updateDictionary", e2.getMessage());
        }
    }

    AdobeDCXPushJournal(final AdobeDCXComposite adobeDCXComposite, String str, boolean z) throws AdobeDCXException {
        super(str, new AdobeDCXJournal.AdobeDCXJournalVerifier() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXPushJournal.1
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXJournal.AdobeDCXJournalVerifier
            public void verify(JSONObject jSONObject) throws AdobeDCXException {
                String strOptString = jSONObject.optString(AdobeDCXPushJournal.AdobeDCXPushJournalCompositeHrefKey);
                int iOptInt = jSONObject.optInt(AdobeDCXPushJournal.AdobeDCXPushJournalFormatVersionKey);
                if (iOptInt != 3 && iOptInt != 4) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, String.format("Format version expected: 3 -- found: %s.", Integer.valueOf(iOptInt)));
                }
                if (adobeDCXComposite.getHref() != null && strOptString != null && !strOptString.equals(adobeDCXComposite.getHref().toString())) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, "Composite's and journal's hrefs don't match.");
                }
                if (jSONObject.opt(AdobeDCXPushJournal.AdobeDCXPushJournalDeletedComponentsKey) == null) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, "No deleted-components section found.");
                }
                if (jSONObject.opt(AdobeDCXPushJournal.AdobeDCXPushJournalComponentsUploadedKey) == null) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, "No uploaded-components section found.");
                }
                if (jSONObject.optInt(AdobeDCXPushJournal.AdobeDCXPushJournalFormatVersionKey) == 3) {
                    if (jSONObject.opt("etag") != null) {
                        try {
                            jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalPushCompletedKey, 1);
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                    }
                    try {
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalFormatVersionKey, 4);
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
            }
        }, z ? null : new AdobeDCXJournal.AdobeDCXJournalCreator() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXPushJournal.2
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXJournal.AdobeDCXJournalCreator
            public JSONObject create() {
                JSONObject jSONObject;
                try {
                    if (adobeDCXComposite.getHref() == null) {
                        jSONObject = new JSONObject();
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalFormatVersionKey, 4);
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalCompositeHrefKey, "");
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalDeletedComponentsKey, new JSONObject());
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalPendingDeletedComponentsKey, new JSONArray());
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalImmutablePathsToHrefsKey, new JSONObject());
                    } else {
                        jSONObject = new JSONObject();
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalFormatVersionKey, 4);
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalCompositeHrefKey, adobeDCXComposite.getHref().toString());
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalComponentsUploadedKey, new JSONObject());
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalDeletedComponentsKey, new JSONObject());
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalPendingDeletedComponentsKey, new JSONArray());
                        jSONObject.put(AdobeDCXPushJournal.AdobeDCXPushJournalImmutablePathsToHrefsKey, new JSONObject());
                    }
                    return jSONObject;
                } catch (JSONException e2) {
                    return null;
                }
            }
        });
        this._weakComposite = new WeakReference<>(adobeDCXComposite);
        this._uploadedComponents = getDict().optJSONObject(AdobeDCXPushJournalComponentsUploadedKey);
        this._deletedComponents = getDict().optJSONObject(AdobeDCXPushJournalDeletedComponentsKey);
        this._pendingDeleteComponents = getDict().optJSONArray(AdobeDCXPushJournalPendingDeletedComponentsKey);
        this._pathToHrefLookup = getDict().optJSONObject(AdobeDCXPushJournalImmutablePathsToHrefsKey);
    }

    public String getCurrentBranchEtag() {
        return getDict().optString(AdobeDCXPushJournalCurrentBranchEtagKey);
    }

    public String getCurrentBranchVersion() {
        return getDict().optString(AdobeDCXPushJournalCurrentBranchVersionKey);
    }

    public void recordCurrentBranchEtag(String str, String str2) {
        if (str != null) {
            try {
                getDict().put(AdobeDCXPushJournalCurrentBranchEtagKey, str);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            if (hasManifestEtag()) {
                getDict().remove("etag");
                clearPushCompleted();
            }
        } else {
            getDict().remove(AdobeDCXPushJournalCurrentBranchEtagKey);
        }
        if (str2 != null) {
            try {
                getDict().put(AdobeDCXPushJournalCurrentBranchVersionKey, str2);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
            if (hasManifestVersion()) {
                getDict().remove("version");
                clearPushCompleted();
            }
        } else {
            getDict().remove(AdobeDCXPushJournalCurrentBranchVersionKey);
        }
        writeToFile();
    }

    boolean clearPushCompleted() {
        if (getDict().opt(AdobeDCXPushJournalPushCompletedKey) == null) {
            return false;
        }
        getDict().remove(AdobeDCXPushJournalPushCompletedKey);
        this._weakComposite.get().discardPushedManifest();
        return true;
    }
}
