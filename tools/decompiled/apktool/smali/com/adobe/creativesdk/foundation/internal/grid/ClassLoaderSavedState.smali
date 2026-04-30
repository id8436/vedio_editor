.class public abstract Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;
.super Ljava/lang/Object;
.source "ClassLoaderSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState$2;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState$2;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 54
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 55
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mClassLoader:Ljava/lang/ClassLoader;

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 82
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 64
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mClassLoader:Ljava/lang/ClassLoader;

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "superState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    if-eq p1, v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 71
    return-void

    .line 69
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public final getSuperState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mSuperState:Landroid/os/Parcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    return-void
.end method
