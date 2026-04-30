.class Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$2;
.super Ljava/lang/Object;
.source "BehanceSDKCreativeFieldsFilterDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;

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
    .line 141
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;

    invoke-static {v0, p1, p3}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialog;Landroid/widget/AdapterView;I)V

    .line 142
    return-void
.end method
