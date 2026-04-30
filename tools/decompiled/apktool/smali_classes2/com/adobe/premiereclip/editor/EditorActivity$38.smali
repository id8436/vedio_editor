.class Lcom/adobe/premiereclip/editor/EditorActivity$38;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 2828
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$38;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$38;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3300(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/sharing/SharingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->mayBeExportPPro()V

    .line 2832
    return-void
.end method
