.class Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$1;
.super Ljava/lang/Object;
.source "BehanceSDKLocationSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$1;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$1;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->dismiss()V

    .line 98
    return-void
.end method
