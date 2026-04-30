.class public Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;
.super Ljava/lang/Object;
.source "AdobeAuthLoginParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field requestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->requestCode:I

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->requestCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    return-void
.end method
