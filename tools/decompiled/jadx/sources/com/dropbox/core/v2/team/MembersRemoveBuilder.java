package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.async.LaunchEmptyResult;
import com.dropbox.core.v2.team.MembersRemoveArg;

/* JADX INFO: loaded from: classes2.dex */
public class MembersRemoveBuilder {
    private final MembersRemoveArg.Builder _builder;
    private final DbxTeamTeamRequests _client;

    MembersRemoveBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, MembersRemoveArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this._client = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this._builder = builder;
    }

    public MembersRemoveBuilder withWipeData(Boolean bool) {
        this._builder.withWipeData(bool);
        return this;
    }

    public MembersRemoveBuilder withTransferDestId(UserSelectorArg userSelectorArg) {
        this._builder.withTransferDestId(userSelectorArg);
        return this;
    }

    public MembersRemoveBuilder withTransferAdminId(UserSelectorArg userSelectorArg) {
        this._builder.withTransferAdminId(userSelectorArg);
        return this;
    }

    public MembersRemoveBuilder withKeepAccount(Boolean bool) {
        this._builder.withKeepAccount(bool);
        return this;
    }

    public LaunchEmptyResult start() throws DbxException {
        return this._client.membersRemove(this._builder.build());
    }
}
