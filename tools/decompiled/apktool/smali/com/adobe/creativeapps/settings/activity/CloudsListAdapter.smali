.class Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;
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
.field private mCloudArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLogoBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 195
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mContext:Landroid/content/Context;

    .line 196
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mLogoBitmaps:Ljava/util/Map;

    .line 197
    iput-object p2, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mCloudArrayList:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mLogoBitmaps:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mCloudArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 232
    .line 236
    if-nez p2, :cond_0

    .line 237
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/adobe/creativeapps/settings/R$layout;->cloud_tab_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 238
    new-instance v0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 240
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mCloudArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 246
    iget-object v0, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->defaultCloud:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    :goto_1
    return-object p2

    .line 242
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;

    move-object v2, v0

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->defaultCloud:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativeapps/settings/R$color;->settings_secondary:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 253
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mCloudArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 254
    iget-object v1, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->cloudName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v1

    if-nez v1, :cond_4

    .line 256
    iget-object v1, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    sget v3, Lcom/adobe/creativeapps/settings/R$drawable;->ic_cc_24:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    :cond_2
    :goto_2
    iget-object v1, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->defaultCloud:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->defaultCloud:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->setCloudSelection(Ljava/lang/Integer;)V

    .line 273
    iget-object v1, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->defaultCloud:Landroid/widget/ImageView;

    new-instance v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$OnItemClickListener;

    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$OnItemClickListener;-><init>(Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;Landroid/widget/AdapterView;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :cond_3
    new-instance v0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$OnItemClickListener;

    check-cast p3, Landroid/widget/AdapterView;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$OnItemClickListener;-><init>(Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;Landroid/widget/AdapterView;Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 258
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mLogoBitmaps:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 259
    iget-object v1, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    sget v3, Lcom/adobe/creativeapps/settings/R$drawable;->ic_cc_24:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getLogoURL()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 261
    new-instance v1, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;

    iget-object v3, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;-><init>(Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 262
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getLogoURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 266
    :cond_5
    iget-object v3, v2, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->mLogoBitmaps:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
