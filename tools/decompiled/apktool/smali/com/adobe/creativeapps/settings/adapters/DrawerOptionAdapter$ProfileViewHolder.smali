.class public Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;
.super Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;
.source "DrawerOptionAdapter.java"


# instance fields
.field public final mProfileEmail:Landroid/widget/TextView;

.field public final mProfileName:Landroid/widget/TextView;

.field public final mProfilePic:Landroid/widget/ImageView;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 260
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    .line 261
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->drawer_profile_picture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;->mProfilePic:Landroid/widget/ImageView;

    .line 262
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->drawer_profile_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;->mProfileName:Landroid/widget/TextView;

    .line 263
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->drawer_profile_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;->mProfileEmail:Landroid/widget/TextView;

    .line 264
    return-void
.end method
