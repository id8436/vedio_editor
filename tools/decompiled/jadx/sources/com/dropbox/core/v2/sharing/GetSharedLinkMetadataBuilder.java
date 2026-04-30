package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.sharing.GetSharedLinkMetadataArg;

/* JADX INFO: loaded from: classes2.dex */
public class GetSharedLinkMetadataBuilder {
    private final GetSharedLinkMetadataArg.Builder _builder;
    private final DbxUserSharingRequests _client;

    GetSharedLinkMetadataBuilder(DbxUserSharingRequests dbxUserSharingRequests, GetSharedLinkMetadataArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this._client = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this._builder = builder;
    }

    public GetSharedLinkMetadataBuilder withPath(String str) {
        this._builder.withPath(str);
        return this;
    }

    public GetSharedLinkMetadataBuilder withLinkPassword(String str) {
        this._builder.withLinkPassword(str);
        return this;
    }

    public SharedLinkMetadata start() throws DbxException {
        return this._client.getSharedLinkMetadata(this._builder.build());
    }
}
