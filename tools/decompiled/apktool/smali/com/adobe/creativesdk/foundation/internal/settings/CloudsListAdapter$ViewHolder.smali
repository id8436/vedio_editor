.class public Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CloudPickerActivity.java"


# instance fields
.field private cloudName:Landroid/widget/TextView;

.field private defaultCloud:Landroid/widget/ImageView;

.field private iconImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_cloud_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->setCloudName(Landroid/widget/TextView;)V

    .line 225
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_cloud_icon_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->setIconImage(Landroid/widget/ImageView;)V

    .line 226
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_Default_Cloud_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->setDefaultCloud(Landroid/widget/ImageView;)V

    .line 227
    return-void
.end method


# virtual methods
.method getCloudName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->cloudName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDefaultCloud()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->defaultCloud:Landroid/widget/ImageView;

    return-object v0
.end method

.method getIconImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method setCloudName(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->cloudName:Landroid/widget/TextView;

    .line 235
    return-void
.end method

.method public setDefaultCloud(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->defaultCloud:Landroid/widget/ImageView;

    .line 251
    return-void
.end method

.method setIconImage(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 243
    return-void
.end method
