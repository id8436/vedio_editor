.class public Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CloudPickerActivity.java"


# instance fields
.field public cloudName:Landroid/widget/TextView;

.field public defaultCloud:Landroid/widget/ImageView;

.field public iconImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 221
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->cloud_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->cloudName:Landroid/widget/TextView;

    .line 222
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->cloud_icon_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 223
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->Default_Cloud_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$ViewHolder;->defaultCloud:Landroid/widget/ImageView;

    .line 224
    return-void
.end method
