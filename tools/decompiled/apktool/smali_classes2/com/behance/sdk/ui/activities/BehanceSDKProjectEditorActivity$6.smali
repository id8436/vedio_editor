.class Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$100(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;Z)V

    .line 149
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v2}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$200(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$300(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-static {v2}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$200(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->access$300(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->onEditTextInActive()V

    .line 152
    :cond_0
    return-void
.end method
