.class Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;
.super Ljava/lang/Object;
.source "ProjectsListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

.field final synthetic val$popupWindow:Landroid/widget/ListPopupWindow;

.field final synthetic val$projectKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Landroid/widget/ListPopupWindow;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->val$popupWindow:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->val$projectKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 454
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->val$popupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 456
    if-nez p3, :cond_1

    .line 457
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->val$projectKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->access$1000(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;Ljava/lang/String;)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    if-ne p3, v5, :cond_0

    .line 459
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v2, v2, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    const v3, 0x7f0a03f1

    .line 460
    invoke-static {v2, v3}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1100(Lcom/adobe/premiereclip/ProjectsListFragment;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v3, v3, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    const v4, 0x7f0a03ec

    .line 461
    invoke-static {v3, v4}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1100(Lcom/adobe/premiereclip/ProjectsListFragment;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 464
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    const v2, 0x7f0a03ee

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1100(Lcom/adobe/premiereclip/ProjectsListFragment;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8$1;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 471
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter$8;->this$1:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->this$0:Lcom/adobe/premiereclip/ProjectsListFragment;

    const v2, 0x7f0a03ed

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/ProjectsListFragment;->access$1100(Lcom/adobe/premiereclip/ProjectsListFragment;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 472
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    goto :goto_0
.end method
