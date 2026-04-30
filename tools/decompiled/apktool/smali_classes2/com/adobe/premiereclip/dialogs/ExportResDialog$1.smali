.class Lcom/adobe/premiereclip/dialogs/ExportResDialog$1;
.super Ljava/lang/Object;
.source "ExportResDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

.field final synthetic val$messageSetDefault:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dialogs/ExportResDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$1;->this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

    iput-object p2, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$1;->val$messageSetDefault:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 90
    if-eqz p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$1;->val$messageSetDefault:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_0
    return-void
.end method
