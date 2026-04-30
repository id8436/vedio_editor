package com.dropbox.core.v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.files.UploadSessionLookupError;

/* JADX INFO: loaded from: classes2.dex */
public class UploadSessionAppendUploader extends DbxUploader<Void, UploadSessionLookupError, UploadSessionLookupErrorException> {
    public UploadSessionAppendUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, StoneSerializers.void_(), UploadSessionLookupError.Serializer.INSTANCE, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.dropbox.core.DbxUploader
    public UploadSessionLookupErrorException newException(DbxWrappedException dbxWrappedException) {
        return new UploadSessionLookupErrorException("2/files/upload_session/append", dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), (UploadSessionLookupError) dbxWrappedException.getErrorValue());
    }
}
