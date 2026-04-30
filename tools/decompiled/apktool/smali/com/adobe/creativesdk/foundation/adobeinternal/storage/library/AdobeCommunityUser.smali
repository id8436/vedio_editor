.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;
.super Ljava/lang/Object;
.source "AdobeCommunityUser.java"


# instance fields
.field private _avatarSize:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

.field private final _behanceProfile:Ljava/lang/String;

.field private final _city:Ljava/lang/String;

.field private final _country:Ljava/lang/String;

.field private final _displayName:Ljava/lang/String;

.field private final _firstName:Ljava/lang/String;

.field private _images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final _lastName:Ljava/lang/String;

.field private final _state:Ljava/lang/String;

.field private final _userID:Ljava/lang/String;

.field private final _userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_userID:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_userName:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_displayName:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_firstName:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_lastName:Ljava/lang/String;

    .line 113
    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_city:Ljava/lang/String;

    .line 114
    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_state:Ljava/lang/String;

    .line 115
    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_country:Ljava/lang/String;

    .line 116
    iput-object p9, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_behanceProfile:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_images:Ljava/util/List;

    .line 118
    return-void
.end method


# virtual methods
.method public addImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAvatarSize()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_avatarSize:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    return-object v0
.end method

.method public getBehanceProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_behanceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_country:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_images:Ljava/util/List;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_state:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarSize(II)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;-><init>(FF)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;->_avatarSize:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    return-void
.end method
