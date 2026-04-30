package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXJournal;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXPublishJournal extends AdobeDCXJournal {
    private static final String AdobeDCXPublishJournalAssetHrefKey = "asset-href";
    private static final String AdobeDCXPublishJournalFormatVersionKey = "publish-journal-format-version";
    private static final String AdobeDCXPublishJournalPublicationRecordKey = "publication-record";
    private static final String AdobeDCXPublishJournalRemixDataKey = "remix-data";
    private static final String AdobeDCXPublishJournalStatusKey = "status";
    private static final String AdobeDCXPublishJournalStatusPublishedKey = "published";
    private static final String AdobeDCXPublishJournalStatusPushedKey = "pushed";
    private static final String AdobeDCXPublishJournalStatusStagedKey = "staged";
    private JSONObject status;

    AdobeDCXPublishJournal(String str, boolean z) throws AdobeDCXException {
        super(str, new AdobeDCXJournal.AdobeDCXJournalVerifier() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXPublishJournal.1
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXJournal.AdobeDCXJournalVerifier
            public void verify(JSONObject jSONObject) throws AdobeDCXException {
                AdobeDCXException adobeDCXExceptionCreateDCXError = null;
                int iOptInt = jSONObject.optInt(AdobeDCXPublishJournal.AdobeDCXPublishJournalFormatVersionKey);
                if (jSONObject.opt("status") == null) {
                    adobeDCXExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, "No status section found.");
                } else if (iOptInt != 1) {
                    adobeDCXExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, "Format version expected: 1 -- found: " + iOptInt);
                }
                if (adobeDCXExceptionCreateDCXError != null) {
                    throw adobeDCXExceptionCreateDCXError;
                }
            }
        }, z ? null : new AdobeDCXJournal.AdobeDCXJournalCreator() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXPublishJournal.2
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXJournal.AdobeDCXJournalCreator
            public JSONObject create() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(AdobeDCXPublishJournal.AdobeDCXPublishJournalFormatVersionKey, 1);
                    jSONObject.put("status", new JSONObject());
                    return jSONObject;
                } catch (JSONException e2) {
                    return null;
                }
            }
        });
        this.status = getDict() != null ? getDict().optJSONObject("status") : null;
    }

    public static AdobeDCXPublishJournal journalPersistedAt(String str) throws AdobeDCXException {
        return new AdobeDCXPublishJournal(str, false);
    }

    public static AdobeDCXPublishJournal journalFromFile(String str) throws AdobeDCXException {
        return new AdobeDCXPublishJournal(str, true);
    }

    public String assetHref() {
        if (getDict() == null) {
            return null;
        }
        return getDict().optString(AdobeDCXPublishJournalAssetHrefKey, null);
    }

    public JSONObject publicationRecordData() {
        if (getDict() == null) {
            return null;
        }
        return getDict().optJSONObject(AdobeDCXPublishJournalPublicationRecordKey);
    }

    public boolean stageIsComplete() {
        return this.status != null && this.status.optInt(AdobeDCXPublishJournalStatusStagedKey) == 1;
    }

    public boolean pushIsComplete() {
        return this.status != null && this.status.optInt(AdobeDCXPublishJournalStatusPushedKey) == 1;
    }

    public boolean publishIsComplete() {
        return this.status != null && this.status.optInt("published") == 1;
    }

    public void recordAssetHref(String str) {
        if (getDict() != null) {
            try {
                getDict().put(AdobeDCXPublishJournalAssetHrefKey, str);
                writeToFile();
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXPublishJournal.recordAssetHref", e2.getMessage());
            }
        }
    }

    public void recordPublicationRecordData(JSONObject jSONObject) {
        if (getDict() != null) {
            try {
                getDict().put(AdobeDCXPublishJournalPublicationRecordKey, jSONObject);
                writeToFile();
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXPublishJournal.recordPublicationRecordData", e2.getMessage());
            }
        }
    }

    public void recordStageIsComplete() {
        if (this.status != null) {
            try {
                this.status.put(AdobeDCXPublishJournalStatusStagedKey, 1);
                writeToFile();
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXPublishJournal.recordStageIsComplete", e2.getMessage());
            }
        }
    }

    public void recordPushIsComplete() {
        if (this.status != null) {
            try {
                this.status.put(AdobeDCXPublishJournalStatusPushedKey, 1);
                writeToFile();
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXPublishJournal.recordPushIsComplete", e2.getMessage());
            }
        }
    }

    public void recordPublishIsComplete() {
        if (this.status != null) {
            try {
                this.status.put("published", 1);
                writeToFile();
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXPublishJournal.recordPublishIsComplete", e2.getMessage());
            }
        }
    }
}
