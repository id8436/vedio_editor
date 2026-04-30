.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$6;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$6;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$6;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$6;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 430
    return-void
.end method
