.class public interface abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;
.super Ljava/lang/Object;
.source "IDocumentPickerCallback.java"


# virtual methods
.method public abstract getActionBarToolbar()Landroid/support/v7/widget/Toolbar;
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract handleBackPress()Z
.end method

.method public abstract startProvidingDocuments(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;)V"
        }
    .end annotation
.end method
