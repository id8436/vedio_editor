package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.files.UploadSessionStartResult;

/* JADX INFO: loaded from: classes2.dex */
public class UploadSessionStartUploader extends DbxUploader<UploadSessionStartResult, Void, DbxApiException> {
    public UploadSessionStartUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, UploadSessionStartResult.Serializer.INSTANCE, StoneSerializers.void_(), str);
    }

    @Override // com.dropbox.core.DbxUploader
    protected DbxApiException newException(DbxWrappedException dbxWrappedException) {
        return new DbxApiException(dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), "Unexpected error response for \"upload_session/start\":" + dbxWrappedException.getErrorValue());
    }
}
