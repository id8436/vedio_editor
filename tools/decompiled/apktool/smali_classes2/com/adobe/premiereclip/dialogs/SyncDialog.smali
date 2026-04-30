.class public Lcom/adobe/premiereclip/dialogs/SyncDialog;
.super Lcom/adobe/premiereclip/dialogs/BaseDialog;
.source "SyncDialog.java"


# instance fields
.field okTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dialogs/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/dialogs/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->requestWindowFeature(I)Z

    .line 28
    const v0, 0x7f04015d

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->setContentView(I)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->setCancelable(Z)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 33
    const v0, 0x7f120569

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/dialogs/SyncDialog;->okTextView:Landroid/widget/TextView;

    .line 35
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/utility/FontUtils;->getAdobeCleanLightTypefaceCollection()Lcom/h/a/a;

    move-result-object v0

    .line 36
    const v1, 0x7f120567

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 37
    const v1, 0x7f120568

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dialogs/SyncDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 38
    iget-object v1, p0, Lcom/adobe/premiereclip/dialogs/SyncDialog;->okTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/SyncDialog;->okTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/premiereclip/dialogs/SyncDialog$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/dialogs/SyncDialog$1;-><init>(Lcom/adobe/premiereclip/dialogs/SyncDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
