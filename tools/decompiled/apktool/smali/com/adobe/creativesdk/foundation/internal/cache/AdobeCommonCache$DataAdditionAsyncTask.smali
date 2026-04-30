.class Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;
.super Landroid/os/AsyncTask;
.source "AdobeCommonCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field _cacheName:Ljava/lang/String;

.field _callback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field _data:[B

.field _guid:Ljava/lang/String;

.field _key:Ljava/lang/String;

.field _options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;"
        }
    .end annotation
.end field

.field _retVal:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;[BLjava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_retVal:Z

    .line 497
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_data:[B

    .line 498
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_guid:Ljava/lang/String;

    .line 499
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_key:Ljava/lang/String;

    .line 500
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_options:Ljava/util/EnumSet;

    .line 501
    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_cacheName:Ljava/lang/String;

    .line 502
    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_callback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    .line 503
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 482
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 508
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_data:[B

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_guid:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_key:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_options:Ljava/util/EnumSet;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_cacheName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_retVal:Z

    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 482
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_callback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->_retVal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 516
    return-void
.end method
