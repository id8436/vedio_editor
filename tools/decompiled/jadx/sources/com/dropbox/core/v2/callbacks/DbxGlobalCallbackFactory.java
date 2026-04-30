package com.dropbox.core.v2.callbacks;

/* JADX INFO: loaded from: classes2.dex */
public interface DbxGlobalCallbackFactory {
    DbxNetworkErrorCallback createNetworkErrorCallback(String str);

    <T> DbxRouteErrorCallback<T> createRouteErrorCallback(String str, T t);
}
