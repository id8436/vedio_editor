.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$2;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$2;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$2;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->notifyDataSetChanged()V

    .line 313
    return-void
.end method
