.class Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$1;
.super Ljava/lang/Object;
.source "BehanceSDKImageSelectorDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

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
    .line 258
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 259
    return-void
.end method
