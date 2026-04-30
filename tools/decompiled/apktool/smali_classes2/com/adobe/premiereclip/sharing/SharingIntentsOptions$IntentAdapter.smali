.class Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharingIntentsOptions.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$1;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;-><init>(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->access$100(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 300
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->access$200(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    .line 307
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 308
    if-nez p2, :cond_0

    .line 310
    const v1, 0x7f04015a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 311
    const v0, 0x7f12055e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 312
    const v1, 0x7f12055d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 313
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-static {v2}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->access$100(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$IntentAdapter;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->access$100(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :cond_0
    return-object p2
.end method
