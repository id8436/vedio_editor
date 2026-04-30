package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.IOException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXJournal {
    private JSONObject dict;
    private String filePath;

    public interface AdobeDCXJournalCreator {
        JSONObject create();
    }

    public interface AdobeDCXJournalVerifier {
        void verify(JSONObject jSONObject) throws AdobeDCXException;
    }

    public String getData() {
        return this.dict.toString();
    }

    public String getFilePath() {
        return this.filePath;
    }

    protected JSONObject getDict() {
        return this.dict;
    }

    protected AdobeDCXJournal(String str, AdobeDCXJournalVerifier adobeDCXJournalVerifier, AdobeDCXJournalCreator adobeDCXJournalCreator) throws AdobeDCXException {
        String strFRead;
        JSONObject jSONObjectJSONObjectWithData;
        if (new File(str).exists()) {
            try {
                strFRead = AdobeDCXUtils.fRead(str);
            } catch (IOException e2) {
                AdobeLogger.log(Level.ERROR, "AdobeDCXJournal creation failed", e2.getMessage());
                strFRead = null;
            }
            if (strFRead == null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, String.format("Failed to read from journal file %s.", str));
            }
            jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(strFRead);
            if (jSONObjectJSONObjectWithData == null && adobeDCXJournalCreator == null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, String.format("Failed to parse the journal data from file %s.", str));
            }
        } else {
            jSONObjectJSONObjectWithData = null;
        }
        if (jSONObjectJSONObjectWithData != null && adobeDCXJournalVerifier != null) {
            try {
                adobeDCXJournalVerifier.verify(jSONObjectJSONObjectWithData);
            } catch (AdobeDCXException e3) {
                if (adobeDCXJournalCreator == null) {
                    throw e3;
                }
                jSONObjectJSONObjectWithData = null;
            }
        }
        if (jSONObjectJSONObjectWithData == null && adobeDCXJournalCreator != null) {
            jSONObjectJSONObjectWithData = adobeDCXJournalCreator.create();
        }
        if (jSONObjectJSONObjectWithData != null) {
            this.dict = jSONObjectJSONObjectWithData;
            this.filePath = str;
            return;
        }
        throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, "Could not find journal file.");
    }

    protected boolean writeToFile() {
        try {
            return AdobeDCXUtils.fWrite(this.filePath, getData()).booleanValue();
        } catch (IOException e2) {
            return false;
        }
    }

    protected boolean deleteFile() {
        if (this.filePath == null) {
            return true;
        }
        File file = new File(this.filePath);
        if (file.exists()) {
            return file.delete();
        }
        return true;
    }
}
