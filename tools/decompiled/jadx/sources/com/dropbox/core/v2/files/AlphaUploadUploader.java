package com.dropbox.core.v2.files;

import com.dropbox.core.DbxUploader;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.v2.files.FileMetadata;
import com.dropbox.core.v2.files.UploadErrorWithProperties;

/* JADX INFO: loaded from: classes2.dex */
public class AlphaUploadUploader extends DbxUploader<FileMetadata, UploadErrorWithProperties, UploadErrorWithPropertiesException> {
    public AlphaUploadUploader(HttpRequestor.Uploader uploader, String str) {
        super(uploader, FileMetadata.Serializer.INSTANCE, UploadErrorWithProperties.Serializer.INSTANCE, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.dropbox.core.DbxUploader
    public UploadErrorWithPropertiesException newException(DbxWrappedException dbxWrappedException) {
        return new UploadErrorWithPropertiesException("2/files/alpha/upload", dbxWrappedException.getRequestId(), dbxWrappedException.getUserMessage(), (UploadErrorWithProperties) dbxWrappedException.getErrorValue());
    }
}
