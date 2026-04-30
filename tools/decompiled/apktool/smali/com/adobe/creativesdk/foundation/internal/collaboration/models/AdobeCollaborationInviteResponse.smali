.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;
.super Ljava/lang/Object;
.source "AdobeCollaborationInviteResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private error:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

.field private invite:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

.field private status:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->invite:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->getEnumFromInteger(I)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->status:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->status:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    .line 26
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->error:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->invite:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->status:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    .line 20
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->invite:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->error:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getError()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->error:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    return-object v0
.end method

.method public getInvite()Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->invite:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    return-object v0
.end method

.method public getStatus()Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->status:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->invite:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->status:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResponse;->status:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationCreateInviteStatus;->toInteger()I

    move-result v0

    goto :goto_0
.end method
