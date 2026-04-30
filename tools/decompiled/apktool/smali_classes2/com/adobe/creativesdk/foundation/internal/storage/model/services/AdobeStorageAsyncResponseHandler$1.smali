.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;
.super Ljava/lang/Object;
.source "AdobeStorageAsyncResponseHandler.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;

.field final synthetic val$callbackRequiredForHandler:Landroid/os/Handler;

.field final synthetic val$frequency:J

.field final synthetic val$href:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;JLjava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;

    iput-wide p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->val$frequency:J

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->val$href:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->val$callbackRequiredForHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 78
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string/jumbo v2, "^([0-9]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    :goto_1
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;->callback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;->onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;->callback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;->onError(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;->callback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;->onError(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    goto :goto_0

    .line 105
    :pswitch_2
    :try_start_1
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->val$frequency:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->val$href:Ljava/lang/String;

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->val$frequency:J

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->val$callbackRequiredForHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;Ljava/lang/String;JLandroid/os/Handler;)V

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 74
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;->callback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 120
    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
