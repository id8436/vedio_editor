.class Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$2;
.super Ljava/lang/Object;
.source "BehanceSDKCopyrightSettingsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;

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
    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;

    invoke-static {v0, p1, p3}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;Landroid/widget/AdapterView;I)V

    .line 88
    return-void
.end method
