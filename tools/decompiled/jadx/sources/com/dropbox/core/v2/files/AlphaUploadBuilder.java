package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.DbxUploadStyleBuilder;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import com.dropbox.core.v2.files.CommitInfoWithProperties;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AlphaUploadBuilder extends DbxUploadStyleBuilder<FileMetadata, UploadErrorWithProperties, UploadErrorWithPropertiesException> {
    private final CommitInfoWithProperties.Builder _builder;
    private final DbxUserFilesRequests _client;

    AlphaUploadBuilder(DbxUserFilesRequests dbxUserFilesRequests, CommitInfoWithProperties.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this._client = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this._builder = builder;
    }

    public AlphaUploadBuilder withMode(WriteMode writeMode) {
        this._builder.withMode(writeMode);
        return this;
    }

    public AlphaUploadBuilder withAutorename(Boolean bool) {
        this._builder.withAutorename(bool);
        return this;
    }

    public AlphaUploadBuilder withClientModified(Date date) {
        this._builder.withClientModified(date);
        return this;
    }

    public AlphaUploadBuilder withMute(Boolean bool) {
        this._builder.withMute(bool);
        return this;
    }

    public AlphaUploadBuilder withPropertyGroups(List<PropertyGroup> list) {
        this._builder.withPropertyGroups(list);
        return this;
    }

    @Override // com.dropbox.core.v2.DbxUploadStyleBuilder
    public AlphaUploadUploader start() throws DbxException {
        return this._client.alphaUpload(this._builder.build());
    }
}
