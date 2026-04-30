.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$2;
.super Ljava/lang/Object;
.source "CCFilesListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
