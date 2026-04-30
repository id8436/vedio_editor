.class Lcom/adobe/premiereclip/ProjectsListFragment$6;
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
    .line 580
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$6;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$6;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1300(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$6;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-static {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1300(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    :cond_0
    return-void
.end method
