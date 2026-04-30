.class Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$2;
.super Ljava/lang/Object;
.source "BehanceSDKLocationSelectionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

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
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-static {v0, p1, p3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;Landroid/widget/AdapterView;I)V

    .line 153
    return-void
.end method
