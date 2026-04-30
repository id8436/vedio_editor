.class final Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# instance fields
.field public mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

.field public nalUnitLengthFieldLength:I

.field public final trackEncryptionBoxes:[Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    new-array v0, p1, [Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    iput-object v0, p0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->trackEncryptionBoxes:[Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    .line 663
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->nalUnitLengthFieldLength:I

    .line 664
    return-void
.end method
