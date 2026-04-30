.class Lcom/adobe/mobile/MobileConfig$8;
.super Ljava/lang/Object;
.source "MobileConfig.java"

# interfaces
.implements Lcom/adobe/mobile/RemoteDownload$RemoteDownloadBlock;


# instance fields
.field final synthetic this$0:Lcom/adobe/mobile/MobileConfig;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/MobileConfig;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/adobe/mobile/MobileConfig$8;->this$0:Lcom/adobe/mobile/MobileConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(ZLjava/io/File;)V
    .locals 2

    .prologue
    .line 669
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getAnalyticsExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/MobileConfig$8$1;

    invoke-direct {v1, p0, p2}, Lcom/adobe/mobile/MobileConfig$8$1;-><init>(Lcom/adobe/mobile/MobileConfig$8;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 678
    return-void
.end method
