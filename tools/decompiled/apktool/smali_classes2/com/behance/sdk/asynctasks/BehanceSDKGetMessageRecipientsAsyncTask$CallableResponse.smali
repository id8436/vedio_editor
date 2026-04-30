.class Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;
.super Ljava/lang/Object;
.source "BehanceSDKGetMessageRecipientsAsyncTask.java"


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

.field private responseObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;


# direct methods
.method private constructor <init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$1;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;-><init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;)V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResponseObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->responseObject:Ljava/lang/Object;

    return-object v0
.end method

.method public isExceptionOccurred()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->exceptionOccurred:Z

    return v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->exception:Ljava/lang/Exception;

    .line 188
    return-void
.end method

.method public setExceptionOccurred(Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->exceptionOccurred:Z

    .line 180
    return-void
.end method

.method public setResponseObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 195
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->responseObject:Ljava/lang/Object;

    .line 196
    return-void
.end method
