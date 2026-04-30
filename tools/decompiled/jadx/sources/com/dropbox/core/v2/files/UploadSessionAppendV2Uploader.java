package com.dropbox.core.v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.files.UploadSessionLookupError;

/* JADX INFO: loaded from: classes2.dex */
public class UploadSessionAppendV2Uploader extends DbxUploader<Void, UploadSessionLookupError, UploadSessionLookupErrorException> {
    public UploadSessionAppendV2Uploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, StoneSerializers.void_(), UploadSessionLookupError.Serializer.INSTANCE, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.dropbox.core.DbxUploader
    public UploadSessionLookupErrorException newException(DbxWrappedException dbxWrappedException) {
        return new UploadSessionLookupErrorException("2/files/upload_session/append_v2", dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), (UploadSessionLookupError) dbxWrappedException.getErrorValue());
    }
}
