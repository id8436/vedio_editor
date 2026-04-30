.class Lcom/adobe/premiereclip/ProjectsListFragment$5;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/ProjectsListFragment;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$5;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$5;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1300(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$5;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1300(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$5;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    const v2, 0x7f0a0440

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1100(Lcom/adobe/premiereclip/ProjectsListFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$5;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1300(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    :cond_0
    return-void
.end method
