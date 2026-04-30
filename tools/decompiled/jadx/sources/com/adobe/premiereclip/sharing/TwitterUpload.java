package com.adobe.premiereclip.sharing;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.sharing.CustomTwitterApiClient;
import com.adobe.premiereclip.sharing.SharingManager;
import com.twitter.sdk.android.core.af;
import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.aj;
import com.twitter.sdk.android.core.c;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.tweetcomposer.y;
import d.an;
import d.ar;
import d.az;
import e.i;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public class TwitterUpload {
    public static final String consumerKey = "W0QnNCGa5PjjVewQZpHD1e9sC";
    public static final String consumerSecret = "YKS10jaF14CpUsrocN98yljHJIszQiTt46qs8I6986vQXyPZhn";
    private CustomTwitterApiClient customTwitterApiClient;
    private long mediaId;
    private String projectTitle;
    private String text;
    private CCVPublish ccvPublish = null;
    private long waitTime = 0;
    private SharingManager.SharingComponentListener mListener = null;
    private Uri mediaUri = null;
    private Handler mHandler = new Handler();
    private boolean cancelled = false;
    private double initProgress = 0.0d;
    private double videoUploadProgress = 0.0d;
    private double finalizeProgress = 0.0d;
    private double confirmProgress = 0.0d;
    private double sendTweetProgress = 0.0d;

    public TwitterUpload(String str, String str2, String str3, String str4) {
        this.projectTitle = str;
        this.text = str2;
        if (str3 != null && str4 != null) {
            this.customTwitterApiClient = new CustomTwitterApiClient((aj) af.a().f().b(), new ar().y().a(60L, TimeUnit.SECONDS).b(60L, TimeUnit.SECONDS).c(60L, TimeUnit.SECONDS).a());
        }
    }

    public void cancel() {
        this.mListener = null;
        this.cancelled = true;
        if (this.ccvPublish != null) {
            this.ccvPublish.cancel();
        }
    }

    public void shareToTwitter(Uri uri, String str, SharingManager.SharingComponentListener sharingComponentListener, boolean z) {
        if (z) {
            shareToTwitterViaCCV(uri, str, sharingComponentListener);
        } else {
            shareToTwitterViaNativeApi(uri, sharingComponentListener);
        }
    }

    public void sendTweetViaIntent(Context context) {
        if (this.ccvPublish != null) {
            new y(context).a(context.getString(R.string.share_twitter_text) + " " + (SharingPublishActivity.videoLinkPrefix + this.ccvPublish.getUploadId())).d();
        }
    }

    private void shareToTwitterViaCCV(Uri uri, String str, SharingManager.SharingComponentListener sharingComponentListener) {
        this.ccvPublish = new CCVPublish(this.projectTitle, "", false);
        this.ccvPublish.shareToCCV(uri, str, sharingComponentListener);
    }

    private void shareToTwitterViaNativeApi(Uri uri, SharingManager.SharingComponentListener sharingComponentListener) {
        this.mListener = sharingComponentListener;
        this.mediaUri = uri;
        new Thread(new Runnable() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.1
            @Override // java.lang.Runnable
            public void run() {
                File file = new File(TwitterUpload.this.mediaUri.getPath());
                int length = (int) file.length();
                byte[] bArr = new byte[length];
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    bufferedInputStream.read(bArr, 0, bArr.length);
                    bufferedInputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                if (bArr.length > 0) {
                    TwitterUpload.this.initUpload(bArr, length, "video/mp4");
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCompletion(final boolean z) {
        this.mHandler.post(new Runnable() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.2
            @Override // java.lang.Runnable
            public void run() {
                if (TwitterUpload.this.mListener != null) {
                    TwitterUpload.this.mListener.onCompleted(z, PremiereClipApplication.getContext().getString(R.string.sharing_error_ccv_message));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress() {
        this.mHandler.post(new Runnable() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.3
            @Override // java.lang.Runnable
            public void run() {
                if (TwitterUpload.this.mListener != null) {
                    TwitterUpload.this.mListener.onProgress((TwitterUpload.this.initProgress * 0.1d) + (0.6d * TwitterUpload.this.videoUploadProgress) + (TwitterUpload.this.finalizeProgress * 0.1d) + (TwitterUpload.this.confirmProgress * 0.1d) + (TwitterUpload.this.sendTweetProgress * 0.1d));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initUpload(final byte[] bArr, final int i, final String str) {
        if (this.cancelled) {
            notifyCompletion(false);
        }
        this.customTwitterApiClient.getInitCustomService().init("INIT", String.valueOf(i), "video/mp4", "tweet_video").a(new c<CustomTwitterApiClient.VideoUploadInit>() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.4
            @Override // com.twitter.sdk.android.core.c
            public void success(s<CustomTwitterApiClient.VideoUploadInit> sVar) {
                TwitterUpload.this.mediaId = sVar.f4108a.mediaId;
                TwitterUpload.this.initProgress = 100.0d;
                TwitterUpload.this.updateProgress();
                TwitterUpload.this.uploadChunk(bArr, i, 0, str);
            }

            @Override // com.twitter.sdk.android.core.c
            public void failure(ah ahVar) {
                Log.e("Failed", ahVar.toString());
                TwitterUpload.this.notifyCompletion(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadChunk(final byte[] bArr, final int i, final int i2, final String str) {
        if (this.cancelled) {
            notifyCompletion(false);
        }
        final int i3 = i2 * 1048576;
        final boolean z = i3 + 1048576 >= i;
        az azVar = new az() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.5
            @Override // d.az
            public an contentType() {
                return an.a(str);
            }

            @Override // d.az
            public void writeTo(i iVar) throws IOException {
                iVar.c(bArr, i3, z ? i - i3 : 1048576);
            }
        };
        this.customTwitterApiClient.getAppendCustomService().append(new az() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.7
            @Override // d.az
            public an contentType() {
                return an.a(MimeTypes.TEXT_PLAIN);
            }

            @Override // d.az
            public void writeTo(i iVar) throws IOException {
                iVar.b("APPEND", Charset.defaultCharset());
            }
        }, new az() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.6
            @Override // d.az
            public an contentType() {
                return an.a(MimeTypes.TEXT_PLAIN);
            }

            @Override // d.az
            public void writeTo(i iVar) throws IOException {
                iVar.b(String.valueOf(TwitterUpload.this.mediaId), Charset.defaultCharset());
            }
        }, azVar, new az() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.8
            @Override // d.az
            public an contentType() {
                return an.a(MimeTypes.TEXT_PLAIN);
            }

            @Override // d.az
            public void writeTo(i iVar) throws IOException {
                iVar.b(String.valueOf(i2), Charset.defaultCharset());
            }
        }).a(new c<CustomTwitterApiClient.VideoUploadPart>() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.9
            @Override // com.twitter.sdk.android.core.c
            public void success(s<CustomTwitterApiClient.VideoUploadPart> sVar) {
                if (z) {
                    TwitterUpload.this.finalizeUpload();
                    return;
                }
                TwitterUpload.this.videoUploadProgress = (((double) (i2 + 1)) / ((double) (i / 1048576))) * 100.0d;
                TwitterUpload.this.updateProgress();
                TwitterUpload.this.uploadChunk(bArr, i, i2 + 1, str);
            }

            @Override // com.twitter.sdk.android.core.c
            public void failure(ah ahVar) {
                Log.e("TwitterUpload", "Could not append video: " + ahVar);
                TwitterUpload.this.notifyCompletion(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finalizeUpload() {
        if (this.cancelled) {
            notifyCompletion(false);
        }
        this.customTwitterApiClient.getFinalizeCustomService().finalize("FINALIZE", this.mediaId).a(new c<CustomTwitterApiClient.VideoUploadEnd>() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.10
            @Override // com.twitter.sdk.android.core.c
            public void success(s<CustomTwitterApiClient.VideoUploadEnd> sVar) {
                Log.e("TwitterUpload", "Finalized upload !");
                System.out.println("TwitterUpload" + sVar.f4108a.mediaId);
                if (sVar.f4108a.processingInfo == null) {
                    TwitterUpload.this.sendTweet();
                } else {
                    if (sVar.f4108a.processingInfo.getState() != CustomTwitterApiClient.STATUS.PENDING) {
                        TwitterUpload.this.notifyCompletion(false);
                        return;
                    }
                    TwitterUpload.this.waitTime = sVar.f4108a.processingInfo.checkAfterSecs;
                    TwitterUpload.this.waitForStatus();
                }
            }

            @Override // com.twitter.sdk.android.core.c
            public void failure(ah ahVar) {
                Log.e("TwitterUpload", "Failed upload finalization");
                TwitterUpload.this.notifyCompletion(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void waitForStatus() {
        if (this.cancelled) {
            notifyCompletion(false);
        }
        if (this.waitTime <= 0) {
            sendTweet();
            return;
        }
        try {
            Thread.sleep(this.waitTime * 1000);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        this.customTwitterApiClient.getStatusCustomService().status("STATUS", this.mediaId).a(new c<CustomTwitterApiClient.VideoUploadStatus>() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.11
            @Override // com.twitter.sdk.android.core.c
            public void success(s<CustomTwitterApiClient.VideoUploadStatus> sVar) {
                if (sVar.f4108a.processingInfo == null) {
                    TwitterUpload.this.notifyCompletion(false);
                    return;
                }
                if (sVar.f4108a.processingInfo.getState() == CustomTwitterApiClient.STATUS.IN_PROGRESS) {
                    TwitterUpload.this.waitTime = sVar.f4108a.processingInfo.checkAfterSecs;
                    TwitterUpload.this.waitForStatus();
                } else if (sVar.f4108a.processingInfo.getState() == CustomTwitterApiClient.STATUS.SUCCEEDED) {
                    TwitterUpload.this.sendTweet();
                } else {
                    TwitterUpload.this.notifyCompletion(false);
                }
            }

            @Override // com.twitter.sdk.android.core.c
            public void failure(ah ahVar) {
                Log.e("TwitterUpload", "Failed upload status");
                TwitterUpload.this.notifyCompletion(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendTweet() {
        if (this.cancelled) {
            notifyCompletion(false);
        }
        this.finalizeProgress = 100.0d;
        updateProgress();
        this.customTwitterApiClient.postTweetCustomService().tweet(this.text, this.mediaId).a(new c<CustomTwitterApiClient.VideoTweet>() { // from class: com.adobe.premiereclip.sharing.TwitterUpload.12
            @Override // com.twitter.sdk.android.core.c
            public void success(s<CustomTwitterApiClient.VideoTweet> sVar) {
                Log.d("TwitterUpload", "result of status: ");
                TwitterUpload.this.sendTweetProgress = 100.0d;
                TwitterUpload.this.updateProgress();
                TwitterUpload.this.notifyCompletion(true);
            }

            @Override // com.twitter.sdk.android.core.c
            public void failure(ah ahVar) {
                Log.e("TwitterUpload", "Failed upload status");
                TwitterUpload.this.notifyCompletion(false);
            }
        });
    }
}
