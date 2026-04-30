.class Lcom/adobe/mobile/MobileConfig$6$1;
.super Ljava/lang/Object;
.source "MobileConfig.java"

# interfaces
.implements Lcom/adobe/mobile/RemoteDownload$RemoteDownloadBlock;


# instance fields
.field final synthetic this$1:Lcom/adobe/mobile/MobileConfig$6;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/MobileConfig$6;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/adobe/mobile/MobileConfig$6$1;->this$1:Lcom/adobe/mobile/MobileConfig$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(ZLjava/io/File;)V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/adobe/mobile/MobileConfig$6$1;->this$1:Lcom/adobe/mobile/MobileConfig$6;

    iget-object v0, v0, Lcom/adobe/mobile/MobileConfig$6;->this$0:Lcom/adobe/mobile/MobileConfig;

    invoke-virtual {v0, p2}, Lcom/adobe/mobile/MobileConfig;->updateMessagesData(Ljava/io/File;)V

    .line 638
    iget-object v0, p0, Lcom/adobe/mobile/MobileConfig$6$1;->this$1:Lcom/adobe/mobile/MobileConfig$6;

    iget-object v0, v0, Lcom/adobe/mobile/MobileConfig$6;->this$0:Lcom/adobe/mobile/MobileConfig;

    invoke-static {v0}, Lcom/adobe/mobile/MobileConfig;->access$100(Lcom/adobe/mobile/MobileConfig;)V

    .line 640
    iget-object v0, p0, Lcom/adobe/mobile/MobileConfig$6$1;->this$1:Lcom/adobe/mobile/MobileConfig$6;

    iget-object v0, v0, Lcom/adobe/mobile/MobileConfig$6;->this$0:Lcom/adobe/mobile/MobileConfig;

    invoke-static {v0}, Lcom/adobe/mobile/MobileConfig;->access$200(Lcom/adobe/mobile/MobileConfig;)V

    .line 641
    return-void
.end method
