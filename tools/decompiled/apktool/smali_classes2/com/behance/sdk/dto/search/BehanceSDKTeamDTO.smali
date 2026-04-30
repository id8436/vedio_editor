.class public Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;
.super Ljava/lang/Object;
.source "BehanceSDKTeamDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL_COMPANIES_ID:I = -0x1

.field public static final PROFILE_IMAGE_SIZE_100:I = 0x64

.field public static final PROFILE_IMAGE_SIZE_115:I = 0x73

.field public static final PROFILE_IMAGE_SIZE_138:I = 0x8a

.field public static final PROFILE_IMAGE_SIZE_230:I = 0xe6

.field public static final PROFILE_IMAGE_SIZE_276:I = 0x114

.field public static final PROFILE_IMAGE_SIZE_50:I = 0x32


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;",
            ">;"
        }
    .end annotation
.end field

.field private slug:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProfileImages()Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    invoke-direct {v0}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    return-object v0
.end method


# virtual methods
.method public addProfileImage(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getProfileImages()Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    move-result-object v0

    invoke-static {p2}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getNewInstance(Ljava/lang/String;)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 40
    return-void
.end method

.method public findProfileImageInIncreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;
    .locals 6

    .prologue
    const/16 v5, 0xe6

    const/16 v4, 0x8a

    const/16 v3, 0x73

    const/16 v2, 0x64

    const/16 v1, 0x32

    .line 83
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getProfileImages()Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 84
    if-nez v0, :cond_0

    if-gt p1, v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getProfileImages()Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 87
    :cond_0
    if-nez v0, :cond_1

    if-gt p1, v2, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getProfileImages()Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 90
    :cond_1
    if-nez v0, :cond_2

    if-gt p1, v3, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getProfileImages()Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 93
    :cond_2
    if-nez v0, :cond_3

    if-gt p1, v4, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getProfileImages()Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 96
    :cond_3
    if-nez v0, :cond_4

    if-gt p1, v5, :cond_4

    .line 97
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getProfileImages()Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 99
    :cond_4
    if-nez v0, :cond_5

    .line 100
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getProfileImages()Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    move-result-object v0

    const/16 v1, 0x114

    invoke-virtual {v0, v1}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 102
    :cond_5
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->displayName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->id:I

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSlug(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->slug:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->url:Ljava/lang/String;

    .line 64
    return-void
.end method
