.class public Lcom/adobe/premiereclip/looks/ClipLook;
.super Lcom/adobe/premiereclip/looks/BaseLook;
.source "ClipLook.java"


# instance fields
.field private drawableId:I

.field private rawId:I


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/looks/ClipLook;)V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/ClipLook;->getLookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/ClipLook;->getLookName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/looks/BaseLook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/ClipLook;->getDrawableId()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/looks/ClipLook;->drawableId:I

    .line 41
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/ClipLook;->getRawId()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/looks/ClipLook;->rawId:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/looks/BaseLook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput p3, p0, Lcom/adobe/premiereclip/looks/ClipLook;->drawableId:I

    .line 35
    iput p4, p0, Lcom/adobe/premiereclip/looks/ClipLook;->rawId:I

    .line 36
    return-void
.end method


# virtual methods
.method public drawThumbnail(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/premiereclip/looks/ClipLook;->drawableId:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    return-void
.end method

.method public getCubeData(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/looks/ClipLook;->rawId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/adobe/premiereclip/looks/ClipLook;->drawableId:I

    return v0
.end method

.method public getRawId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/adobe/premiereclip/looks/ClipLook;->rawId:I

    return v0
.end method
