.class Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$3;
.super Ljava/lang/Object;
.source "BehanceSDKCreativeFieldsFilterDialogOld.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 152
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    invoke-static {v0, p1, p3}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;Landroid/widget/AdapterView;I)V

    .line 153
    return-void
.end method
