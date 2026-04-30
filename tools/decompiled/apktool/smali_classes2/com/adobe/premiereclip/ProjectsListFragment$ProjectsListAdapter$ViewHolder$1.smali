.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$1;
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
    .line 233
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$1;->val$this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder$1;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->access$100(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;ILandroid/view/View;)V

    .line 237
    return-void
.end method
