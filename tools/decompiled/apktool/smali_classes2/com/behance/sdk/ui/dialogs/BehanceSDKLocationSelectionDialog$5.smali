.class Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$5;
.super Ljava/lang/Object;
.source "BehanceSDKLocationSelectionDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 194
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method
