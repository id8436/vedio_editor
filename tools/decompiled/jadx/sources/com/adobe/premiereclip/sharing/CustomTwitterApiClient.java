package com.adobe.premiereclip.sharing;

import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.aj;
import com.twitter.sdk.android.core.w;
import d.ar;

/* JADX INFO: loaded from: classes2.dex */
public class CustomTwitterApiClient extends w {

    public enum STATUS {
        PENDING,
        SUCCEEDED,
        IN_PROGRESS,
        FAILED
    }

    public CustomTwitterApiClient(aj ajVar, ar arVar) {
        super(ajVar, arVar);
    }

    public GetUsersShowAPICustomService getCustomService() {
        return (GetUsersShowAPICustomService) getService(GetUsersShowAPICustomService.class);
    }

    public InitVideoUploadAPICustomService getInitCustomService() {
        return (InitVideoUploadAPICustomService) getService(InitVideoUploadAPICustomService.class);
    }

    public AppendVideoUploadAPICustomService getAppendCustomService() {
        return (AppendVideoUploadAPICustomService) getService(AppendVideoUploadAPICustomService.class);
    }

    public FinalizeVideoUploadAPICustomService getFinalizeCustomService() {
        return (FinalizeVideoUploadAPICustomService) getService(FinalizeVideoUploadAPICustomService.class);
    }

    public StatusVideoUploadAPICustomService getStatusCustomService() {
        return (StatusVideoUploadAPICustomService) getService(StatusVideoUploadAPICustomService.class);
    }

    public TweetVideoAPICustomService postTweetCustomService() {
        return (TweetVideoAPICustomService) getService(TweetVideoAPICustomService.class);
    }

    /* JADX INFO: loaded from: classes.dex */
    class VideoUploadInit {

        @SerializedName("media_id")
        public final long mediaId;

        public VideoUploadInit(long j) {
            this.mediaId = j;
        }
    }

    class VideoUploadPart {
        VideoUploadPart() {
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    class ProcessingInfo {

        @SerializedName("check_after_secs")
        public final long checkAfterSecs;

        @SerializedName("state")
        private final String state;

        public STATUS getState() {
            return STATUS.valueOf(this.state.toUpperCase());
        }

        public ProcessingInfo(String str, long j) {
            this.state = str;
            this.checkAfterSecs = j;
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    class VideoUploadEnd {

        @SerializedName("media_id")
        public final long mediaId;

        @SerializedName("processing_info")
        public final ProcessingInfo processingInfo;

        public VideoUploadEnd(long j, ProcessingInfo processingInfo) {
            this.mediaId = j;
            this.processingInfo = processingInfo;
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    class VideoUploadStatus {

        @SerializedName("processing_info")
        public final ProcessingInfo processingInfo;

        public VideoUploadStatus(ProcessingInfo processingInfo) {
            this.processingInfo = processingInfo;
        }
    }

    class VideoTweet {
        VideoTweet() {
        }
    }
}
