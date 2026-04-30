.class Lcom/adobe/premiereclip/MainActivity$19$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/MainActivity$19;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity$19;)V
    .locals 0

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$19$3;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$3;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "AdobeAssetCollection"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2024
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$3;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->totalAssetsCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 2025
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$3;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "AssetCountMoreThanMax"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2030
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$3;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$900(Lcom/adobe/premiereclip/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2031
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$3;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2900(Lcom/adobe/premiereclip/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2032
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$3;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->this$0:Lcom/adobe/premiereclip/MainActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$19$3;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v1, v1, Lcom/adobe/premiereclip/MainActivity$19;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/MainActivity;->access$3000(Lcom/adobe/premiereclip/MainActivity;Landroid/content/Intent;)V

    .line 2034
    :cond_0
    return-void

    .line 2028
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$3;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$19;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "AssetCountMoreThanMax"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
