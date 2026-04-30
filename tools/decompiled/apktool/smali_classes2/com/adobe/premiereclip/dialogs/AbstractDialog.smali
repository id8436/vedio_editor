.class public abstract Lcom/adobe/premiereclip/dialogs/AbstractDialog;
.super Lcom/adobe/premiereclip/dialogs/BaseDialog;
.source "AbstractDialog.java"


# instance fields
.field protected acceptButton:Landroid/widget/Button;

.field protected acceptButtonListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

.field protected final cancelOnTouchOutside:Z

.field protected final message:Ljava/lang/String;

.field protected rejectButton:Landroid/widget/Button;

.field protected rejectButtonListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

.field protected final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dialogs/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->title:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->message:Ljava/lang/String;

    .line 46
    iput-boolean p4, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->cancelOnTouchOutside:Z

    .line 47
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->requestWindowFeature(I)Z

    .line 51
    const v0, 0x7f04016b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->setContentView(I)V

    .line 52
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->cancelOnTouchOutside:Z

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    const v0, 0x7f120031

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/utility/FontUtils;->getAdobeCleanRegularTypefaceCollection()Lcom/h/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 58
    const v0, 0x7f12056b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 62
    const v0, 0x7f1205bd

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->acceptButton:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->acceptButton:Landroid/widget/Button;

    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/utility/FontUtils;->getAdobeCleanRegularTypefaceCollection()Lcom/h/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 65
    const v0, 0x7f1205be

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->rejectButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->rejectButton:Landroid/widget/Button;

    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/utility/FontUtils;->getAdobeCleanRegularTypefaceCollection()Lcom/h/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 67
    return-void
.end method
