.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;
.super Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;
.source "AdobeCollaborator.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private owner:Z

.field private userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;-><init>()V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->setIsInvite(Z)V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;-><init>(Landroid/os/Parcel;)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->email:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->userID:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->owner:Z

    .line 36
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator$1;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public isOwner()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->owner:Z

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->email:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setOwner(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->owner:Z

    .line 75
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->userID:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->email:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->userID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->userID:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;->owner:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    return-void

    .line 91
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 92
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 93
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    .line 94
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method
