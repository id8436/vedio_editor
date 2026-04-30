.class Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$4;
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
    .line 130
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$4;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$4;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FRAGMENT_TAG_REORDER"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 135
    return-void
.end method
