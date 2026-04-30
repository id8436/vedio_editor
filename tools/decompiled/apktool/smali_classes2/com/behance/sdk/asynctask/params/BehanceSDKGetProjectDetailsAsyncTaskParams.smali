.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKGetProjectDetailsAsyncTaskParams.java"


# instance fields
.field private followHTMLButtonText:Ljava/lang/String;

.field private followingHTMLButtonText:Ljava/lang/String;

.field private isDownloadHD:Z

.field private isLargeTablet:Z

.field private projectID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getFollowHTMLButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->followHTMLButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowingHTMLButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->followingHTMLButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->projectID:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadHD()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->isDownloadHD:Z

    return v0
.end method

.method public isLargeTablet()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->isLargeTablet:Z

    return v0
.end method

.method public setDownloadHD(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->isDownloadHD:Z

    .line 43
    return-void
.end method

.method public setFollowHTMLButtonText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->followHTMLButtonText:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setFollowingHTMLButtonText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->followingHTMLButtonText:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLargeTablet(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->isLargeTablet:Z

    .line 67
    return-void
.end method

.method public setProjectID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->projectID:Ljava/lang/String;

    .line 35
    return-void
.end method
