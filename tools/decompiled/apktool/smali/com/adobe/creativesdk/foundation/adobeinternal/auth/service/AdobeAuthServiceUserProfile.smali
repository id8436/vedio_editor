.class public Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;
.super Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;
.source "AdobeAuthServiceUserProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->displayName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->firstName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->lastName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->adobeID:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->email:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->isEmailVerified()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->emailVerified:Z

    .line 39
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->isEnterpriseUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->isEnterprise:Z

    .line 40
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->description:Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->adobeID:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->displayName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->firstName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->lastName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->email:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->emailVerified:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->description:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->isEnterprise:Z

    .line 72
    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    :cond_1
    move v1, v2

    .line 71
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->adobeID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->emailVerified:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->isEnterprise:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0

    :cond_1
    move v1, v2

    .line 57
    goto :goto_1
.end method
