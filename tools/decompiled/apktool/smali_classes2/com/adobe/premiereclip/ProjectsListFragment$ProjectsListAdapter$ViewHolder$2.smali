.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

.field final synthetic val$this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$2;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$2;->val$this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$2;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 244
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$2;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->access$200(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$2;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$2;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->access$200(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->access$300(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Ljava/lang/String;Landroid/view/View;)V

    .line 247
    :cond_0
    return-void
.end method
