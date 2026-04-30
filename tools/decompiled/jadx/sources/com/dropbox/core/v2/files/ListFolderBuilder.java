package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.files.ListFolderArg;

/* JADX INFO: loaded from: classes2.dex */
public class ListFolderBuilder {
    private final ListFolderArg.Builder _builder;
    private final DbxUserFilesRequests _client;

    ListFolderBuilder(DbxUserFilesRequests dbxUserFilesRequests, ListFolderArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this._client = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this._builder = builder;
    }

    public ListFolderBuilder withRecursive(Boolean bool) {
        this._builder.withRecursive(bool);
        return this;
    }

    public ListFolderBuilder withIncludeMediaInfo(Boolean bool) {
        this._builder.withIncludeMediaInfo(bool);
        return this;
    }

    public ListFolderBuilder withIncludeDeleted(Boolean bool) {
        this._builder.withIncludeDeleted(bool);
        return this;
    }

    public ListFolderBuilder withIncludeHasExplicitSharedMembers(Boolean bool) {
        this._builder.withIncludeHasExplicitSharedMembers(bool);
        return this;
    }

    public ListFolderBuilder withIncludeMountedFolders(Boolean bool) {
        this._builder.withIncludeMountedFolders(bool);
        return this;
    }

    public ListFolderBuilder withLimit(Long l) {
        this._builder.withLimit(l);
        return this;
    }

    public ListFolderBuilder withSharedLink(SharedLink sharedLink) {
        this._builder.withSharedLink(sharedLink);
        return this;
    }

    public ListFolderResult start() throws DbxException {
        return this._client.listFolder(this._builder.build());
    }
}
