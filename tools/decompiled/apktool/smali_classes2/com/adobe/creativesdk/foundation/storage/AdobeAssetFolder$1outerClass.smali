.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1outerClass;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 1

    .prologue
    .line 715
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1outerClass;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1outerClass;->handler:Landroid/os/Handler;

    return-void
.end method
