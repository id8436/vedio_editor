.class Lcom/adobe/premiereclip/editor/EditorActivity$35;
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
    .line 2767
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$35;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$35;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2771
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$35;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2772
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$35;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2773
    return-void
.end method
