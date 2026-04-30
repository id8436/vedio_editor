.class Lcom/adobe/premiereclip/sharing/SharingOptions$4;
.super Ljava/lang/Object;
.source "SharingOptions.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

.field final synthetic val$confirmDialog:Lcom/adobe/premiereclip/dialogs/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingOptions;Lcom/adobe/premiereclip/dialogs/ConfirmDialog;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$4;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$4;->val$confirmDialog:Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$4;->val$confirmDialog:Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->dismiss()V

    .line 374
    return-void
.end method
