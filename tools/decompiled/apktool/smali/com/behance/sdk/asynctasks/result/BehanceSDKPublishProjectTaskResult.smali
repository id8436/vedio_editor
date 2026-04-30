.class public Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectTaskResult.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private failedProjectModule:Lcom/behance/sdk/project/modules/ProjectModule;

.field private publishedProject:Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;

.field private reasonPhrase:Ljava/lang/String;

.field private status:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFailedMoudle()Lcom/behance/sdk/project/modules/ProjectModule;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->failedProjectModule:Lcom/behance/sdk/project/modules/ProjectModule;

    return-object v0
.end method

.method public getPublishedProject()Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->publishedProject:Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->status:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    return-object v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->exception:Ljava/lang/Throwable;

    .line 54
    return-void
.end method

.method public setFailedMoudle(Lcom/behance/sdk/project/modules/ProjectModule;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->failedProjectModule:Lcom/behance/sdk/project/modules/ProjectModule;

    .line 58
    return-void
.end method

.method public setPublishedProject(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->publishedProject:Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;

    .line 78
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->reasonPhrase:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->status:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    .line 46
    return-void
.end method
