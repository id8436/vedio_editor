.class Lcom/adobe/premiereclip/sharing/SharingOptions$3;
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
    .line 363
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$3;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$3;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->access$400(Lcom/adobe/premiereclip/sharing/SharingOptions;)Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->setMode(I)V

    .line 367
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$3;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->access$500(Lcom/adobe/premiereclip/sharing/SharingOptions;)V

    .line 368
    return-void
.end method
