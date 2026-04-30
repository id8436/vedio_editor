.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;
.super Landroid/app/Dialog;
.source "BehanceSDKEmbedModuleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;-><init>(Landroid/content/Context;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 65
    sget v1, Lcom/behance/sdk/R$id;->bsdkAddProjectEmbedContentDialogNotOKBtn:I

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->dismiss()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget v1, Lcom/behance/sdk/R$id;->bsdkAddProjectEmbedContentDialogOKBtn:I

    if-ne v0, v1, :cond_0

    .line 68
    sget v0, Lcom/behance/sdk/R$id;->bsdkAddProjectEmbedContentDialogContentTxt:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 69
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_add_project_embed_content_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 74
    :cond_3
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/behance/sdk/project/modules/EmbedModule;

    invoke-direct {v2, v0}, Lcom/behance/sdk/project/modules/EmbedModule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addModuleToCurrentProject(Lcom/behance/sdk/project/modules/ProjectModule;)V

    .line 76
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->dismiss()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->requestWindowFeature(I)Z

    .line 54
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_publish_project_embed_content:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->setContentView(I)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->setCancelable(Z)V

    .line 56
    sget v0, Lcom/behance/sdk/R$id;->bsdkAddProjectEmbedContentDialogNotOKBtn:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/behance/sdk/R$id;->bsdkAddProjectEmbedContentDialogOKBtn:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
