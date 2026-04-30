.class public Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountSubscriptionTriple;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"


# instance fields
.field expiration:Ljava/util/Date;

.field productID:Ljava/lang/String;

.field purchase:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountSubscriptionTriple;->productID:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountSubscriptionTriple;->purchase:Ljava/util/Date;

    .line 133
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountSubscriptionTriple;->expiration:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountSubscriptionTriple;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountSubscriptionTriple;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchase()Ljava/util/Date;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountSubscriptionTriple;->purchase:Ljava/util/Date;

    return-object v0
.end method
