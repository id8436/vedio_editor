.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorReorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorReorderFragment;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 81
    return-void
.end method
