.class public interface abstract Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;
.super Ljava/lang/Object;
.source "BehanceSDKImageSelectorDialogFragment.java"


# virtual methods
.method public abstract onImageSelectorOnError(Ljava/lang/Exception;)V
.end method

.method public abstract onImageSelectorSelectionBackPressed()V
.end method

.method public abstract onImageSelectorSelectionCanceled()V
.end method

.method public abstract onImageSelectorSelectionFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;)V"
        }
    .end annotation
.end method
