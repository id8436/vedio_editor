.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8$1;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8$1;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8$1;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;

    iget-object v0, v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8$1;->this$2:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;

    iget-object v1, v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->val$projectKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->access$1200(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Ljava/lang/String;)V

    .line 469
    return-void
.end method
