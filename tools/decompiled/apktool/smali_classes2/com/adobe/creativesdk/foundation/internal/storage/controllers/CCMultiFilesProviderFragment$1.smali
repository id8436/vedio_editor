.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$1;
.super Ljava/lang/Object;
.source "CCMultiFilesProviderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IDocumentPickerCallback;->startProvidingDocuments(Ljava/util/ArrayList;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mCallback is null cannot provide documents"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
