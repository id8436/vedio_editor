.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;
.super Ljava/lang/Object;
.source "AdobeUxAssetBrowserV2Activity.java"


# instance fields
.field public requestCode:I

.field public resultCode:I

.field public resultData:Landroid/content/Intent;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;->requestCode:I

    .line 456
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;->resultData:Landroid/content/Intent;

    .line 457
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;->resultCode:I

    .line 458
    return-void
.end method
