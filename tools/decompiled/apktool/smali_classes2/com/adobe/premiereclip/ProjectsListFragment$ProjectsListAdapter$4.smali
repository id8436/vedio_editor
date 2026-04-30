.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$4;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

.field final synthetic val$positiveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$4;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$4;->val$positiveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$4;->val$positiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 404
    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
