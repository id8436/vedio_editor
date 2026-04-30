package com.dropbox.core;

import com.dropbox.core.ApiErrorResponse;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.v2.callbacks.DbxGlobalCallbackFactory;
import com.dropbox.core.v2.callbacks.DbxRouteErrorCallback;
import com.google.gdata.data.photos.TagData;
import java.io.IOException;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public final class DbxWrappedException extends Exception {
    private static final long serialVersionUID = 0;
    private final Object errValue;
    private final String requestId;
    private final LocalizedText userMessage;

    public DbxWrappedException(Object obj, String str, LocalizedText localizedText) {
        this.errValue = obj;
        this.requestId = str;
        this.userMessage = localizedText;
    }

    public Object getErrorValue() {
        return this.errValue;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public LocalizedText getUserMessage() {
        return this.userMessage;
    }

    public static <T> DbxWrappedException fromResponse(StoneSerializer<T> stoneSerializer, HttpRequestor.Response response, String str) throws IOException {
        String requestId = DbxRequestUtil.getRequestId(response);
        ApiErrorResponse<T> apiErrorResponseDeserialize = new ApiErrorResponse.Serializer(stoneSerializer).deserialize(response.getBody());
        T error = apiErrorResponseDeserialize.getError();
        DbxGlobalCallbackFactory dbxGlobalCallbackFactory = DbxRequestUtil.sharedCallbackFactory;
        executeBlockForObject(dbxGlobalCallbackFactory, str, error);
        executeOtherBlocks(dbxGlobalCallbackFactory, str, error);
        return new DbxWrappedException(error, requestId, apiErrorResponseDeserialize.getUserMessage());
    }

    public static void executeOtherBlocks(DbxGlobalCallbackFactory dbxGlobalCallbackFactory, String str, Object obj) {
        try {
            String str2 = obj.getClass().getMethod(TagData.KIND, new Class[0]).invoke(obj, new Object[0]).toString().toLowerCase() + "value";
            for (Field field : obj.getClass().getDeclaredFields()) {
                if (field.getName().equalsIgnoreCase(str2)) {
                    field.setAccessible(true);
                    executeBlockForObject(dbxGlobalCallbackFactory, str, field.get(obj));
                    return;
                }
            }
        } catch (Exception e2) {
        }
    }

    public static <T> void executeBlockForObject(DbxGlobalCallbackFactory dbxGlobalCallbackFactory, String str, T t) {
        DbxRouteErrorCallback<T> dbxRouteErrorCallbackCreateRouteErrorCallback;
        if (dbxGlobalCallbackFactory != null && (dbxRouteErrorCallbackCreateRouteErrorCallback = dbxGlobalCallbackFactory.createRouteErrorCallback(str, t)) != null) {
            dbxRouteErrorCallbackCreateRouteErrorCallback.setRouteError(t);
            dbxRouteErrorCallbackCreateRouteErrorCallback.run();
        }
    }
}
