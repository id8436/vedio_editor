.class public Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectStatusDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST:Ljava/lang/String; = "com.behance.sdk.INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST"

.field public static final INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA:Ljava/lang/String; = "com.behance.sdk.INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA"

.field private static final serialVersionUID:J = 0x74ab8e4d2ddba2adL


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private progressPercentage:I

.field private progressState:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

.field private projectCoverImageUrl:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private projectTitle:Ljava/lang/String;

.field private projectUrl:Ljava/lang/String;

.field private publishRequestId:Ljava/lang/String;

.field private reasonPhrase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getProgressPercentage()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->progressPercentage:I

    return v0
.end method

.method public getProgressState()Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->progressState:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    return-object v0
.end method

.method public getProjectCoverImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->projectCoverImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->projectTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->projectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->publishRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->exception:Ljava/lang/Throwable;

    .line 97
    return-void
.end method

.method public setProgressPercentage(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->progressPercentage:I

    .line 113
    return-void
.end method

.method public setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->progressState:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    .line 81
    return-void
.end method

.method public setProjectCoverImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->projectCoverImageUrl:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->projectId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setProjectTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->projectTitle:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setProjectUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->projectUrl:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPublishRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->publishRequestId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->reasonPhrase:Ljava/lang/String;

    .line 85
    return-void
.end method
