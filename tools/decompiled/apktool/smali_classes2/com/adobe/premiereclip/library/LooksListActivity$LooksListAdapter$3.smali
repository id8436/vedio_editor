.class Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;
.super Ljava/lang/Object;
.source "LooksListActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lcom/adobe/premiereclip/looks/CandyLook;",
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
    .line 515
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iput p2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$viewHolder:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/premiereclip/looks/CandyLook;)V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$700(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/ClipLibraryManager;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$position:I

    invoke-virtual {v0, v1, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->addLookToCurrentLooks(ILcom/adobe/premiereclip/looks/CandyLook;)V

    .line 519
    const-string/jumbo v0, "LooksAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  success : got image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/CandyLook;->getRenditionPathUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$position:I

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$viewHolder:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->getPositionView()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/CandyLook;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$900(Lcom/adobe/premiereclip/library/LooksListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lcom/adobe/premiereclip/library/LooksListActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;-><init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;Lcom/adobe/premiereclip/looks/CandyLook;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 515
    check-cast p1, Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->onCompletion(Lcom/adobe/premiereclip/looks/CandyLook;)V

    return-void
.end method
