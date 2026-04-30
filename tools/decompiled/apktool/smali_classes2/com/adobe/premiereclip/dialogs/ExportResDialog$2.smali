.class Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;
.super Ljava/lang/Object;
.source "ExportResDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

.field final synthetic val$checkBox:Landroid/support/v7/widget/AppCompatCheckBox;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dialogs/ExportResDialog;Landroid/support/v7/widget/AppCompatCheckBox;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;->this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

    iput-object p2, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;->val$checkBox:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;->this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

    invoke-static {v1}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->access$000(Lcom/adobe/premiereclip/dialogs/ExportResDialog;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;->this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

    invoke-static {v1}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->access$100(Lcom/adobe/premiereclip/dialogs/ExportResDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/ClipPreferences;->setExportResolution(I)V

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;->val$checkBox:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;->this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->access$100(Lcom/adobe/premiereclip/dialogs/ExportResDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setDefaultExportResolution(Z)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;->this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->access$200(Lcom/adobe/premiereclip/dialogs/ExportResDialog;)Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;->this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

    invoke-static {v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->access$200(Lcom/adobe/premiereclip/dialogs/ExportResDialog;)Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;->onClick()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;->this$0:Lcom/adobe/premiereclip/dialogs/ExportResDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->dismiss()V

    .line 119
    return-void

    .line 103
    :pswitch_0
    const/16 v0, 0x2d0

    .line 104
    goto :goto_0

    .line 106
    :pswitch_1
    const/16 v0, 0x438

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x7f1205c1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
