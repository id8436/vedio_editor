.class public Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
.super Ljava/lang/Object;
.source "ContentProtection.java"


# instance fields
.field public final data:[B

.field public final schemeUriId:Ljava/lang/String;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;[B)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    .line 48
    iput-object p3, p0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    .line 49
    return-void
.end method
