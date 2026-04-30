.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$fileInternal:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

.field final synthetic val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$fileInternal:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 652
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 655
    .line 657
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v0

    .line 661
    :goto_0
    if-eqz v5, :cond_1

    const-string/jumbo v0, "hls_playlist"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    :goto_1
    const/4 v2, 0x1

    .line 665
    if-eqz v0, :cond_5

    .line 669
    :try_start_1
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 673
    :goto_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 674
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 675
    const-string/jumbo v1, "~exp=(\\d+)~"

    const/4 v8, 0x2

    invoke-static {v1, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 676
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 677
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 679
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 680
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 681
    cmp-long v1, v6, v8

    if-ltz v1, :cond_2

    move v0, v2

    move-object v1, v4

    .line 688
    :goto_3
    if-eqz v0, :cond_3

    .line 690
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video-data"

    const-string/jumbo v3, "com.adobe.cc.storage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeItemWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 691
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$fileInternal:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    iput-object v4, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hlsHref:Ljava/lang/String;

    .line 692
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;)V

    .line 700
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;)V

    .line 706
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-static {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$200(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 713
    :cond_0
    :goto_4
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 661
    goto :goto_1

    .line 670
    :catch_1
    move-exception v1

    .line 671
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v1, v0

    move v0, v3

    .line 684
    goto :goto_3

    .line 708
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$fileInternal:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hlsHref:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$fileInternal:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hlsHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$fileInternal:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    const-string/jumbo v1, "hls_playlist"

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hlsHref:Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$fileInternal:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    const-string/jumbo v1, "duration"

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->_videDuration:I

    goto :goto_4

    :cond_5
    move-object v1, v0

    move v0, v2

    goto :goto_3
.end method

.method public onMiss()V
    .locals 3

    .prologue
    .line 717
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;)V

    .line 725
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$4;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8$4;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;)V

    .line 731
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$8;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-static {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$200(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 732
    return-void
.end method
