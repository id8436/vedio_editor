.class Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$1;
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
    .line 88
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->dismiss()V

    .line 94
    return-void
.end method
