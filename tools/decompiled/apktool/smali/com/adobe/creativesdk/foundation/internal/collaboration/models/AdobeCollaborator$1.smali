.class final Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator$1;
.super Ljava/lang/Object;
.source "AdobeCollaborator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;-><init>(Landroid/os/Parcel;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator$1;->createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;
    .locals 1

    .prologue
    .line 13
    new-array v0, p1, [Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator$1;->newArray(I)[Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborator;

    move-result-object v0

    return-object v0
.end method
