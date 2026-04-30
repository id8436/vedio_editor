.class Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$1;
.super Ljava/lang/Object;
.source "AdobeCommonCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "***** Async cache scrubbing event at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->access$100(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->access$200(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;I)V

    .line 104
    return-void
.end method
