.class public Lcom/adobe/premiereclip/sharing/YouTubeExport;
.super Ljava/lang/Object;
.source "YouTubeExport.java"


# static fields
.field static final REQUEST_AUTHORIZATION:I = 0x1

.field private static VIDEO_FILE_FORMAT:Ljava/lang/String;


# instance fields
.field credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field public mAccountName:Ljava/lang/String;

.field public mActivity:Landroid/app/Activity;

.field public mContext:Landroid/content/Context;

.field public mDescription:Ljava/lang/String;

.field mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

.field public mTag:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mVideoAccess:Ljava/lang/String;

.field public mYoutube_scope:Ljava/lang/String;

.field public numAsyncTasks:I

.field final transport:Lcom/google/api/client/http/HttpTransport;

.field videoUri:Landroid/net/Uri;

.field public youtube:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "video/*"

    sput-object v0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->VIDEO_FILE_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 40
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 59
    iput-object p3, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mAccountName:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mVideoAccess:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mTitle:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mDescription:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mTag:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "oauth2:https://www.googleapis.com/auth/youtube.upload"

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mYoutube_scope:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mActivity:Landroid/app/Activity;

    .line 66
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mContext:Landroid/content/Context;

    .line 67
    sput-boolean v1, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->cancelled:Z

    .line 68
    sput-boolean v1, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->completed:Z

    .line 69
    return-void
.end method


# virtual methods
.method public cancelUpload()V
    .locals 2

    .prologue
    .line 100
    sget-boolean v0, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->completed:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 101
    invoke-static {}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->abortUpload()V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/YouTubeExport;->notifyCancel()V

    .line 103
    return-void
.end method

.method public getSharingPrivacy()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    const-string/jumbo v0, "NotApplicable"

    .line 73
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mVideoAccess:Ljava/lang/String;

    const-string/jumbo v2, "private"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string/jumbo v0, "Private"

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mVideoAccess:Ljava/lang/String;

    const-string/jumbo v2, "public"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const-string/jumbo v0, "Public"

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mVideoAccess:Ljava/lang/String;

    const-string/jumbo v2, "unlisted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string/jumbo v0, "Unlisted"

    goto :goto_0
.end method

.method public notifyCancel()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0541

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 113
    invoke-static {p0}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->run(Lcom/adobe/premiereclip/sharing/YouTubeExport;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepare(Landroid/net/Uri;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mYoutube_scope:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 86
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 87
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Builder;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/services/youtube/YouTube$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string/jumbo v1, "PremiereClipApplication"

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$Builder;->build()Lcom/google/api/services/youtube/YouTube;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->youtube:Lcom/google/api/services/youtube/YouTube;

    .line 90
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->videoUri:Landroid/net/Uri;

    .line 91
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/YouTubeExport;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    .line 92
    return-void
.end method

.method public startUpload(Landroid/net/Uri;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/sharing/YouTubeExport;->onPrepare(Landroid/net/Uri;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V

    .line 96
    invoke-static {p0}, Lcom/adobe/premiereclip/sharing/YoutubeAsyncLoad;->run(Lcom/adobe/premiereclip/sharing/YouTubeExport;)V

    .line 97
    return-void
.end method
