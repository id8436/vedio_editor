.class Lcom/adobe/premiereclip/editor/EditorActivity$36;
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
    .line 2781
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$36;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$36;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2785
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$36;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2786
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$36;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$36;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v2, 0x7f05002f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2787
    return-void
.end method
