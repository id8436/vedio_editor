.class Lcom/adobe/premiereclip/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

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
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;

.field final synthetic val$listCollectionsAfterNameError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$listCollectionsAfterNameSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$21;->this$0:Lcom/adobe/premiereclip/MainActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/MainActivity$21;->val$listCollectionsAfterNameSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/premiereclip/MainActivity$21;->val$listCollectionsAfterNameError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2075
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/MainActivity$21;->onCompletion(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompletion(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2078
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 2079
    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/premiereclip/MainActivity$21;->val$listCollectionsAfterNameSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v5, p0, Lcom/adobe/premiereclip/MainActivity$21;->val$listCollectionsAfterNameError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->listCollectionsAfterName(Ljava/lang/String;IZLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0

    .line 2081
    :cond_0
    return-void
.end method
