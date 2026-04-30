package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.files.RelocationArg;

/* JADX INFO: loaded from: classes2.dex */
public class MoveBuilder {
    private final RelocationArg.Builder _builder;
    private final DbxUserFilesRequests _client;

    MoveBuilder(DbxUserFilesRequests dbxUserFilesRequests, RelocationArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this._client = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this._builder = builder;
    }

    public MoveBuilder withAllowSharedFolder(Boolean bool) {
        this._builder.withAllowSharedFolder(bool);
        return this;
    }

    public MoveBuilder withAutorename(Boolean bool) {
        this._builder.withAutorename(bool);
        return this;
    }

    public MoveBuilder withAllowOwnershipTransfer(Boolean bool) {
        this._builder.withAllowOwnershipTransfer(bool);
        return this;
    }

    public Metadata start() throws DbxException {
        return this._client.move(this._builder.build());
    }
}
