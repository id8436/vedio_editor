.class public final Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;
.super Ljava/lang/Object;
.source "TrackEncryptionBox.java"


# instance fields
.field public final initializationVectorSize:I

.field public final isEncrypted:Z

.field public final keyId:[B


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;->isEncrypted:Z

    .line 30
    iput p2, p0, Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;->initializationVectorSize:I

    .line 31
    iput-object p3, p0, Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;->keyId:[B

    .line 32
    return-void
.end method
