.class Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CloudPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mCloudArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 201
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->mCloudArrayList:Ljava/util/List;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->mCloudArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 260
    .line 264
    if-nez p2, :cond_0

    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->cloud_tab_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 266
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 268
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->mCloudArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getDefaultCloud()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getIconImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :goto_1
    return-object p2

    .line 270
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getDefaultCloud()Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_asset_ux_settings_secondary:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 279
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->mCloudArrayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 280
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getCloudName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v2

    if-nez v2, :cond_4

    .line 282
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getIconImage()Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_cc_24:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    :cond_2
    :goto_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getDefaultCloud()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->indicateDefaultCloud:Z

    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getDefaultCloud()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudPickerActivity;->setCloudSelection(Ljava/lang/Integer;)V

    .line 296
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getDefaultCloud()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;

    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;Landroid/widget/AdapterView;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :cond_3
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;

    check-cast p3, Landroid/widget/AdapterView;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$OnItemClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter;Landroid/widget/AdapterView;Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 284
    :cond_4
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getIconImage()Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_cc_private_24:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getLogoURL()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 288
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/settings/DownloadImageTask;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/settings/CloudsListAdapter$ViewHolder;->getIconImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/settings/DownloadImageTask;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 289
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getLogoURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/settings/DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
