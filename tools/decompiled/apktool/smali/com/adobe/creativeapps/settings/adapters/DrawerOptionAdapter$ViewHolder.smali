.class public Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DrawerOptionAdapter.java"


# instance fields
.field public final mImageView:Landroid/widget/ImageView;

.field public final mTextView:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 246
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 247
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->option_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 248
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->option_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 249
    return-void
.end method
