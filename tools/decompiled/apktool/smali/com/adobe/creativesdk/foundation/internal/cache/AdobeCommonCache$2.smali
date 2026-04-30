.class Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$2;
.super Ljava/lang/Object;
.source "AdobeCommonCache.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
