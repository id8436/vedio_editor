.class Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;
.super Ljava/lang/Object;
.source "AdobeUXAssetBrowser.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$configuration:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;

.field final synthetic val$op:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;Landroid/app/Activity;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;I)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$configuration:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$op:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;

    iput p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 197
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->onCompletion(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompletion(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$configuration:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$configuration:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->resetTabState()V

    .line 209
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 210
    return-void

    .line 203
    :cond_0
    :try_start_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;-><init>()V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;->val$op:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;->_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    goto :goto_1
.end method
