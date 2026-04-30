.class public Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;
.super Ljava/lang/Object;
.source "BehanceSDKUserDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final INITIAL_SIZE_FOR_COLLECTION:I = 0x3

.field public static final PROFILE_IMAGE_SIZE_100:I = 0x64

.field public static final PROFILE_IMAGE_SIZE_115:I = 0x73

.field public static final PROFILE_IMAGE_SIZE_138:I = 0x8a

.field public static final PROFILE_IMAGE_SIZE_230:I = 0xe6

.field public static final PROFILE_IMAGE_SIZE_276:I = 0x114

.field public static final PROFILE_IMAGE_SIZE_50:I = 0x32


# instance fields
.field private appreciationsCount:I

.field private city:Ljava/lang/String;

.field private commentsCount:I

.field private company:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private createdCollections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private createdOn:J

.field private detailsSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private displayName:Ljava/lang/String;

.field private emailId:Ljava/lang/String;

.field private featuredDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fieldsDisplayString:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private followedCollections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private followersCount:I

.field private followingCount:I

.field private id:I

.field private isCurrentUserFollowing:Z

.field private isEnterprise:Z

.field private lastName:Ljava/lang/String;

.field private locationDisplayString:Ljava/lang/String;

.field private occupation:Ljava/lang/String;

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

.field private profileUrl:Ljava/lang/String;

.field private projects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/String;

.field private twitterHandle:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private viewsCount:I

.field private webLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKWebLinkDTO;",
            ">;"
        }
    .end annotation
.end field

.field private workExperiences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isEnterprise:Z

    return-void
.end method

.method private getProfileImages()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    return-object v0
.end method


# virtual methods
.method public addDetailsSection(Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->detailsSections:Ljava/util/List;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->detailsSections:Ljava/util/List;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->detailsSections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method public addFeaturedDetail(Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->featuredDetails:Ljava/util/List;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->featuredDetails:Ljava/util/List;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->featuredDetails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method public addField(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fields:Ljava/util/List;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public addImage(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->profileImagesArray:Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;

    invoke-static {p2}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getNewInstance(Ljava/lang/String;)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 187
    return-void
.end method

.method public addWebLink(Lcom/behance/sdk/dto/search/BehanceSDKWebLinkDTO;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->webLinks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->webLinks:Ljava/util/List;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->webLinks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    return-void
.end method

.method public addWorkExperience(Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->workExperiences:Ljava/util/List;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->workExperiences:Ljava/util/List;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->workExperiences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method

.method public findProfileImageInDecreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;
    .locals 3

    .prologue
    const/16 v2, 0x73

    const/16 v1, 0x8a

    .line 204
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getProfileImages()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 205
    if-nez v0, :cond_0

    if-le p1, v1, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getProfileImages()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 208
    :cond_0
    if-nez v0, :cond_1

    if-le p1, v2, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getProfileImages()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 211
    :cond_1
    if-nez v0, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getProfileImages()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 214
    :cond_2
    return-object v0
.end method

.method public findProfileImageInIncreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;
    .locals 3

    .prologue
    const/16 v2, 0x73

    const/16 v1, 0x32

    .line 190
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getProfileImages()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 191
    if-nez v0, :cond_0

    if-gt p1, v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getProfileImages()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 194
    :cond_0
    if-nez v0, :cond_1

    if-gt p1, v2, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getProfileImages()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 197
    :cond_1
    if-nez v0, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getProfileImages()Landroid/util/SparseArray;

    move-result-object v0

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 200
    :cond_2
    return-object v0
.end method

.method public getAppreciationsCount()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->appreciationsCount:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsCount()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->commentsCount:I

    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedCollections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->createdCollections:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->createdCollections:Ljava/util/List;

    .line 303
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCreatedOn()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->createdOn:J

    return-wide v0
.end method

.method public getDetailsSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->detailsSections:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->detailsSections:Ljava/util/List;

    .line 390
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->displayName:Ljava/lang/String;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->emailId:Ljava/lang/String;

    return-object v0
.end method

.method public getFeaturedDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->featuredDetails:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->featuredDetails:Ljava/util/List;

    .line 276
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fields:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fields:Ljava/util/List;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFieldsDisplayString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fieldsDisplayString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 156
    const-string/jumbo v0, ""

    .line 157
    iget-object v1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fields:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 160
    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_1
    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fieldsDisplayString:Ljava/lang/String;

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->fieldsDisplayString:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowedCollections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->followedCollections:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->followedCollections:Ljava/util/List;

    .line 428
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFollowersCount()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->followersCount:I

    return v0
.end method

.method public getFollowingCount()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->followingCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->id:I

    return v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationDisplayString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->locationDisplayString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->locationDisplayString:Ljava/lang/String;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->locationDisplayString:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->profileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->projects:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->projects:Ljava/util/List;

    .line 291
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->twitterHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewsCount()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->viewsCount:I

    return v0
.end method

.method public getWebLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKWebLinkDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->webLinks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->webLinks:Ljava/util/List;

    .line 371
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getWorkExperiences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->workExperiences:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->workExperiences:Ljava/util/List;

    .line 409
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public isCurrentUserFollowing()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isCurrentUserFollowing:Z

    return v0
.end method

.method public isEnterpriseUser()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isEnterprise:Z

    return v0
.end method

.method public setAppreciationsCount(I)V
    .locals 0

    .prologue
    .line 332
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->appreciationsCount:I

    .line 333
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->city:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setCommentsCount(I)V
    .locals 0

    .prologue
    .line 340
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->commentsCount:I

    .line 341
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->company:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->country:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setCreatedCollections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->createdCollections:Ljava/util/List;

    .line 309
    return-void
.end method

.method public setCreatedOn(J)V
    .locals 1

    .prologue
    .line 262
    iput-wide p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->createdOn:J

    .line 263
    return-void
.end method

.method public setCurrentUserFollowing(Z)V
    .locals 0

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isCurrentUserFollowing:Z

    .line 357
    return-void
.end method

.method public setDetailsSections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->detailsSections:Ljava/util/List;

    .line 396
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->displayName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setEmailId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->emailId:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->firstName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setFollowedCollections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->followedCollections:Ljava/util/List;

    .line 434
    return-void
.end method

.method public setFollowersCount(I)V
    .locals 0

    .prologue
    .line 324
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->followersCount:I

    .line 325
    return-void
.end method

.method public setFollowingCount(I)V
    .locals 0

    .prologue
    .line 316
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->followingCount:I

    .line 317
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->id:I

    .line 108
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->lastName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->occupation:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setProfileUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->profileUrl:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setProjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->projects:Ljava/util/List;

    .line 297
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->state:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setTwitterHandle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->twitterHandle:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setUserAsEnterprise(Z)V
    .locals 0

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isEnterprise:Z

    .line 442
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->userName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setViewsCount(I)V
    .locals 0

    .prologue
    .line 348
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->viewsCount:I

    .line 349
    return-void
.end method

.method public setWebLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKWebLinkDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->webLinks:Ljava/util/List;

    .line 377
    return-void
.end method

.method public setWorkExperiences(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->workExperiences:Ljava/util/List;

    .line 415
    return-void
.end method
