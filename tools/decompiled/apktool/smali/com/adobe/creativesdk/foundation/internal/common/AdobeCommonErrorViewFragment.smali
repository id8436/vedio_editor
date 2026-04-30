.class public Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "AdobeCommonErrorViewFragment.java"


# instance fields
.field fragmentContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;->fragmentContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$layout;->adobe_csdk_common_errorview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;->fragmentContainer:Landroid/view/ViewGroup;

    .line 37
    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;->fragmentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonErrorViewFragment;->fragmentContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_common_view_error_message:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 45
    :cond_0
    return-void
.end method
