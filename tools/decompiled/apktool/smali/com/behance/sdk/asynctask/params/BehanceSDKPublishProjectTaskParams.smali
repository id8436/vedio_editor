.class public Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKPublishProjectTaskParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private projectID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;->projectID:Ljava/lang/String;

    return-object v0
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;->projectID:Ljava/lang/String;

    .line 13
    return-void
.end method
