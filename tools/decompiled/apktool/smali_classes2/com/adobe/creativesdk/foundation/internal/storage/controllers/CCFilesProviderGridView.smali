.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderGridView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;
.source "CCFilesProviderGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected disableController()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->disableController()V

    .line 33
    return-void
.end method

.method protected enableController()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->enableController()V

    .line 28
    return-void
.end method

.method protected getSelectedAssets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
