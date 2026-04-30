.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$11;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$11;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$11;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$3000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1833
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$11;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$3000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1834
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$11;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$3000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1835
    return-void
.end method
