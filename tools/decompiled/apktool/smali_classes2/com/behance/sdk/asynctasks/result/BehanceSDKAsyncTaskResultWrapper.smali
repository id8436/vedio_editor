.class public Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
.super Ljava/lang/Object;
.source "BehanceSDKAsyncTaskResultWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private exceptionOccurred:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isExceptionOccurred()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->exceptionOccurred:Z

    return v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->exception:Ljava/lang/Exception;

    .line 20
    return-void
.end method

.method public setExceptionOccurred(Z)V
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->exceptionOccurred:Z

    .line 14
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->result:Ljava/lang/Object;

    .line 26
    return-void
.end method
