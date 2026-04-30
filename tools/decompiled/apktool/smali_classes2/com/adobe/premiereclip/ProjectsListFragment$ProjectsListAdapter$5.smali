.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$oldTitle:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$project:Lcom/adobe/premiereclip/project/Project;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/widget/EditText;Ljava/lang/String;Lcom/adobe/premiereclip/project/Project;ILandroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$oldTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$project:Lcom/adobe/premiereclip/project/Project;

    iput p5, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$position:I

    iput-object p6, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$oldTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/Project;->setProjectName(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget v2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$position:I

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->notifyItemChanged(I)V

    .line 418
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$project:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->updateProjectTitleWithKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$project:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didEditTitleForMyProject(Ljava/lang/String;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$5;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 423
    :cond_1
    return-void
.end method
