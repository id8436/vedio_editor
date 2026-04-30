.class Lcom/adobe/premiereclip/sharing/SharingOptions$1;
.super Ljava/lang/Object;
.source "SharingOptions.java"

# interfaces
.implements Lcom/adobe/premiereclip/sharing/SharingManager$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingOptions;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingOptions;->access$102(Lcom/adobe/premiereclip/sharing/SharingOptions;Z)Z

    .line 199
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->access$200(Lcom/adobe/premiereclip/sharing/SharingOptions;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/sharing/SharingOptions$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/SharingOptions$1$1;-><init>(Lcom/adobe/premiereclip/sharing/SharingOptions$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public onEnded()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->access$000(Lcom/adobe/premiereclip/sharing/SharingOptions;)Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->access$000(Lcom/adobe/premiereclip/sharing/SharingOptions;)Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;->onSharingEnded()V

    .line 194
    :cond_0
    return-void
.end method
