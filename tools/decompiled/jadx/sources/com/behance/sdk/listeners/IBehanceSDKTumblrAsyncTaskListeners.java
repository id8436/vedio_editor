package com.behance.sdk.listeners;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKTumblrAsyncTaskListeners {
    void onGetAuthURLTaskFailure(Exception exc);

    void onGetAuthURLTaskSuccess(String str);

    void onPostProjectTaskTaskFailure(Exception exc);

    void onPostProjectTaskTaskSuccess(String str);

    void onRetrieveBlogListTaskFailure(Exception exc);

    void onRetrieveBlogListTaskSuccess(List<String> list);

    void onRetrieveTokenTaskFailure(Exception exc);

    void onRetrieveTokenTaskSuccess(String str);
}
