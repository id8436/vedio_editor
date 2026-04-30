.class public Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;
.super Ljava/lang/Object;
.source "BehanceSDKEditProfileTaskResult.java"


# instance fields
.field private exceptionOccurred:Z

.field private exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private profileAvatarUpdateFailed:Z

.field private profileUpdateFailed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->exceptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addException(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public isExceptionOccurred()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->exceptionOccurred:Z

    return v0
.end method

.method public isProfileAvatarUpdateFailed()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->profileAvatarUpdateFailed:Z

    return v0
.end method

.method public isProfileUpdateFailed()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->profileUpdateFailed:Z

    return v0
.end method

.method public setExceptionOccurred(Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->exceptionOccurred:Z

    .line 30
    return-void
.end method

.method public setProfileAvatarUpdateFailed(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->profileAvatarUpdateFailed:Z

    .line 22
    return-void
.end method

.method public setProfileUpdateFailed(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->profileUpdateFailed:Z

    .line 46
    return-void
.end method
