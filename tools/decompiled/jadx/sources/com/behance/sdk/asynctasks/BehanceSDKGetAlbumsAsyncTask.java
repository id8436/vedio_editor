package com.behance.sdk.asynctasks;

import android.content.Context;
import android.os.AsyncTask;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetAlbumsTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetAlbumsTaskParams;
import com.behance.sdk.files.LocalImageLoader;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetAlbumsAsyncTask extends AsyncTask<BehanceSDKGetAlbumsTaskParams, Void, BehanceSDKGetAlbumsTaskResult> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetAlbumsAsyncTask.class);
    private IBehanceSDKGetAlbumsTaskListener listener;

    public BehanceSDKGetAlbumsAsyncTask(IBehanceSDKGetAlbumsTaskListener iBehanceSDKGetAlbumsTaskListener) {
        this.listener = iBehanceSDKGetAlbumsTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKGetAlbumsTaskResult doInBackground(BehanceSDKGetAlbumsTaskParams... behanceSDKGetAlbumsTaskParamsArr) {
        BehanceSDKGetAlbumsTaskResult behanceSDKGetAlbumsTaskResult = new BehanceSDKGetAlbumsTaskResult();
        try {
            BehanceSDKGetAlbumsTaskParams behanceSDKGetAlbumsTaskParams = behanceSDKGetAlbumsTaskParamsArr[0];
            Context context = behanceSDKGetAlbumsTaskParams.getContextWeakReference().get();
            if (context != null) {
                behanceSDKGetAlbumsTaskResult.setAlbumsList(LocalImageLoader.getAlbumsList(context, false, behanceSDKGetAlbumsTaskParams.isShowImageSelectionSources()));
            } else {
                behanceSDKGetAlbumsTaskResult.setExceptionOccurred(true);
                behanceSDKGetAlbumsTaskResult.setException(new Exception("Context is null"));
            }
        } catch (Error e2) {
            behanceSDKGetAlbumsTaskResult.setExceptionOccurred(true);
            behanceSDKGetAlbumsTaskResult.setException(new Exception(e2));
            logger.error(e2, "Problem loading albums", new Object[0]);
        } catch (Exception e3) {
            behanceSDKGetAlbumsTaskResult.setExceptionOccurred(true);
            behanceSDKGetAlbumsTaskResult.setException(e3);
            logger.error(e3, "Problem loading albums", new Object[0]);
        }
        return behanceSDKGetAlbumsTaskResult;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKGetAlbumsTaskResult behanceSDKGetAlbumsTaskResult) {
        if (behanceSDKGetAlbumsTaskResult.isExceptionOccurred()) {
            this.listener.onGetAlbumsTaskFailure(behanceSDKGetAlbumsTaskResult.getException());
        } else {
            this.listener.onGetAlbumsTaskSuccess(behanceSDKGetAlbumsTaskResult.getAlbumsList());
        }
    }
}
