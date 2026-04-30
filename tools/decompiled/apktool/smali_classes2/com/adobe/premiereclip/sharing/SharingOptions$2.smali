.class Lcom/adobe/premiereclip/sharing/SharingOptions$2;
.super Ljava/lang/Object;
.source "SharingOptions.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

.field final synthetic val$viewId:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingOptions;I)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    iput p2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$2;->val$viewId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    iget v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$2;->val$viewId:I

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingOptions;->access$300(Lcom/adobe/premiereclip/sharing/SharingOptions;I)V

    .line 253
    return-void
.end method
