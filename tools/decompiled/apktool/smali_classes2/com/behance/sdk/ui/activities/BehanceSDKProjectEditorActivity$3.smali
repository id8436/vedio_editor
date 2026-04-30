.class Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$3;
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
    .line 123
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$3;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$3;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->nextFragment(Z)V

    .line 127
    return-void
.end method
