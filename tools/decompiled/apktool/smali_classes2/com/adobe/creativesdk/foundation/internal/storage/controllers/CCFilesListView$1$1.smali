.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$1;
.super Ljava/lang/Object;
.source "CCFilesListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;->val$renditionRequestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1$1;->onCompletion(Landroid/graphics/Bitmap;)V

    return-void
.end method
