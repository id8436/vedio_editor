package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import com.dropbox.core.v2.filerequests.CreateFileRequestArgs;
import com.dropbox.core.v2.filerequests.CreateFileRequestError;
import com.dropbox.core.v2.filerequests.FileRequest;
import com.dropbox.core.v2.filerequests.GetFileRequestArgs;
import com.dropbox.core.v2.filerequests.GetFileRequestError;
import com.dropbox.core.v2.filerequests.ListFileRequestsError;
import com.dropbox.core.v2.filerequests.ListFileRequestsResult;
import com.dropbox.core.v2.filerequests.UpdateFileRequestArgs;
import com.dropbox.core.v2.filerequests.UpdateFileRequestError;

/* JADX INFO: loaded from: classes2.dex */
public class DbxUserFileRequestsRequests {
    private final DbxRawClientV2 client;

    public DbxUserFileRequestsRequests(DbxRawClientV2 dbxRawClientV2) {
        this.client = dbxRawClientV2;
    }

    FileRequest create(CreateFileRequestArgs createFileRequestArgs) throws DbxException {
        try {
            return (FileRequest) this.client.rpcStyle(this.client.getHost().getApi(), "2/file_requests/create", createFileRequestArgs, false, CreateFileRequestArgs.Serializer.INSTANCE, FileRequest.Serializer.INSTANCE, CreateFileRequestError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new CreateFileRequestErrorException("2/file_requests/create", e2.getRequestId(), e2.getUserMessage(), (CreateFileRequestError) e2.getErrorValue());
        }
    }

    public FileRequest create(String str, String str2) throws DbxException {
        return create(new CreateFileRequestArgs(str, str2));
    }

    public CreateBuilder createBuilder(String str, String str2) {
        return new CreateBuilder(this, CreateFileRequestArgs.newBuilder(str, str2));
    }

    FileRequest get(GetFileRequestArgs getFileRequestArgs) throws DbxException {
        try {
            return (FileRequest) this.client.rpcStyle(this.client.getHost().getApi(), "2/file_requests/get", getFileRequestArgs, false, GetFileRequestArgs.Serializer.INSTANCE, FileRequest.Serializer.INSTANCE, GetFileRequestError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GetFileRequestErrorException("2/file_requests/get", e2.getRequestId(), e2.getUserMessage(), (GetFileRequestError) e2.getErrorValue());
        }
    }

    public FileRequest get(String str) throws DbxException {
        return get(new GetFileRequestArgs(str));
    }

    public ListFileRequestsResult list() throws DbxException {
        try {
            return (ListFileRequestsResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/file_requests/list", null, false, StoneSerializers.void_(), ListFileRequestsResult.Serializer.INSTANCE, ListFileRequestsError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListFileRequestsErrorException("2/file_requests/list", e2.getRequestId(), e2.getUserMessage(), (ListFileRequestsError) e2.getErrorValue());
        }
    }

    FileRequest update(UpdateFileRequestArgs updateFileRequestArgs) throws DbxException {
        try {
            return (FileRequest) this.client.rpcStyle(this.client.getHost().getApi(), "2/file_requests/update", updateFileRequestArgs, false, UpdateFileRequestArgs.Serializer.INSTANCE, FileRequest.Serializer.INSTANCE, UpdateFileRequestError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new UpdateFileRequestErrorException("2/file_requests/update", e2.getRequestId(), e2.getUserMessage(), (UpdateFileRequestError) e2.getErrorValue());
        }
    }

    public FileRequest update(String str) throws DbxException {
        return update(new UpdateFileRequestArgs(str));
    }

    public UpdateBuilder updateBuilder(String str) {
        return new UpdateBuilder(this, UpdateFileRequestArgs.newBuilder(str));
    }
}
