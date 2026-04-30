package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetMessageRecipientsTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetMessageRecipientsTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.parser.BehanceUserDTOParser;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.exception.BehanceSDKUserNotAuthenticatedException;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetMessageRecipientsAsyncTask extends AsyncTask<BehanceSDKGetMessageRecipientsTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKUserDTO>>> {
    private IBehanceSDKGetMessageRecipientsTaskListener taskListener;
    private BehanceSDKGetMessageRecipientsTaskParams taskParams;

    public BehanceSDKGetMessageRecipientsAsyncTask(IBehanceSDKGetMessageRecipientsTaskListener iBehanceSDKGetMessageRecipientsTaskListener) {
        this.taskListener = iBehanceSDKGetMessageRecipientsTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKUserDTO>> doInBackground(BehanceSDKGetMessageRecipientsTaskParams... behanceSDKGetMessageRecipientsTaskParamsArr) {
        BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKUserDTO>> behanceSDKAsyncTaskResultWrapper = new BehanceSDKAsyncTaskResultWrapper<>();
        this.taskParams = behanceSDKGetMessageRecipientsTaskParamsArr[0];
        if (this.taskParams != null) {
            ArrayList arrayList = new ArrayList();
            try {
                ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(2);
                Future futureSubmit = executorServiceNewFixedThreadPool.submit(new GetContactSuggestionsCallable());
                Future futureSubmit2 = executorServiceNewFixedThreadPool.submit(new GetAllSuggestionsCallable());
                List list = (List) ((CallableResponse) futureSubmit.get()).getResponseObject();
                if (list != null && !list.isEmpty()) {
                    arrayList.addAll(list);
                }
                List list2 = (List) ((CallableResponse) futureSubmit2.get()).getResponseObject();
                if (list2 != null && !list2.isEmpty()) {
                    arrayList.addAll(list2);
                }
            } catch (Exception e2) {
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
                behanceSDKAsyncTaskResultWrapper.setException(e2);
            } catch (Throwable th) {
                behanceSDKAsyncTaskResultWrapper.setException(new BehanceSDKException(th));
                behanceSDKAsyncTaskResultWrapper.setExceptionOccurred(true);
            }
            behanceSDKAsyncTaskResultWrapper.setResult(arrayList);
        }
        return behanceSDKAsyncTaskResultWrapper;
    }

    class GetContactSuggestionsCallable implements Callable<CallableResponse<List<BehanceSDKUserDTO>>> {
        private GetContactSuggestionsCallable() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public CallableResponse<List<BehanceSDKUserDTO>> call() throws Exception {
            CallableResponse<List<BehanceSDKUserDTO>> callableResponse = new CallableResponse<>();
            callableResponse.setResponseObject(getSuggestionsFromContacts());
            return callableResponse;
        }

        private List<BehanceSDKUserDTO> getSuggestionsFromContacts() throws JSONException, IOException, BehanceSDKUserNotAuthenticatedException {
            JSONArray jSONArrayOptJSONArray;
            ArrayList arrayList = new ArrayList();
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, BehanceSDKGetMessageRecipientsAsyncTask.this.taskParams.getClientId());
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpGetRequest = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_MESSAGE_RECIPIENTS_SUGGESTIONS_FROM_CONTACTS_API_URL, map), "q", BehanceSDKGetMessageRecipientsAsyncTask.this.taskParams.getQuery()), BehanceSDKGetMessageRecipientsAsyncTask.this.taskParams.getUserAccessToken());
            if (behanceConnectionResponseInvokeHttpGetRequest.getResponseCode() == 200 && (jSONArrayOptJSONArray = new JSONObject(behanceConnectionResponseInvokeHttpGetRequest.getResponseObject()).optJSONArray("users")) != null && jSONArrayOptJSONArray.length() > 0) {
                BehanceUserDTOParser behanceUserDTOParser = new BehanceUserDTOParser();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    arrayList.add(behanceUserDTOParser.parse(jSONArrayOptJSONArray.getJSONObject(i)));
                }
            }
            return arrayList;
        }
    }

    class GetAllSuggestionsCallable implements Callable<CallableResponse<List<BehanceSDKUserDTO>>> {
        private GetAllSuggestionsCallable() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public CallableResponse<List<BehanceSDKUserDTO>> call() throws Exception {
            CallableResponse<List<BehanceSDKUserDTO>> callableResponse = new CallableResponse<>();
            callableResponse.setResponseObject(getSuggestionsFromEveryone());
            return callableResponse;
        }

        private List<BehanceSDKUserDTO> getSuggestionsFromEveryone() throws JSONException, IOException, BehanceSDKUserNotAuthenticatedException {
            JSONArray jSONArrayOptJSONArray;
            ArrayList arrayList = new ArrayList();
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, BehanceSDKGetMessageRecipientsAsyncTask.this.taskParams.getClientId());
            BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpGetRequest = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(BehanceSDKUrlUtil.appendQueryStringParam(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_MESSAGE_ACTIVE_RECIPIENTS_SUGGESTIONS_API_URL, map), "q", BehanceSDKGetMessageRecipientsAsyncTask.this.taskParams.getQuery()), BehanceSDKGetMessageRecipientsAsyncTask.this.taskParams.getUserAccessToken());
            if (behanceConnectionResponseInvokeHttpGetRequest.getResponseCode() == 200 && (jSONArrayOptJSONArray = new JSONObject(behanceConnectionResponseInvokeHttpGetRequest.getResponseObject()).optJSONArray("users")) != null && jSONArrayOptJSONArray.length() > 0) {
                BehanceUserDTOParser behanceUserDTOParser = new BehanceUserDTOParser();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    arrayList.add(behanceUserDTOParser.parse(jSONArrayOptJSONArray.getJSONObject(i)));
                }
            }
            return arrayList;
        }
    }

    class CallableResponse<T> {
        private Exception exception;
        private boolean exceptionOccurred;
        private T responseObject;

        private CallableResponse() {
        }

        public boolean isExceptionOccurred() {
            return this.exceptionOccurred;
        }

        public void setExceptionOccurred(boolean z) {
            this.exceptionOccurred = z;
        }

        public Exception getException() {
            return this.exception;
        }

        public void setException(Exception exc) {
            this.exception = exc;
        }

        public T getResponseObject() {
            return this.responseObject;
        }

        public void setResponseObject(T t) {
            this.responseObject = t;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKUserDTO>> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskListener.onGetMessageRecipientSuggestionsTaskFailure(behanceSDKAsyncTaskResultWrapper.getException());
        } else {
            this.taskListener.onGetMessageRecipientSuggestionsTaskSuccess(behanceSDKAsyncTaskResultWrapper.getResult());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onCancelled(BehanceSDKAsyncTaskResultWrapper<List<BehanceSDKUserDTO>> behanceSDKAsyncTaskResultWrapper) {
        this.taskListener.onGetMessageRecipientSuggestionsTaskCancel();
    }
}
