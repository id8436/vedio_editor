.class Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$2;
.super Ljava/lang/Object;
.source "BehanceSDKCreativeFieldsFilterDialogOld.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;)V

    .line 108
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->dismiss()V

    .line 109
    return-void
.end method
