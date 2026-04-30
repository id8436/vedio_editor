.class public Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;
.super Lcom/twitter/sdk/android/core/w;
.source "CustomTwitterApiClient.java"


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/aj;Ld/ar;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/w;-><init>(Lcom/twitter/sdk/android/core/aj;Ld/ar;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getAppendCustomService()Lcom/adobe/premiereclip/sharing/AppendVideoUploadAPICustomService;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/adobe/premiereclip/sharing/AppendVideoUploadAPICustomService;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/sharing/AppendVideoUploadAPICustomService;

    return-object v0
.end method

.method public getCustomService()Lcom/adobe/premiereclip/sharing/GetUsersShowAPICustomService;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/adobe/premiereclip/sharing/GetUsersShowAPICustomService;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/sharing/GetUsersShowAPICustomService;

    return-object v0
.end method

.method public getFinalizeCustomService()Lcom/adobe/premiereclip/sharing/FinalizeVideoUploadAPICustomService;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/adobe/premiereclip/sharing/FinalizeVideoUploadAPICustomService;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/sharing/FinalizeVideoUploadAPICustomService;

    return-object v0
.end method

.method public getInitCustomService()Lcom/adobe/premiereclip/sharing/InitVideoUploadAPICustomService;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/adobe/premiereclip/sharing/InitVideoUploadAPICustomService;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/sharing/InitVideoUploadAPICustomService;

    return-object v0
.end method

.method public getStatusCustomService()Lcom/adobe/premiereclip/sharing/StatusVideoUploadAPICustomService;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/adobe/premiereclip/sharing/StatusVideoUploadAPICustomService;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/sharing/StatusVideoUploadAPICustomService;

    return-object v0
.end method

.method public postTweetCustomService()Lcom/adobe/premiereclip/sharing/TweetVideoAPICustomService;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/adobe/premiereclip/sharing/TweetVideoAPICustomService;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/sharing/TweetVideoAPICustomService;

    return-object v0
.end method
