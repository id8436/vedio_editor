package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxUploadStyleBuilder;
import com.dropbox.core.v2.files.CommitInfo;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class UploadBuilder extends DbxUploadStyleBuilder<FileMetadata, UploadError, UploadErrorException> {
    private final CommitInfo.Builder _builder;
    private final DbxUserFilesRequests _client;

    UploadBuilder(DbxUserFilesRequests dbxUserFilesRequests, CommitInfo.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this._client = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this._builder = builder;
    }

    public UploadBuilder withMode(WriteMode writeMode) {
        this._builder.withMode(writeMode);
        return this;
    }

    public UploadBuilder withAutorename(Boolean bool) {
        this._builder.withAutorename(bool);
        return this;
    }

    public UploadBuilder withClientModified(Date date) {
        this._builder.withClientModified(date);
        return this;
    }

    public UploadBuilder withMute(Boolean bool) {
        this._builder.withMute(bool);
        return this;
    }

    @Override // com.dropbox.core.v2.DbxUploadStyleBuilder
    public UploadUploader start() throws DbxException {
        return this._client.upload(this._builder.build());
    }
}
