.class Lcom/adobe/premiereclip/editor/EditorActivity$37;
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
    .line 2795
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$37;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$37;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2799
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$37;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2800
    return-void
.end method
