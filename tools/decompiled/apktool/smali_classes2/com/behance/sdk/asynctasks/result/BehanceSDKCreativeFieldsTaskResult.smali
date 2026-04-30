.class public Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;
.super Ljava/lang/Object;
.source "BehanceSDKCreativeFieldsTaskResult.java"


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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->exception:Ljava/lang/Exception;

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
    .line 45
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isExceptionOccurred()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->exceptionOccurred:Z

    return v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->exception:Ljava/lang/Exception;

    .line 43
    return-void
.end method

.method public setExceptionOccurred(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->exceptionOccurred:Z

    .line 37
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
    .line 48
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->result:Ljava/lang/Object;

    .line 49
    return-void
.end method
