.class public Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKAppreciateProjectAsyncTaskParams.java"


# instance fields
.field private projectId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;->projectId:Ljava/lang/String;

    .line 36
    return-void
.end method
