.class Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;
.super Ljava/lang/Object;
.source "LooksListActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;ILcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iput p2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;->val$position:I

    iput-object p3, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;->val$viewHolder:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 3

    .prologue
    .line 536
    const-string/jumbo v0, "LooksAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "error : got error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object v0, Lcom/adobe/premiereclip/library/LooksListActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4$1;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 533
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    return-void
.end method
