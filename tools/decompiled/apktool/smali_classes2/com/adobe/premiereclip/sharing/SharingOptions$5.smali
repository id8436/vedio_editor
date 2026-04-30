.class Lcom/adobe/premiereclip/sharing/SharingOptions$5;
.super Ljava/lang/Object;
.source "SharingOptions.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingOptions;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$5;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$5;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->access$600(Lcom/adobe/premiereclip/sharing/SharingOptions;)Lcom/adobe/premiereclip/sharing/PProSharing;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$5;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/PProSharing;->performSendToPPro(ZLcom/adobe/premiereclip/sharing/PProSharing$Listener;)Z

    .line 404
    return-void
.end method
