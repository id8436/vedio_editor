.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;
.super Ljava/lang/Object;
.source "AdobeCSDKActionBarController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTextColor(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_actionbar_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    :cond_0
    return-void
.end method

.method public static getTextView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_actionbar_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_actionbar_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_0
    return-void
.end method

.method public static setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_actionbar_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_0
    return-void
.end method

.method public static setTypeface(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_actionbar_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    return-void
.end method

.method public static setVisible(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_actionbar_toolbar_loki:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 49
    if-eqz v0, :cond_0

    .line 51
    if-eqz p1, :cond_1

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    goto :goto_0
.end method
