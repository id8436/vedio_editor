.class Lcom/adobe/creativeapps/settings/activity/ProfileFragment$4;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-virtual {v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    iget-object v2, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v2}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$200(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    return-void
.end method
