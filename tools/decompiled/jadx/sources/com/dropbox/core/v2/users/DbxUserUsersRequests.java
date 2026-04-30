package com.dropbox.core.v2.users;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import com.dropbox.core.v2.users.BasicAccount;
import com.dropbox.core.v2.users.FullAccount;
import com.dropbox.core.v2.users.GetAccountArg;
import com.dropbox.core.v2.users.GetAccountBatchArg;
import com.dropbox.core.v2.users.GetAccountBatchError;
import com.dropbox.core.v2.users.GetAccountError;
import com.dropbox.core.v2.users.SpaceUsage;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DbxUserUsersRequests {
    private final DbxRawClientV2 client;

    public DbxUserUsersRequests(DbxRawClientV2 dbxRawClientV2) {
        this.client = dbxRawClientV2;
    }

    BasicAccount getAccount(GetAccountArg getAccountArg) throws DbxException {
        try {
            return (BasicAccount) this.client.rpcStyle(this.client.getHost().getApi(), "2/users/get_account", getAccountArg, false, GetAccountArg.Serializer.INSTANCE, BasicAccount.Serializer.INSTANCE, GetAccountError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GetAccountErrorException("2/users/get_account", e2.getRequestId(), e2.getUserMessage(), (GetAccountError) e2.getErrorValue());
        }
    }

    public BasicAccount getAccount(String str) throws DbxException {
        return getAccount(new GetAccountArg(str));
    }

    List<BasicAccount> getAccountBatch(GetAccountBatchArg getAccountBatchArg) throws DbxException {
        try {
            return (List) this.client.rpcStyle(this.client.getHost().getApi(), "2/users/get_account_batch", getAccountBatchArg, false, GetAccountBatchArg.Serializer.INSTANCE, StoneSerializers.list(BasicAccount.Serializer.INSTANCE), GetAccountBatchError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GetAccountBatchErrorException("2/users/get_account_batch", e2.getRequestId(), e2.getUserMessage(), (GetAccountBatchError) e2.getErrorValue());
        }
    }

    public List<BasicAccount> getAccountBatch(List<String> list) throws DbxException {
        return getAccountBatch(new GetAccountBatchArg(list));
    }

    public FullAccount getCurrentAccount() throws DbxException {
        try {
            return (FullAccount) this.client.rpcStyle(this.client.getHost().getApi(), "2/users/get_current_account", null, false, StoneSerializers.void_(), FullAccount.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"get_current_account\":" + e2.getErrorValue());
        }
    }

    public SpaceUsage getSpaceUsage() throws DbxException {
        try {
            return (SpaceUsage) this.client.rpcStyle(this.client.getHost().getApi(), "2/users/get_space_usage", null, false, StoneSerializers.void_(), SpaceUsage.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"get_space_usage\":" + e2.getErrorValue());
        }
    }
}
