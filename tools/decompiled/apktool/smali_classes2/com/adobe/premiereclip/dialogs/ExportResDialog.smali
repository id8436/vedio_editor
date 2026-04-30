.class public Lcom/adobe/premiereclip/dialogs/ExportResDialog;
.super Lcom/adobe/premiereclip/dialogs/BaseDialog;
.source "ExportResDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private onContinueListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

.field private radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dialogs/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/dialogs/ExportResDialog;)Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->radioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/dialogs/ExportResDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/dialogs/ExportResDialog;)Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->onContinueListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/dialogs/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->requestWindowFeature(I)Z

    .line 60
    const v0, 0x7f04016c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->setContentView(I)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    const v0, 0x7f1205c0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->radioGroup:Landroid/widget/RadioGroup;

    .line 64
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->radioGroup:Landroid/widget/RadioGroup;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 65
    const v0, 0x7f1205c3

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    .line 66
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 67
    const v1, 0x7f1205c4

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 68
    invoke-static {v3}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 70
    const v1, 0x7f1205c1

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatRadioButton;

    .line 71
    const v2, 0x7f1205c2

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatRadioButton;

    .line 80
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-eq v4, v5, :cond_0

    .line 81
    iget-object v4, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1101dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 82
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/AppCompatRadioButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 83
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/AppCompatRadioButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 84
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 87
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/dialogs/ExportResDialog$1;

    invoke-direct {v1, p0, v3}, Lcom/adobe/premiereclip/dialogs/ExportResDialog$1;-><init>(Lcom/adobe/premiereclip/dialogs/ExportResDialog;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    const v1, 0x7f1205c5

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog$2;-><init>(Lcom/adobe/premiereclip/dialogs/ExportResDialog;Landroid/support/v7/widget/AppCompatCheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/utility/FontUtils;->getAdobeCleanRegularTypefaceCollection()Lcom/h/a/a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 124
    const v0, 0x7f1205bf

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/utility/FontUtils;->getAdobeCleanRegularTypefaceCollection()Lcom/h/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 126
    return-void
.end method

.method public setOnContinueListener(Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->onContinueListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    .line 53
    return-void
.end method

.method public setSelection()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getExportResolution()I

    move-result v0

    .line 130
    packed-switch v0, :pswitch_data_0

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->radioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f1205c1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 135
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->radioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f1205c2

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x438
        :pswitch_0
    .end packed-switch
.end method
