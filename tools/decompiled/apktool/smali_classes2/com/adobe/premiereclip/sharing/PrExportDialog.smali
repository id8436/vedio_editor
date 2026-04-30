.class public Lcom/adobe/premiereclip/sharing/PrExportDialog;
.super Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;
.source "PrExportDialog.java"


# instance fields
.field private publishedTile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0457

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrExportDialog;->prepareString:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0454

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrExportDialog;->publishedString:Ljava/lang/String;

    .line 37
    const v0, 0x7f0202ec

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PrExportDialog;->logoDrawableID:I

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0458

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrExportDialog;->publishedTile:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method protected goToSavedState()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;->goToSavedState()V

    .line 44
    const v0, 0x7f1204bd

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PrExportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/utility/FontUtils;->getAdobeCleanRegularTypefaceCollection()Lcom/h/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrExportDialog;->publishedTile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
