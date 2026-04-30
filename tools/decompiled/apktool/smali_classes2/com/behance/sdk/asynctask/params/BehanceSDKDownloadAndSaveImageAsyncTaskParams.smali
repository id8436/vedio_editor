.class public Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;
.super Ljava/lang/Object;
.source "BehanceSDKDownloadAndSaveImageAsyncTaskParams.java"


# instance fields
.field private context:Landroid/content/Context;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;->context:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;->url:Ljava/lang/String;

    .line 27
    return-void
.end method
