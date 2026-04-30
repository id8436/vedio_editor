.class Lcom/adobe/premiereclip/ProjectsListFragment$3;
.super Ljava/lang/Thread;
.source "ProjectsListFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/ProjectsListFragment;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$3;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$3;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->projectsUpdated()V

    .line 197
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didRefreshMyProjects()V

    .line 198
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$3;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->handleProjectViewMessageText()V

    .line 199
    return-void
.end method
