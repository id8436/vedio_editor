.class Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$1;
.super Ljava/lang/Object;
.source "BehanceSDKCopyrightSettingsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->dismiss()V

    .line 77
    return-void
.end method
